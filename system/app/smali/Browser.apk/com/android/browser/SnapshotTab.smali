.class public Lcom/android/browser/SnapshotTab;
.super Lcom/android/browser/Tab;
.source "SnapshotTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SnapshotTab$LoadData;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SnapshotTab"


# instance fields
.field private mBackgroundColor:I

.field private mDateCreated:J

.field private mIsLive:Z

.field private mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;

.field private mSnapshotId:J

.field private mWebViewFactory:Lcom/android/browser/WebViewFactory;


# direct methods
.method public constructor <init>(Lcom/android/browser/WebViewController;J)V
    .registers 7
    .parameter "wvcontroller"
    .parameter "snapshotId"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, v1, v1}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 49
    iput-wide p2, p0, Lcom/android/browser/SnapshotTab;->mSnapshotId:J

    .line 50
    iget-object v1, p0, Lcom/android/browser/SnapshotTab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getWebViewFactory()Lcom/android/browser/WebViewFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/SnapshotTab;->mWebViewFactory:Lcom/android/browser/WebViewFactory;

    .line 51
    iget-object v1, p0, Lcom/android/browser/SnapshotTab;->mWebViewFactory:Lcom/android/browser/WebViewFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    .line 52
    .local v0, web:Landroid/webkit/WebView;
    invoke-virtual {p0, v0}, Lcom/android/browser/SnapshotTab;->setWebView(Landroid/webkit/WebView;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->loadData()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/SnapshotTab;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/browser/SnapshotTab;->mSnapshotId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/browser/SnapshotTab;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/browser/SnapshotTab;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/browser/SnapshotTab;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/android/browser/SnapshotTab;->mDateCreated:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/browser/SnapshotTab;Lcom/android/browser/SnapshotTab$LoadData;)Lcom/android/browser/SnapshotTab$LoadData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;

    return-object p1
.end method


# virtual methods
.method addChildTab(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-eqz v0, :cond_8

    .line 85
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 89
    return-void

    .line 87
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Snapshot tabs cannot have child tabs!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canGoBack()Z
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public canGoForward()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public bridge synthetic clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public bridge synthetic compressBitmap(Landroid/graphics/Bitmap;)[B
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public createSnapshotValues()Landroid/content/ContentValues;
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-eqz v0, :cond_9

    .line 103
    invoke-super {p0}, Lcom/android/browser/Tab;->createSnapshotValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 105
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getDateCreated()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/android/browser/SnapshotTab;->mDateCreated:J

    return-wide v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getParent()Lcom/android/browser/Tab;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScreenshot()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotId()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/browser/SnapshotTab;->mSnapshotId:J

    return-wide v0
.end method

.method public bridge synthetic getVoiceDisplayTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceSearchResults()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 142
    invoke-super {p0}, Lcom/android/browser/Tab;->goBack()V

    .line 148
    :goto_9
    return-void

    .line 144
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    .line 145
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 146
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->loadData()V

    goto :goto_9
.end method

.method public bridge synthetic goForward()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->goForward()V

    return-void
.end method

.method public bridge synthetic isBookmarkedSite()Z
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInVoiceSearchMode()Z
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v0

    return v0
.end method

.method public isSnapshot()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method loadData()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;

    if-nez v0, :cond_19

    .line 77
    new-instance v0, Lcom/android/browser/SnapshotTab$LoadData;

    iget-object v1, p0, Lcom/android/browser/SnapshotTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/SnapshotTab$LoadData;-><init>(Lcom/android/browser/SnapshotTab;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;

    .line 78
    iget-object v0, p0, Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/SnapshotTab$LoadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    :cond_19
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-nez v0, :cond_e

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearViewState()V

    .line 126
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    return-void
.end method

.method public bridge synthetic onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/browser/Tab;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    return-void
.end method

.method protected persistThumbnail()V
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-eqz v0, :cond_7

    .line 215
    invoke-super {p0}, Lcom/android/browser/Tab;->persistThumbnail()V

    .line 217
    :cond_7
    return-void
.end method

.method putInBackground()V
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    .line 73
    :goto_6
    return-void

    .line 72
    :cond_7
    invoke-super {p0}, Lcom/android/browser/Tab;->putInBackground()V

    goto :goto_6
.end method

.method putInForeground()V
    .registers 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 59
    iget-object v1, p0, Lcom/android/browser/SnapshotTab;->mWebViewFactory:Lcom/android/browser/WebViewFactory;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    .line 60
    .local v0, web:Landroid/webkit/WebView;
    iget v1, p0, Lcom/android/browser/SnapshotTab;->mBackgroundColor:I

    if-eqz v1, :cond_16

    .line 61
    iget v1, p0, Lcom/android/browser/SnapshotTab;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 63
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/browser/SnapshotTab;->setWebView(Landroid/webkit/WebView;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/browser/SnapshotTab;->loadData()V

    .line 66
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_1c
    invoke-super {p0}, Lcom/android/browser/Tab;->putInForeground()V

    .line 67
    return-void
.end method

.method public bridge synthetic refreshIdAfterPreload()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->refreshIdAfterPreload()V

    return-void
.end method

.method public bridge synthetic revertVoiceSearchMode()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/browser/SnapshotTab;->mIsLive:Z

    if-eqz v0, :cond_9

    .line 111
    invoke-super {p0}, Lcom/android/browser/Tab;->saveState()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic setController(Lcom/android/browser/WebViewController;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/browser/Tab;->setController(Lcom/android/browser/WebViewController;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updateBookmarkedStatus()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->updateBookmarkedStatus()V

    return-void
.end method

.method public bridge synthetic updateShouldCaptureThumbnails()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    return-void
.end method

.method public bridge synthetic voiceSearchSourceIsGoogle()Z
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v0

    return v0
.end method
