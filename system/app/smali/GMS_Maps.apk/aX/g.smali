.class public LaX/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:B

.field private c:J

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, LaX/g;->b:B

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaX/g;->c:J

    iput v2, p0, LaX/g;->d:I

    iput v2, p0, LaX/g;->e:I

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    iget-byte v0, p0, LaX/g;->b:B

    return v0
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, LaX/g;->b:B

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, LaX/g;->e:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, LaX/g;->c:J

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Boolean;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, LaX/g;->a:Ljava/lang/Boolean;

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_c
    const-string v1, "WIFI_DETECTION_ALERT_ALLOWED"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_c

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, LaX/g;->c:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, LaX/g;->d:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaX/g;->d:I

    return v0
.end method

.method public declared-synchronized d()Ljava/lang/Boolean;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaX/g;->a:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
