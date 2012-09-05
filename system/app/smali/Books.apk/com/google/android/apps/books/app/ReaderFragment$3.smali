.class Lcom/google/android/apps/books/app/ReaderFragment$3;
.super Landroid/os/Handler;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 340
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 347
    :cond_5
    :goto_5
    return-void

    .line 342
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isChromeVisible()Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$500(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$3;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    goto :goto_5

    .line 340
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
