.class Lcom/android/browser/Tab$4;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .registers 2
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/browser/Tab$4;ZLandroid/os/Message;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1083
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab$4;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .registers 11
    .parameter "dialog"
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 1086
    iget-object v3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebView$WebViewTransport;

    .line 1097
    .local v3, transport:Landroid/webkit/WebView$WebViewTransport;
    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1098
    .local v0, mTablet:Z
    if-nez v0, :cond_36

    .line 1099
    new-instance v2, Lcom/android/browser/Tab$4$1;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/browser/Tab$4$1;-><init>(Lcom/android/browser/Tab$4;Landroid/webkit/WebView$WebViewTransport;Landroid/os/Message;)V

    .line 1110
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v4}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1113
    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mH:Landroid/os/Handler;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1126
    .end local v2           #runnable:Ljava/lang/Runnable;
    :goto_31
    return-void

    .line 1117
    .restart local v2       #runnable:Ljava/lang/Runnable;
    :cond_32
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_31

    .line 1121
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_36
    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v4, v5, v6, v7, v7}, Lcom/android/browser/WebViewController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v1

    .line 1122
    .local v1, newTab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 1123
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_31
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1392
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1394
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1405
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 1407
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1424
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p1}, Lcom/android/browser/WebViewController;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 1425
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "window"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1700(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1205
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1206
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1700(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 1208
    :cond_1d
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->closeTab(Lcom/android/browser/Tab;)V

    .line 1210
    :cond_26
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 7
    .parameter "consoleMessage"

    .prologue
    const/4 v4, 0x1

    .line 1341
    iget-object v2, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v2}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1343
    iget-object v2, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 1344
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0, p1}, Lcom/android/browser/ErrorConsoleView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 1345
    iget-object v2, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getShowState()I

    move-result v2

    if-eq v2, v4, :cond_26

    .line 1348
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 1353
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_26
    iget-object v2, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1381
    :goto_2e
    return v4

    .line 1355
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Console: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    .local v1, message:Ljava/lang/String;
    sget-object v2, Lcom/android/browser/Tab$13;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_82

    goto :goto_2e

    .line 1361
    :pswitch_64
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1365
    :pswitch_6a
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1369
    :pswitch_70
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1373
    :pswitch_76
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1377
    :pswitch_7c
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1358
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_64
        :pswitch_6a
        :pswitch_70
        :pswitch_76
        :pswitch_7c
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 14
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v8, 0x0

    const v6, 0x7f0c0013

    const/4 v4, 0x1

    const v7, 0x1080027

    const/4 v3, 0x0

    .line 1133
    iget-object v5, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v5}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1191
    :goto_11
    return v3

    .line 1137
    :cond_12
    if-eqz p2, :cond_3f

    iget-object v5, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v5}, Lcom/android/browser/Tab;->access$1500(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 1138
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0117

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0118

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_11

    .line 1145
    :cond_3f
    iget-object v5, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v5}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    if-nez v5, :cond_70

    .line 1146
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0115

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0116

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_11

    .line 1156
    :cond_70
    if-eqz p3, :cond_77

    .line 1157
    invoke-direct {p0, p2, p4}, Lcom/android/browser/Tab$4;->createWindow(ZLandroid/os/Message;)V

    move v3, v4

    .line 1158
    goto :goto_11

    .line 1162
    :cond_77
    new-instance v0, Lcom/android/browser/Tab$4$2;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/browser/Tab$4$2;-><init>(Lcom/android/browser/Tab$4;ZLandroid/os/Message;)V

    .line 1171
    .local v0, allowListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/browser/Tab$4$3;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/Tab$4$3;-><init>(Lcom/android/browser/Tab$4;Landroid/os/Message;)V

    .line 1179
    .local v1, blockListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v6, v6, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0111

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0112

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0113

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0114

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1190
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 1191
    goto/16 :goto_11
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 20
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1288
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1800(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1330
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1800(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1332
    :cond_19
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1320
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1322
    :cond_11
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->hideCustomView()V

    .line 1267
    :cond_f
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #setter for: Lcom/android/browser/Tab;->mPageLoadProgress:I
    invoke-static {v0, p2}, Lcom/android/browser/Tab;->access$202(Lcom/android/browser/Tab;I)I

    .line 1215
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 1216
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 12
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/WebStorageSizeManager;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1306
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 1227
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/browser/WebViewController;->onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 1228
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "title"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 1221
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p2}, Lcom/android/browser/WebViewController;->onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 10
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v5, 0x0

    .line 1233
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1236
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1d

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_1d

    .line 1237
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    invoke-virtual {v1, v5}, Lcom/android/browser/DownloadTouchIcon;->cancel(Z)Z

    .line 1238
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 1241
    :cond_1d
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-nez v1, :cond_3e

    .line 1242
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/DownloadTouchIcon;

    iget-object v3, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/android/browser/DownloadTouchIcon;-><init>(Lcom/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 1244
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1246
    :cond_3e
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1197
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 1199
    :cond_11
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/browser/WebViewController;->showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1262
    :cond_11
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1252
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_11

    .line 1253
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/browser/Tab$4;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1255
    :cond_11
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1412
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mInForeground:Z
    invoke-static {v0}, Lcom/android/browser/Tab;->access$800(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1413
    iget-object v0, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/WebViewController;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 1417
    :goto_f
    return-void

    .line 1415
    :cond_10
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .registers 10
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    .line 1430
    move-object v3, p1

    .line 1431
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1432
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/browser/Tab$4;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1434
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04003a

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1436
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c00a2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0013

    new-instance v6, Lcom/android/browser/Tab$4$4;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/browser/Tab$4$4;-><init>(Lcom/android/browser/Tab$4;Landroid/view/View;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0012

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1460
    return-void
.end method
