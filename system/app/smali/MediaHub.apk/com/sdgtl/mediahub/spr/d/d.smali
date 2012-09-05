.class public final Lcom/sdgtl/mediahub/spr/d/d;
.super Lcom/sdgtl/mediahub/spr/d/a;

# interfaces
.implements Lsec/drm/DrmManagerClient$OnErrorListener;
.implements Lsec/drm/DrmManagerClient$OnEventListener;


# instance fields
.field private j:Lsec/drm/DrmManagerClient;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    if-nez v0, :cond_16

    new-instance v0, Lsec/drm/DrmManagerClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsec/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    :cond_16
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Lsec/drm/DrmManagerClient;->setOnEventListener(Lsec/drm/DrmManagerClient$OnEventListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Lsec/drm/DrmManagerClient;->setOnErrorListener(Lsec/drm/DrmManagerClient$OnErrorListener;)V

    :cond_24
    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->a:Z

    iput v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->b:I

    iput v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->d:I

    const-string v0, "MediaHubDRM"

    const-string v1, "DrmPlayReadyOsp20Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "playready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    if-nez v0, :cond_1f

    new-instance v0, Lsec/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsec/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Lsec/drm/DrmManagerClient;->setOnEventListener(Lsec/drm/DrmManagerClient$OnEventListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Lsec/drm/DrmManagerClient;->setOnErrorListener(Lsec/drm/DrmManagerClient$OnErrorListener;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    :goto_4
    return v2

    :cond_5
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_38

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v3, "MediaHubDRM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isLicensed - f***P*** = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CONTENTPATH:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_44
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v1, p1}, Lsec/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v1, p1, v2}, Lsec/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_fe

    const-string v0, "license_start_time"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "license_expiry_time"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v4, :cond_ba

    const-string v4, "MediaHubDRM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isLicensed - licenseStatus = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubDRM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isLicensed - Start time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GMT-0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubDRM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isLicensed - Expiry time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GMT-0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    if-nez v3, :cond_f0

    if-nez v1, :cond_c0

    if-nez v0, :cond_c4

    :cond_c0
    if-nez v1, :cond_d8

    if-nez v0, :cond_d8

    :cond_c4
    if-eqz v0, :cond_cf

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J

    :cond_cf
    const/4 v0, 0x5

    :goto_d0
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {p2, p3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;I)J

    move v2, v0

    goto/16 :goto_4

    :cond_d8
    if-eqz v1, :cond_e3

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    :cond_e3
    if-eqz v0, :cond_ee

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J

    :cond_ee
    const/4 v0, 0x0

    goto :goto_d0

    :cond_f0
    const/4 v1, 0x2

    if-ne v3, v1, :cond_fc

    if-nez v0, :cond_fc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->f(ILjava/lang/String;)J

    :cond_fc
    move v0, v2

    goto :goto_d0

    :cond_fe
    move-object v1, v0

    goto/16 :goto_5e
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_78

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_56

    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] joinDomain "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM] domainController == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] serviceId == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] accountId == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    new-instance v1, Lsec/drm/DrmInfo;

    const/16 v2, 0x20

    const-string v3, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v1, v2, v0, v3}, Lsec/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    const-string v0, "domain_controller"

    invoke-virtual {v1, v0, p1}, Lsec/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "service_id"

    invoke-virtual {v1, v0, p2}, Lsec/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "account_id"

    invoke-virtual {v1, v0, p3}, Lsec/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, v1}, Lsec/drm/DrmManagerClient;->processDrmInfo(Lsec/drm/DrmInfo;)I

    move-result v0

    return v0

    :array_78
    .array-data 0x1
        0x4at
        0x55t
        0x4et
        0x4bt
    .end array-data
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0}, Lsec/drm/DrmManagerClient;->deInitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    :cond_c
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 10

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v0, :cond_c6

    const-string v0, "MediaHubDRM"

    const-string v1, "[DRM] TYPE_RIGHTS_ACQUISITION_INFO start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] f***P*** = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONTENTPATH:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] MEDIA_HUB = Media_hub"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] MediaHub.getContentProviderBase().getUserId() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] Constant.A**********_I* = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "gtd83co8hu"

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] MediaHub.getContentProviderBase().getD*****U**() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEVICEUID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DRM] Long.toString(mO****I*) = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubDRM"

    const-string v1, "[DRM] TYPE_RIGHTS_ACQUISITION_INFO end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    if-nez p1, :cond_c9

    :goto_c8
    return-void

    :cond_c9
    new-instance v0, Lcom/sdgtl/mediahub/spr/d/f;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/d/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/f;-><init>(ILjava/lang/String;)V

    const-string v1, "drm_path"

    invoke-virtual {v0, v1, p1}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->i:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    const-string v1, "media_hub"

    const-string v2, "Media_hub"

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "user_guid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "app_Id"

    const-string v2, "gtd83co8hu"

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imei"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "orderId"

    const-string v2, "%011d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_123
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v1, v0}, Lsec/drm/DrmManagerClient;->acquireRights(Lsec/drm/DrmInfoRequest;)I

    goto :goto_c8
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v2, :cond_3c

    const-string v2, "MediaHubDRM"

    const-string v3, "[DRM] queryDomain"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM] serviceId == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM] accountId == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubDRM"

    const-string v3, "[DRM] REVISION == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    new-instance v2, Lcom/sdgtl/mediahub/spr/d/f;

    const/16 v3, 0x1f

    const-string v4, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/d/f;-><init>(ILjava/lang/String;)V

    const-string v3, "service_id"

    invoke-virtual {v2, v3, p1}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "account_id"

    invoke-virtual {v2, v3, p2}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "revision"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/d/f;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v3, v2}, Lsec/drm/DrmManagerClient;->processDrmRequest(Lsec/drm/DrmInfoRequest;)Lsec/drm/DrmInfo;

    move-result-object v2

    if-nez v2, :cond_65

    :goto_61
    if-ne v0, v1, :cond_95

    const/4 v0, 0x0

    :goto_64
    return v0

    :cond_65
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lsec/drm/DrmInfo;->getData()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    const-string v3, "MediaHubDRM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[DRM] Query domain status code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_61

    :cond_95
    move v0, v1

    goto :goto_64
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)I
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_5

    :goto_4
    return v0

    :cond_5
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v2, p1}, Lsec/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    goto :goto_4

    :pswitch_12
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v2, p1, v0}, Lsec/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v1, "license_start_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "license_expiry_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    if-nez v1, :cond_2c

    if-eqz v0, :cond_2c

    const/4 v0, 0x5

    goto :goto_4

    :cond_2c
    if-eqz v1, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->g:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;Ljava/lang/String;)J

    :cond_37
    const/4 v0, 0x0

    goto :goto_4

    :cond_39
    move-object v0, v1

    goto :goto_26

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_78

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_56

    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] leaveDomain "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[DRM] domainController == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] serviceId == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM] accountId == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    new-instance v1, Lsec/drm/DrmInfo;

    const/16 v2, 0x21

    const-string v3, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v1, v2, v0, v3}, Lsec/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    const-string v0, "domain_controller"

    invoke-virtual {v1, v0, p1}, Lsec/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "service_id"

    invoke-virtual {v1, v0, p2}, Lsec/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "account_id"

    invoke-virtual {v1, v0, p3}, Lsec/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, v1}, Lsec/drm/DrmManagerClient;->processDrmInfo(Lsec/drm/DrmInfo;)I

    move-result v0

    return v0

    :array_78
    .array-data 0x1
        0x4at
        0x55t
        0x4et
        0x4bt
    .end array-data
