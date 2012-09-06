.class Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;
.super Ljava/lang/Object;
.source "ProfileAboutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->this$1:Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    iput-object p2, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->val$event:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->this$1:Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->mLastEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->val$event:Landroid/view/MotionEvent;

    if-ne v0, v1, :cond_10

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->val$v:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 349
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener$1;->this$1:Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/ProfileAboutView$ItemOnTouchListener;->mLastEvent:Landroid/view/MotionEvent;

    .line 350
    return-void
.end method
