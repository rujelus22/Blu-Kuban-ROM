.class public Lcom/google/googlenav/ui/friend/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/ui/friend/C;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/friend/C;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/googlenav/friend/aM;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    monitor-enter p0

    .line 53
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5c

    .line 58
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    move v0, v1

    .line 62
    :goto_1f
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v4

    if-ge v2, v4, :cond_5c

    .line 64
    invoke-virtual {p1, v2}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v5

    if-nez v5, :cond_32

    .line 62
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 69
    :cond_32
    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->H()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_3a
    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->c()Z

    move-result v5

    if-nez v5, :cond_43

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_2f

    .line 78
    :cond_43
    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->F()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_2f

    .line 80
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_59

    goto :goto_2f

    .line 51
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_5c
    :try_start_5c
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "h"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v0, p0, Lcom/google/googlenav/ui/friend/C;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const/16 v0, 0x3d

    const-string v1, "fni"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_5c .. :try_end_8d} :catchall_59

    .line 99
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 38
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/googlenav/ui/friend/C;->a:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