.end method

.method public final b(Ljava/lang/String;J)V
    .registers 13

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->d:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->d:I

    :cond_14
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->c:[I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/d;->d:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->b:I

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Lsec/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_82

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "f***p***: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CONTENTPATH:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mNextProcessRequestLicense = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sdgtl/mediahub/spr/d/d;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DRM]LicenseStatus == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v8, :cond_8f

    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] RightsStatus.RIGHTS_NOT_ACQUIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    if-ne v0, v8, :cond_99

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/d/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/d/d;->a(Ljava/lang/String;J)V

    goto/16 :goto_5

    :cond_8f
    if-ne v0, v7, :cond_82

    const-string v1, "MediaHubDRM"

    const-string v2, "[DRM] RightsStatus.RIGHTS_EXPIRED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    :cond_99
    if-ne v0, v7, :cond_b0

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/d/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_ab

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Lsec/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    :cond_ab
    invoke-virtual {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/d/d;->a(Ljava/lang/String;J)V

    goto/16 :goto_5

    :cond_b0
    if-nez v0, :cond_5

    iput-boolean v6, p0, Lcom/sdgtl/mediahub/spr/d/d;->a:Z

    iput v6, p0, Lcom/sdgtl/mediahub/spr/d/d;->b:I

    iput v6, p0, Lcom/sdgtl/mediahub/spr/d/d;->d:I

    goto/16 :goto_5
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Lsec/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_96

    goto :goto_3

    :pswitch_11
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lsec/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_92

    const-string v2, "license_start_time"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "license_expiry_time"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    sget-boolean v4, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v4, :cond_82

    const-string v4, "MediaHubDRM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkDrmExpiraryDate - licenseStatus = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubDRM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkDrmExpiraryDate - Start time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", GMT-0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubDRM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkDrmExpiraryDate - Expiry time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", GMT-0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    if-nez v2, :cond_86

    if-nez v0, :cond_3

    :cond_86
    if-nez v2, :cond_8a

    if-eqz v0, :cond_3

    :cond_8a
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_92
    move-object v0, v1

    move-object v2, v1

    goto :goto_26

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;J)V
    .registers 10

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/d/d;->g()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Lsec/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_50

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateLicenseStatus - f***P*** = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CONTENTPATH:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateLicenseStatus - licenseStatus = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/d;->j:Lsec/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Lsec/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/d/d;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/d/d;->a(Ljava/lang/String;J)V

    :cond_61
    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->d:Z

    if-eqz v1, :cond_2

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateLicenseStatus - License remove result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
