.class Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;
.super Ljava/lang/Object;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDiscoverInfo"
.end annotation


# instance fields
.field RedirectPost:Lorg/apache/http/client/methods/HttpPost;

.field bundle:Landroid/os/Bundle;

.field isErrorTagPresent:Z

.field isRedirectTagPresent:Z

.field private mAutoDiscoverRetryCount:I

.field final synthetic this$0:Lcom/android/exchange/EasSyncService;


# direct methods
.method private constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 2
    .parameter

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    invoke-direct {p0, p1}, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;-><init>(Lcom/android/exchange/EasSyncService;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1819
    iput p1, p0, Lcom/android/exchange/EasSyncService$AutoDiscoverInfo;->mAutoDiscoverRetryCount:I

    return p1
.end method
