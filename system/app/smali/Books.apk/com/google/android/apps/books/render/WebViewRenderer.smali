.class public Lcom/google/android/apps/books/render/WebViewRenderer;
.super Lcom/google/android/apps/books/render/ReaderRenderer;
.source "WebViewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/WebViewRenderer$ThrowingDataSource;,
        Lcom/google/android/apps/books/render/WebViewRenderer$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/books/render/ReaderRenderer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mHiddenParent:Landroid/view/ViewGroup;

.field private mHorizontalMargin:I

.field private final mJavaScript:Lcom/google/android/apps/books/render/JavaScriptExecutor;

.field private mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/WebViewRendererModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSnapshotBitmap:Landroid/graphics/Bitmap;

.field mTextHighlightRenderer:Lcom/google/android/apps/books/render/TextHighlightRenderer;

.field private mVerticalMargin:I

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/ContentResolver;Landroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)V
    .registers 18
    .parameter "hiddenParent"
    .parameter "resolver"
    .parameter "account"
    .parameter "settings"

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;-><init>()V

    .line 436
    new-instance v8, Lcom/google/android/apps/books/render/WebViewRenderer$4;

    invoke-direct {v8, p0}, Lcom/google/android/apps/books/render/WebViewRenderer$4;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mJavaScript:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    .line 96
    const-string v8, "missing hiddenParent"

    invoke-static {p1, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    .line 97
    const-string v8, "missing resolver"

    invoke-static {p2, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentResolver;

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mResolver:Landroid/content/ContentResolver;

    .line 98
    const-string v8, "missing account"

    move-object/from16 v0, p3

    invoke-static {v0, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mAccount:Landroid/accounts/Account;

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    .local v2, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 103
    .local v6, resources:Landroid/content/res/Resources;
    const v8, 0x7f090006

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 104
    .local v3, marginPercent:I
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 105
    .local v4, minDimension:I
    mul-int v8, v4, v3

    div-int/lit8 v8, v8, 0x64

    iput v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    .line 106
    iget v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    iput v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    .line 108
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    iget v9, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    iget v10, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    iget v11, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    iget v12, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 111
    const-string v8, "WebViewRenderer"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 112
    const-string v8, "WebViewRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set margins to ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_95
    new-instance v8, Lcom/google/android/apps/books/render/WebViewRenderer$1;

    invoke-direct {v8, p0, v2}, Lcom/google/android/apps/books/render/WebViewRenderer$1;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    .line 144
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 145
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 146
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 148
    new-instance v8, Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-direct {v8}, Lcom/google/android/apps/books/render/WebViewRendererModel;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    .line 150
    new-instance v5, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;

    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v8}, Lcom/google/android/apps/books/render/WebViewRendererModel;->getReaderListener()Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Lcom/google/android/apps/books/render/ReaderListener;)V

    .line 152
    .local v5, readerController:Lcom/google/android/apps/books/render/WebViewRenderer$Reader;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>.Reader;"
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v8, v5}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setJavascriptReader(Lcom/google/android/apps/books/render/WebViewRendererModel$SnapshottingReaderController;)V

    .line 153
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/render/WebViewRenderer;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 155
    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/WebViewRenderer$Reader;->getReaderListener()Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v8

    invoke-static {}, Lcom/google/android/apps/books/util/HandlerExecutor;->getUiThreadExecutor()Lcom/google/android/apps/books/util/HandlerExecutor;

    move-result-object v9

    new-instance v10, Lcom/google/android/apps/books/render/WebViewRenderer$ThrowingDataSource;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/google/android/apps/books/render/WebViewRenderer$ThrowingDataSource;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer$1;)V

    invoke-direct {v1, v8, v9, v10}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;-><init>(Lcom/google/android/apps/books/render/ReaderListener;Ljava/util/concurrent/Executor;Lcom/google/android/apps/books/render/ReaderDataSource;)V

    .line 157
    .local v1, bridge:Lcom/google/android/apps/books/render/ReaderBridge;
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const-string v9, "bridge"

    invoke-virtual {v8, v1, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/google/android/apps/books/render/WebViewRenderer$2;

    invoke-direct {v9, p0}, Lcom/google/android/apps/books/render/WebViewRenderer$2;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 167
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/google/android/apps/books/render/WebViewRenderer$3;

    invoke-direct {v9, p0}, Lcom/google/android/apps/books/render/WebViewRenderer$3;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 211
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 212
    .local v7, webSettings:Landroid/webkit/WebSettings;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 213
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 214
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 215
    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 216
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 217
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 221
    iget-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v8, Lcom/google/android/apps/books/render/TextHighlightRenderer;

    invoke-direct {v8}, Lcom/google/android/apps/books/render/TextHighlightRenderer;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mTextHighlightRenderer:Lcom/google/android/apps/books/render/TextHighlightRenderer;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/render/WebViewRenderer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRenderer;->onViewInvalidated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/render/WebViewRenderer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRenderer;->getPageHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/render/WebViewRenderer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/render/WebViewRenderer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/render/WebViewRenderer;)Lcom/google/android/apps/books/render/WebViewRendererModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/render/WebViewRenderer;->buildSectionContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/render/WebViewRenderer;Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/render/WebViewRenderer;->buildResourceContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/render/WebViewRenderer;->dispatchWebViewClientError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600()Landroid/webkit/WebResourceResponse;
    .registers 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/apps/books/render/WebViewRenderer;->buildNotFoundResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/render/WebViewRenderer;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/render/WebViewRenderer;)Lcom/google/android/apps/books/render/JavaScriptExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mJavaScript:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/render/WebViewRenderer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRenderer;->getPageWidth()I

    move-result v0

    return v0
