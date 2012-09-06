.class Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;
.super Ljava/lang/Object;
.source "ProfileAboutView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemOnTouchListener"
.end annotation


# instance fields
.field volatile mLastEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/google/android/apps/plus/views/ProfileAboutView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/ProfileAboutView;)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->this$0:Lcom/google/android/apps/plus/views/ProfileAboutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/ProfileAboutView;Lcom/google/android/apps/plus/views/ProfileAboutView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 361
    :goto_8
    :pswitch_8
    return v4

    .line 342
    :pswitch_9
    iput-object p2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->mLastEvent:Landroid/view/MotionEvent;

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->this$0:Lcom/google/android/apps/plus/views/ProfileAboutView;

    new-instance v1, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;-><init>(Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;Landroid/view/MotionEvent;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ProfileAboutView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 356
    :pswitch_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->mLastEvent:Landroid/view/MotionEvent;

    .line 357
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    .line 340
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_9
        :pswitch_18
        :pswitch_8
        :pswitch_18
    .end packed-switch
.end method
