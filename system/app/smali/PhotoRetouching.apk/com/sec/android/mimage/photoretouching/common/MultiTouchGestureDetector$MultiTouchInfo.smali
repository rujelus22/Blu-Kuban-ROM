.class Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiTouchInfo"
.end annotation


# instance fields
.field public event:Landroid/view/MotionEvent;

.field public fingerDiffX:F

.field public fingerDiffY:F

.field public focusX:F

.field public focusY:F

.field public length:F

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->this$0:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;-><init>(Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;)V

    return-void
.end method
