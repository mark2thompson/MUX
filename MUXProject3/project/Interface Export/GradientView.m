//
//  GradientView.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "GradientView.h"
#define RADIANS(degree)             (degree * (M_PI / 180))

@interface GradientView(Private)
@property (nonatomic, readonly) CGPoint startPoint;
@property (nonatomic, readonly) CGPoint endPoint;
@end

@implementation GradientView
@synthesize gradient;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.contentMode = UIViewContentModeRedraw;
        self.opaque = NO;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)dealloc {
    self.gradient = nil;
    [super dealloc];
}

- (void)setGradient:(Gradient *)aGradient {
    if (gradient != aGradient) {
        [gradient removeObserver:self forKeyPath:@"angle"];

        [gradient release];
        gradient = [aGradient retain];
        
        if (gradient != nil) {
            [gradient addObserver:self forKeyPath:@"angle" options:NSKeyValueObservingOptionNew context:nil];            
        }
    }
    [self setNeedsDisplay];
}

#pragma mark - Draw

- (CGPoint)startPoint {
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;

    CGFloat hw = w / 2;
    CGFloat hh = h / 2;
    CGFloat x;
    CGFloat y;
    
    CGFloat criticalAngle = atan2f(hw, hh);
    CGFloat cCriticalAngle = (M_PI / 2) - criticalAngle;
    
    CGFloat lineAngle = RADIANS(self.gradient.angle.floatValue);
    
    NSInteger intersect = 0;

    if (lineAngle <= criticalAngle || lineAngle >= criticalAngle + M_PI + cCriticalAngle * 2)  {
        intersect = 0; //TOP
    } else if (lineAngle > criticalAngle && lineAngle < criticalAngle + cCriticalAngle * 2) {
        intersect = 1; // RIGHT
    } else if (lineAngle >= criticalAngle + cCriticalAngle * 2 && lineAngle <= criticalAngle + M_PI) {
        intersect = 2; // BOTTOM
    } else {
        intersect = 3; // LEFT;
    }
    
    if (intersect == 0) {
        y = 0;
        x = hw + hh * tanf(lineAngle);
    } else if (intersect == 1) {
        x = w;
        y = hh - hw / tanf(lineAngle);
    } else if (intersect == 2) {
        y = h;
        x = hw - hh * tanf(lineAngle);
    } else {
        x = 0;
        y = hh + hw / tanf(lineAngle);
    }
    return CGPointMake(x, y);
}

- (CGPoint)endPoint {
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    CGFloat x;
    CGFloat y;
    CGPoint startPoint = self.startPoint;
    if (startPoint.x == 0 || startPoint.x == w) {
        x = (startPoint.x == 0 ? w : 0);
        y = (h - startPoint.y);
    } else {
        y = (startPoint.y == 0 ? h : 0);
        x = (w - startPoint.x);
    }
    
    return CGPointMake(x, y);
}

- (void)drawRect:(CGRect)rect {
    if (self.gradient == nil) {
        return;
    }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    NSMutableArray *colors = [NSMutableArray array];
    CGFloat colorLocations[self.gradient.nodes.count];
    NSInteger index = 0;
    
    for (GradientNode *node in self.gradient.nodes) {
        CGColorRef color = node.color.CGColor;
        [colors addObject:(id)color];
        colorLocations[index] = node.location.floatValue;
        index++;
    }
    
    [self startPoint];
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef g = CGGradientCreateWithColors(colorSpace, (CFArrayRef)colors, colorLocations);
    CGContextDrawLinearGradient(context, g, self.startPoint, self.endPoint, kCGGradientDrawsAfterEndLocation | kCGGradientDrawsBeforeStartLocation);
}

#pragma KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@"angle"]) {
        [self setNeedsDisplay];
    }
}
@end
