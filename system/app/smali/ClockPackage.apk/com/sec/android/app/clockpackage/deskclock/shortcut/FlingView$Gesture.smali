.class Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Gesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;->this$0:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mIsInterceptionTrue:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->access$102(Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;Z)Z

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
