.class Landroid/webkit/WebView$OnTrimMemoryListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTrimMemoryListener"
.end annotation


# static fields
.field private static sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 529
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 538
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 539
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 532
    sget-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    if-nez v0, :cond_f

    .line 533
    new-instance v0, Landroid/webkit/WebView$OnTrimMemoryListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView$OnTrimMemoryListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    .line 535
    :cond_f
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 544
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 549
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 556
    #calls: Landroid/webkit/WebView;->nativeOnTrimMemory(I)V
    invoke-static {p1}, Landroid/webkit/WebView;->access$100(I)V

    .line 557
    return-void
.end method
