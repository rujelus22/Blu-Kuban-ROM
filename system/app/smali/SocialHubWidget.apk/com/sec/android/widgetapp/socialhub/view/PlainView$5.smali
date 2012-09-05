.class Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;
.super Landroid/os/Handler;
.source "PlainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/view/PlainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "loadingFlag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 168
    const-string v0, "PlainView"

    const-string v1, "setLoading"

    const-string v2, "show Progressbar"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$200(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$300(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    :goto_2d
    return-void

    .line 174
    :cond_2e
    const-string v0, "PlainView"

    const-string v1, "setLoading"

    const-string v2, "hide Progressbar"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mRefreshImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$200(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/PlainView$5;->this$0:Lcom/sec/android/widgetapp/socialhub/view/PlainView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/PlainView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/PlainView;->access$300(Lcom/sec/android/widgetapp/socialhub/view/PlainView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2d
.end method
