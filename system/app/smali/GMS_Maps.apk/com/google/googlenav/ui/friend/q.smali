.class public Lcom/google/googlenav/ui/friend/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:B

.field private c:J

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/ui/friend/q;->b:B

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/ui/friend/q;->c:J

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/friend/q;->d:I

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    .prologue
    .line 71
    iget-byte v0, p0, Lcom/google/googlenav/ui/friend/q;->b:B

    return v0
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-byte p1, p0, Lcom/google/googlenav/ui/friend/q;->b:B

    .line 76
    return-void
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/google/googlenav/ui/friend/q;->c:J

    .line 84
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Boolean;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/q;->a:Ljava/lang/Boolean;

    .line 89
    if-eqz p2, :cond_12

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 94
    :goto_c
    const-string v1, "WIFI_DETECTION_ALERT_ALLOWED"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 96
    :cond_12
    monitor-exit p0

    return-void

    .line 93
    :cond_14
    const/4 v0, 0x0

    goto :goto_c

    .line 88
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/googlenav/ui/friend/q;->e:Z

    .line 104
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/google/googlenav/ui/friend/q;->c:J

    return-wide v0
.end method

.method public declared-synchronized c()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/q;->a:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/googlenav/ui/friend/q;->e:Z

    return v0
.end method
