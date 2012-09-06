.class Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemViewClient;
.super Landroid/webkit/WebViewClient;
.source "ItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewClient"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/widget/ItemViewFactory$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 266
    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract;->RESOURCE_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 268
    const/4 v1, 0x0

    .line 271
    :goto_d
    return v1

    .line 270
    :cond_e
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/google/android/apps/reader/widget/ItemViewUri;->open(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_d
.end method
