.class public final Lcom/google/ads/af;
.super Lcom/google/ads/util/w;


# instance fields
.field public final a:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/google/ads/util/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/aa",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    const-wide/32 v6, 0x500000

    const-wide/32 v4, 0x20000

    invoke-direct {p0}, Lcom/google/ads/util/w;-><init>()V

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "minHwAccelerationVersionBanner"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->a:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "minHwAccelerationVersionOverlay"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->b:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "mraidBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->c:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "mraidExpandedBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->d:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "mraidInterstitialPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->e:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "appCacheMaxSize"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->f:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "appCacheMaxSizePaddingInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->g:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "maxTotalAppCacheQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->h:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "maxTotalDatabaseQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->i:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "maxDatabaseQuotaPerOriginInBytes"

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->j:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "databaseQuotaIncreaseStepInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->k:Lcom/google/ads/util/aa;

    new-instance v0, Lcom/google/ads/util/aa;

    const-string v1, "isInitialized"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/aa;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/af;->l:Lcom/google/ads/util/aa;

    return-void
.end method
