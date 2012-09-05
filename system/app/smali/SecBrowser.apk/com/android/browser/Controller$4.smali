.class Lcom/android/browser/Controller$4;
.super Landroid/os/Handler;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 594
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_e0

    .line 663
    :cond_8
    :goto_8
    return-void

    .line 596
    :sswitch_9
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v2, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto :goto_8

    .line 600
    :sswitch_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 602
    .local v10, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "src"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 603
    .local v8, src:Ljava/lang/String;
    const-string v4, ""

    if-ne v1, v4, :cond_38

    move-object v1, v8

    .line 604
    :cond_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 607
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 608
    .local v6, focusNodeMap:Ljava/util/HashMap;
    const-string v4, "webview"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/webkit/WebView;

    .line 610
    .local v11, view:Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v4}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-ne v4, v11, :cond_8

    .line 613
    iget v4, p1, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_fa

    goto :goto_8

    .line 615
    :sswitch_58
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_8

    .line 618
    :sswitch_5e
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0, v8}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto :goto_8

    .line 621
    :sswitch_64
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v2}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v7

    .line 622
    .local v7, parent:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v4, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v4}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-nez v4, :cond_7d

    move v0, v3

    :cond_7d
    invoke-virtual {v2, v1, v7, v0, v3}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    goto :goto_8

    .line 626
    .end local v7           #parent:Lcom/android/browser/Tab;
    :sswitch_81
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #calls: Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/browser/Controller;->access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 630
    :sswitch_87
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v11}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 639
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #focusNodeMap:Ljava/util/HashMap;
    .end local v8           #src:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #view:Landroid/webkit/WebView;
    :sswitch_98
    iget-object v2, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/browser/Controller;->loadUrlFromContext(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 643
    :sswitch_a3
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->stopLoading()V

    goto/16 :goto_8

    .line 647
    :sswitch_aa
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 648
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 652
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;
    invoke-static {v0}, Lcom/android/browser/Controller;->access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_8

    .line 657
    :sswitch_d2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/browser/Tab;

    .line 658
    .local v9, tab:Lcom/android/browser/Tab;
    if-eqz v9, :cond_8

    .line 659
    iget-object v0, p0, Lcom/android/browser/Controller$4;->this$0:Lcom/android/browser/Controller;

    #calls: Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V
    invoke-static {v0, v9}, Lcom/android/browser/Controller;->access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V

    goto/16 :goto_8

    .line 594
    nop

    :sswitch_data_e0
    .sparse-switch
        0x66 -> :sswitch_f
        0x6b -> :sswitch_aa
        0x6c -> :sswitch_d2
        0xc9 -> :sswitch_9
        0x3e9 -> :sswitch_98
        0x3ea -> :sswitch_a3
    .end sparse-switch

    .line 613
    :sswitch_data_fa
    .sparse-switch
        0x7f0d0043 -> :sswitch_58
        0x7f0d0142 -> :sswitch_64
        0x7f0d0143 -> :sswitch_87
        0x7f0d0144 -> :sswitch_81
        0x7f0d0146 -> :sswitch_87
        0x7f0d0148 -> :sswitch_5e
    .end sparse-switch
.end method
