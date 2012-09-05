.class Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;
.super Landroid/os/Handler;
.source "RetouchGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$0(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$0(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 61
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$1(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$1(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView$1;->this$0:Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;

    #getter for: Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->mSelected:I
    invoke-static {v1}, Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;->access$2(Lcom/sec/android/app/ve/view/effect/retouch/RetouchGridView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 63
    :cond_28
    return-void
.end method
