.class Lcom/google/android/apps/books/app/ReaderFragment$21;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->setupGestureDetector(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;

.field final synthetic val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

.field final synthetic val$scaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/GestureDetector;Landroid/view/ScaleGestureDetector;Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2351
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$gestureDetector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object p4, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2355
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2356
    .local v1, pageTurnHandled:Z
    if-eqz v1, :cond_e

    .line 2373
    :goto_d
    return v3

    .line 2358
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2359
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5800(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2360
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2363
    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2364
    .local v0, action:I
    packed-switch v0, :pswitch_data_34

    :pswitch_27
    goto :goto_d

    .line 2366
    :pswitch_28
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 2369
    :pswitch_2e
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$21;->val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onActionCancel(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 2364
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_2e
    .end packed-switch
.end method
