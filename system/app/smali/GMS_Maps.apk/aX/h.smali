.class public LaX/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaX/h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaX/h;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lax/aS;J)V
    .registers 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lax/aS;->b()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5c

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    move v0, v1

    :goto_1f
    invoke-virtual {p1}, Lax/aS;->b()I

    move-result v4

    if-ge v2, v4, :cond_5c

    invoke-virtual {p1, v2}, Lax/aS;->a(I)Lax/aP;

    move-result-object v4

    invoke-virtual {v4}, Lax/aP;->m()Z

    move-result v5

    if-nez v5, :cond_32

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_32
    invoke-virtual {v4}, Lax/aP;->K()Z

    move-result v5

    if-eqz v5, :cond_3a

    add-int/lit8 v1, v1, 0x1

    :cond_3a
    invoke-virtual {v4}, Lax/aP;->c()Z

    move-result v5

    if-nez v5, :cond_43

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_43
    invoke-virtual {v4}, Lax/aP;->I()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lax/aS;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_2f

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_59

    goto :goto_2f

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5c
    :try_start_5c
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LaX/h;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    const-string v1, "fni"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_8d
    .catchall {:try_start_5c .. :try_end_8d} :catchall_59

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, LaX/h;->a:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
