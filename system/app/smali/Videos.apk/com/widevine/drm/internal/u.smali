.class public final Lcom/widevine/drm/internal/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/widevine/drm/internal/x;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/widevine/drm/internal/x;JJJ)V
    .registers 10

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/widevine/drm/internal/u;->c:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/u;->d:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/u;->e:J

    iput-object p1, p0, Lcom/widevine/drm/internal/u;->a:Lcom/widevine/drm/internal/x;

    iput-wide p2, p0, Lcom/widevine/drm/internal/u;->c:J

    iput-wide p4, p0, Lcom/widevine/drm/internal/u;->d:J

    iput-wide p6, p0, Lcom/widevine/drm/internal/u;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/widevine/drm/internal/x;Ljava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/widevine/drm/internal/u;->c:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/u;->d:J

    iput-wide v0, p0, Lcom/widevine/drm/internal/u;->e:J

    iput-object p1, p0, Lcom/widevine/drm/internal/u;->a:Lcom/widevine/drm/internal/x;

    iput-object p2, p0, Lcom/widevine/drm/internal/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/widevine/drm/internal/x;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/u;->a:Lcom/widevine/drm/internal/x;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/widevine/drm/internal/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/widevine/drm/internal/u;->c:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    iget-wide v0, p0, Lcom/widevine/drm/internal/u;->d:J

    return-wide v0
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/widevine/drm/internal/u;->e:J

    return-wide v0
.end method
