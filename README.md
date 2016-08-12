# LuckyMutableCopy
ios快速复制一个对象，拷贝一个对象
怎样使用：

1.pod 'LuckyMutableCopy'
2.在需要被复制的类中#import"LuckyMutableCopy.h"
3.在类的implementation中加入宏LuckyMutableCopyImplementation
4.这样你就可以调用对象的mutableCopy拷贝一个对象了

例子：
``` object-c
#import "Cat.h"
#import "LuckyMutableCopy.h"

@implementation Cat

LuckyMutableCopyImplementation
@end
```
