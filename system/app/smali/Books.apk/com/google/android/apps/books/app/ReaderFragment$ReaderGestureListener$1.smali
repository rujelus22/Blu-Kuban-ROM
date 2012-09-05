.class Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;
.super Landroid/os/Handler;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

.field final synthetic val$this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;->val$this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->updateZoomCenterFromScroller()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->access$7300(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3021
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->scheduleScrollerUpdate()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->access$7400(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V

    .line 3023
    :cond_d
    return-void
.end method
