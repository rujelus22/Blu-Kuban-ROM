.class public Lcom/google/android/apps/books/render/ImageModeRenderer;
.super Lcom/google/android/apps/books/render/ReaderRenderer;
.source "ImageModeRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;,
        Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;,
        Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/books/render/ReaderRenderer",
        "<TT;>;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ImageModeRenderer",
            "<TT;>.FetchHandler;"
        }
    .end annotation
.end field

.field private final mFetchThread:Landroid/os/HandlerThread;

.field private final mHighlightNightPaint:Landroid/graphics/Paint;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNightPaint:Landroid/graphics/Paint;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ImageModeRenderer",
            "<TT;>.RenderHandler;"
        }
    .end annotation
.end field

.field private final mRenderThread:Landroid/os/HandlerThread;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSettings:Lcom/google/android/apps/books/render/ReaderSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 71
    sget-object v0, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)V
    .registers 8
    .parameter "resolver"
    .parameter "context"
    .parameter "account"
    .parameter "settings"

    .prologue
    .line 77
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mNightPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mHighlightNightPaint:Landroid/graphics/Paint;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 78
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    .line 79
    const-string v0, "missing context"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageModeRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v0, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    iget-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;-><init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageModeRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v0, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    iget-object v1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;-><init>(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mNightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lcom/google/android/apps/books/render/ImageModeRenderer;->buildDesaturateAndInvert()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mHighlightNightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {}, Lcom/google/android/apps/books/render/ImageModeRenderer;->buildInvert()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 98
    invoke-virtual {p0, p4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/render/ImageModeRenderer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
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
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->loadPageFromProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/render/ImageModeRenderer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/render/ImageModeRenderer;)Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/render/ImageModeRenderer;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Landroid/graphics/Bitmap;
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
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->loadPageFromOnline(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static buildDesaturateAndInvert()Landroid/graphics/ColorMatrix;
    .registers 3

    .prologue
    .line 421
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 422
    .local v0, desat:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 424
    invoke-static {}, Lcom/google/android/apps/books/render/ImageModeRenderer;->buildInvert()Landroid/graphics/ColorMatrix;

    move-result-object v1

    .line 426
    .local v1, invert:Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 427
    return-object v0
.end method

.method public static buildInvert()Landroid/graphics/ColorMatrix;
    .registers 2

    .prologue
    .line 431
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 438
    .local v0, invert:Landroid/graphics/ColorMatrix;
    return-object v0

    .line 431
    nop

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadPageFromOnline(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    sget-object v5, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/service/ContentFetchService;->fetchHighlightedPageAsBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadPageFromProvider(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "pageUri"
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/ImageModeRenderer;->getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v0

    .line 201
    .local v0, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    invoke-static {p4, p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 202
    .local v7, pageContentUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->getSessionKeyForPage(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 204
    .local v3, sessionKeyUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 206
    .local v1, input:Ljava/io/InputStream;
    if-eqz v3, :cond_22

    .line 208
    :try_start_1a
    iget-object v2, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mResolver:Landroid/content/ContentResolver;

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 212
    :cond_22
    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/apps/books/render/ImageModeRenderer;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 213
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_38

    .line 214
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "unable to decode bitmap"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_33

    .line 219
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2

    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_38
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v6
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .registers 2
    .parameter "settings"

    .prologue
    .line 121
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 124
    return-void
.end method

.method public canProvideText()Z
    .registers 2

    .prologue
    .line 138
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public cancelPendingRequests()V
    .registers 3

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    const/16 v1, 0x64

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ImageModeRenderer$FetchHandler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 16
    .parameter "message"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 373
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_7e

    move v9, v10

    .line 416
    :goto_9
    return v9

    .line 375
    :pswitch_a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;

    .line 378
    .local v7, result:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;,"Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult<TT;>;"
    iget-object v8, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 380
    .local v8, resultBitmap:Landroid/graphics/Bitmap;
    iget-object v11, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->error:Ljava/lang/Exception;

    if-eqz v11, :cond_69

    move v2, v9

    .line 382
    .local v2, hasError:Z
    :goto_15
    const-string v11, "BooksTextureDebug"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    .line 383
    .local v6, paintDebug:Z
    iget-object v11, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/google/android/apps/books/app/BooksActivity;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    .line 384
    .local v4, isNightMode:Z
    iget-object v11, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v11, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    if-eqz v11, :cond_6b

    move v3, v9

    .line 386
    .local v3, isHighlight:Z
    :goto_29
    if-nez v2, :cond_5a

    if-nez v4, :cond_2f

    if-eqz v6, :cond_5a

    .line 387
    :cond_2f
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 389
    .local v1, debugBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v4, :cond_6d

    iget-object v5, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mPaint:Landroid/graphics/Paint;

    .line 393
    .local v5, paint:Landroid/graphics/Paint;
    :goto_48
    invoke-virtual {v0, v8, v13, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 395
    if-eqz v6, :cond_56

    .line 396
    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v12, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    invoke-static {v0, v10, v11, v12, v4}, Lcom/google/android/apps/books/render/ImageModeRenderer;->paintDebugInfo(Landroid/graphics/Canvas;Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Z)V

    .line 400
    :cond_56
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    move-object v8, v1

    .line 406
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #debugBitmap:Landroid/graphics/Bitmap;
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_5a
    if-eqz v2, :cond_75

    .line 407
    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->error:Ljava/lang/Exception;

    invoke-virtual {p0, v10}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchError(Ljava/lang/Exception;)V

    .line 411
    :goto_61
    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    invoke-virtual {p0, v10, v11}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    goto :goto_9

    .end local v2           #hasError:Z
    .end local v3           #isHighlight:Z
    .end local v4           #isNightMode:Z
    .end local v6           #paintDebug:Z
    :cond_69
    move v2, v10

    .line 380
    goto :goto_15

    .restart local v2       #hasError:Z
    .restart local v4       #isNightMode:Z
    .restart local v6       #paintDebug:Z
    :cond_6b
    move v3, v10

    .line 384
    goto :goto_29

    .line 391
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    .restart local v1       #debugBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #isHighlight:Z
    :cond_6d
    if-eqz v3, :cond_72

    iget-object v5, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mHighlightNightPaint:Landroid/graphics/Paint;

    goto :goto_48

    :cond_72
    iget-object v5, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mNightPaint:Landroid/graphics/Paint;

    goto :goto_48

    .line 409
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #debugBitmap:Landroid/graphics/Bitmap;
    :cond_75
    iget-object v10, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->position:Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v11, v7, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderResult;->cookie:Ljava/lang/Object;

    invoke-virtual {p0, v10, v11, v8}, Lcom/google/android/apps/books/render/ImageModeRenderer;->dispatchRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_61

    .line 373
    nop

    :pswitch_data_7e
    .packed-switch 0xc8
        :pswitch_a
    .end packed-switch
.end method

.method public isPassageForbidden(I)Z
    .registers 4
    .parameter "passageIndex"

    .prologue
    .line 150
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no text in image mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;)I
    .registers 4
    .parameter "range"

    .prologue
    .line 155
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImageModeRenderer#loadRangeBounds"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public paintHighlightRectangles(IILandroid/graphics/Bitmap;Ljava/util/List;)V
    .registers 7
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
    .line 167
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    .local p4, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ImageModeRenderer#paintHighlightRectangles"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPassageText(ILjava/lang/String;)I
    .registers 5
    .parameter "passageIndex"
    .parameter "position"

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t get text in image mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .registers 6
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
    .line 132
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderHandler:Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;

    const/16 v1, 0x64

    new-instance v2, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;

    invoke-direct {v2, p1, p2}, Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/render/ImageModeRenderer$RenderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method public teardown()V
    .registers 2

    .prologue
    .line 111
    .local p0, this:Lcom/google/android/apps/books/render/ImageModeRenderer;,"Lcom/google/android/apps/books/render/ImageModeRenderer<TT;>;"
    invoke-super {p0}, Lcom/google/android/apps/books/render/ReaderRenderer;->teardown()V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/books/render/ImageModeRenderer;->cancelPendingRequests()V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mRenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/books/render/ImageModeRenderer;->mFetchThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 117
    return-void
.end method
