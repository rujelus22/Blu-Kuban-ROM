.class public LaT/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:Ljava/util/Hashtable;


# instance fields
.field private final a:Lcom/google/googlenav/common/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LaT/h;->k:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const v0, 0x7fffffff

    iput v0, p0, LaT/h;->f:I

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaT/h;->j:J

    .line 90
    iput-object p1, p0, LaT/h;->a:Lcom/google/googlenav/common/a;

    .line 91
    iput-object p2, p0, LaT/h;->b:Ljava/lang/String;

    .line 92
    iput-object p3, p0, LaT/h;->c:Ljava/lang/String;

    .line 93
    iput p4, p0, LaT/h;->d:I

    .line 94
    sget-object v0, LaT/h;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method private h()J
    .registers 3

    .prologue
    .line 272
    iget-object v0, p0, LaT/h;->a:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, LaT/h;->h()J

    move-result-wide v0

    iput-wide v0, p0, LaT/h;->j:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 6
    .parameter

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    iput p1, p0, LaT/h;->h:I

    .line 153
    iget-wide v0, p0, LaT/h;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, LaT/h;->e:J

    .line 154
    iget v0, p0, LaT/h;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaT/h;->i:I

    .line 155
    iget v0, p0, LaT/h;->f:I

    if-le v0, p1, :cond_15

    .line 156
    iput p1, p0, LaT/h;->f:I

    .line 158
    :cond_15
    iget v0, p0, LaT/h;->g:I

    if-ge v0, p1, :cond_1b

    .line 159
    iput p1, p0, LaT/h;->g:I

    .line 162
    :cond_1b
    iget-object v0, p0, LaT/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget v0, p0, LaT/h;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3e

    .line 163
    iget v0, p0, LaT/h;->d:I

    iget-object v1, p0, LaT/h;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 165
    :cond_3e
    monitor-exit p0

    return-void

    .line 152
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 135
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, LaT/h;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 136
    invoke-direct {p0}, LaT/h;->h()J

    move-result-wide v0

    iget-wide v2, p0, LaT/h;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, LaT/h;->a(I)V

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaT/h;->j:J
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 139
    :cond_18
    monitor-exit p0

    return-void

    .line 135
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 3

    .prologue
    .line 143
    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, LaT/h;->j:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .registers 5

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaT/h;->i:I

    if-lez v0, :cond_15

    iget-wide v0, p0, LaT/h;->e:J

    iget v2, p0, LaT/h;->i:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v2, p0, LaT/h;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    long-to-int v0, v0

    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .registers 2

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaT/h;->i:I

    if-lez v0, :cond_9

    iget v0, p0, LaT/h;->f:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .registers 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaT/h;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()I
    .registers 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaT/h;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    iget-object v1, p0, LaT/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 203
    iget-object v1, p0, LaT/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_14
    invoke-virtual {p0}, LaT/h;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, LaT/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, LaT/h;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, LaT/h;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-wide v1, p0, LaT/h;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4f

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 201
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