.end method

.method private static buildNotFoundResponse()Landroid/webkit/WebResourceResponse;
    .registers 4

    .prologue
    .line 232
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/plain"

    const-string v2, "UTF-8"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private buildResourceContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .registers 17
    .parameter "resolver"
    .parameter "fetchService"
    .parameter "metadata"
    .parameter "resourceContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v11, p3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 270
    .local v11, volumeId:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, resId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p2, v11, v8, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureResourceContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v11, v8}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 275
    .local v9, resourceUri:Landroid/net/Uri;
    const-string v0, "session_key_id"

    invoke-static {p1, v9, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 277
    .local v10, sessionKeyId:Ljava/lang/Long;
    if-nez v10, :cond_32

    const/4 v5, 0x0

    .line 280
    .local v5, sessionKeyUri:Landroid/net/Uri;
    :goto_1a
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v2

    .line 281
    .local v2, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->openPlaintextInputStream(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v7

    .line 284
    .local v7, data:Ljava/io/InputStream;
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/octet-stream"

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    .line 277
    .end local v2           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v5           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #data:Ljava/io/InputStream;
    :cond_32
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1a
.end method

.method private buildSectionContentResponse(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .registers 17
    .parameter "resolver"
    .parameter "fetchService"
    .parameter "metadata"
    .parameter "sectionContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v11, p3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 244
    .local v11, volumeId:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, sectionId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p2, v11, v8, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureSectionContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v11, v8}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 249
    .local v9, sectionUri:Landroid/net/Uri;
    const-string v0, "session_key_id"

    invoke-static {p1, v9, v0}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 251
    .local v10, sessionKeyId:Ljava/lang/Long;
    if-nez v10, :cond_32

    const/4 v5, 0x0

    .line 254
    .local v5, sessionKeyUri:Landroid/net/Uri;
    :goto_1a
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v2

    .line 255
    .local v2, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/render/WebViewRenderer;->openPlaintextInputStream(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v7

    .line 258
    .local v7, data:Ljava/io/InputStream;
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/octet-stream"

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    .line 251
    .end local v2           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v5           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #data:Ljava/io/InputStream;
    :cond_32
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1a
.end method

.method private dispatchWebViewClientError(Ljava/lang/Exception;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 534
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/apps/books/render/WebViewRenderer$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/render/WebViewRenderer$5;-><init>(Lcom/google/android/apps/books/render/WebViewRenderer;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method

.method private getPageHeight()I
    .registers 2

    .prologue
    .line 448
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method private getPageWidth()I
    .registers 2

    .prologue
    .line 444
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method private onViewInvalidated()V
    .registers 1

    .prologue
    .line 317
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    return-void
.end method

.method private openPlaintextInputStream(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/model/VolumeMetadata;Landroid/net/Uri;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .registers 14
    .parameter "resolver"
    .parameter "keyFactory"
    .parameter "metadata"
    .parameter "contentUri"
    .parameter "sessionKeyUri"
    .parameter "inflateContents"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 297
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    invoke-virtual {p1, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 298
    .local v1, input:Ljava/io/InputStream;
    if-eqz p5, :cond_1c

    .line 299
    iget-object v4, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mAccount:Landroid/accounts/Account;

    iget-object v5, p3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v6, v1

    .line 303
    .end local v1           #input:Ljava/io/InputStream;
    .local v6, input:Ljava/io/InputStream;
    :goto_12
    if-eqz p6, :cond_1a

    .line 304
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 306
    .end local v6           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    :goto_19
    return-object v1

    .end local v1           #input:Ljava/io/InputStream;
    .restart local v6       #input:Ljava/io/InputStream;
    :cond_1a
    move-object v1, v6

    .end local v6           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    goto :goto_19

    :cond_1c
    move-object v6, v1

    .end local v1           #input:Ljava/io/InputStream;
    .restart local v6       #input:Ljava/io/InputStream;
    goto :goto_12
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .registers 8
    .parameter "settings"

    .prologue
    .line 419
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4f

    .line 421
    iget-object v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 422
    .local v2, parentHeight:I
    iget v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 423
    .local v1, pageHeight:I
    iget-object v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHiddenParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 429
    .end local v2           #parentHeight:I
    .local v0, displayDensity:F
    :goto_1c
    if-gtz v1, :cond_49

    const-string v3, "WebViewRenderer"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 430
    const-string v3, "WebViewRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid page height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " displayDensity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_49
    iget-object v3, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setReaderSettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V

    .line 434
    return-void

    .line 425
    .end local v0           #displayDensity:F
    .end local v1           #pageHeight:I
    :cond_4f
    const/4 v1, 0x0

    .line 426
    .restart local v1       #pageHeight:I
    const/high16 v0, 0x3f80

    .restart local v0       #displayDensity:F
    goto :goto_1c
.end method

.method public canProvideText()Z
    .registers 2

    .prologue
    .line 360
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public cancelPendingRequests()V
    .registers 3

    .prologue
    .line 334
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    const-string v0, "WebViewRenderer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 335
    const-string v0, "WebViewRenderer"

    const-string v1, "Cancelling all render requests"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->cancelPendingRequests()V

    .line 338
    return-void
.end method

.method public getPaginationResultFor(I)Lcom/google/android/apps/books/util/PassagePaginationResult;
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 347
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    if-eqz v0, :cond_b

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->getPageBoundsForPassage(I)Lcom/google/android/apps/books/util/PassagePaginationResult;

    move-result-object v0

    .line 350
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPassageForbidden(I)Z
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 370
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->isPassageForbidden(I)Z

    move-result v0

    return v0
.end method

.method public loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I
    .registers 3
    .parameter "range"

    .prologue
    .line 375
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I

    move-result v0

    return v0
.end method

.method public paintHighlightRectangles(IILandroid/graphics/Bitmap;Ljava/util/List;)V
    .registers 15
    .parameter "passageIndex"
    .parameter "pageIndex"
    .parameter "bitmap"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    .local p4, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v8, 0x3

    .line 381
    const-string v5, "WebViewRenderer"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 382
    const-string v5, "WebViewRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Highlighting regions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_35
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v5, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->getPageBoundsForPassage(I)Lcom/google/android/apps/books/util/PassagePaginationResult;

    move-result-object v4

    .line 386
    .local v4, pagination:Lcom/google/android/apps/books/util/PassagePaginationResult;
    if-nez v4, :cond_64

    .line 387
    const-string v5, "WebViewRenderer"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 388
    const-string v5, "WebViewRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Passage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not paginated, cannot apply highlight"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_63
    :goto_63
    return-void

    .line 393
    :cond_64
    invoke-virtual {v4}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPagesCount()I

    move-result v3

    .line 394
    .local v3, pageCount:I
    if-lt p2, v3, :cond_7a

    .line 395
    const-string v5, "WebViewRenderer"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 396
    const-string v5, "WebViewRenderer"

    const-string v6, "Page index out of bounds, can\'t draw highlights"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 405
    :cond_7a
    invoke-virtual {v4, p2}, Lcom/google/android/apps/books/util/PassagePaginationResult;->getPageBounds(I)Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;

    move-result-object v1

    .line 406
    .local v1, pageBounds:Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    iget v6, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    iget v7, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mHorizontalMargin:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mVerticalMargin:I

    invoke-virtual {v1}, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 409
    .local v2, pageContentRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mTextHighlightRenderer:Lcom/google/android/apps/books/render/TextHighlightRenderer;

    invoke-virtual {v5, v1, v2, p4, v0}, Lcom/google/android/apps/books/render/TextHighlightRenderer;->paintHighlightRectangles(Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Canvas;)V

    goto :goto_63
.end method

.method public requestPassageText(ILjava/lang/String;)I
    .registers 4
    .parameter "passageIndex"
    .parameter "position"

    .prologue
    .line 365
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->requestPassageText(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .registers 4
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    .local p1, listener:Lcom/google/android/apps/books/render/RendererListener;,"Lcom/google/android/apps/books/render/RendererListener<TT;>;"
    invoke-super {p0, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V

    .line 313
    return-void
.end method

.method public setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .registers 5
    .parameter "fetchService"
    .parameter "metadata"

    .prologue
    .line 321
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/books/render/ReaderRenderer;->setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 324
    const-string v0, "WebViewRenderer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 325
    const-string v0, "WebViewRenderer"

    const-string v1, "setVolumeMetadata() kicking off content load"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/reader.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRenderer;->mModel:Lcom/google/android/apps/books/render/WebViewRendererModel;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel;->setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 330
    return-void
.end method

.method public teardown()V
    .registers 1

    .prologue
    .line 342
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRenderer;,"Lcom/google/android/apps/books/render/WebViewRenderer<TT;>;"
    invoke-super {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;->teardown()V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/WebViewRenderer;->cancelPendingRequests()V

    .line 344
    return-void
.end method
