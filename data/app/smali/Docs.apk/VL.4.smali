.class public LVL;
.super Ljava/lang/Object;
.source "PartialDownloadedFileStoreImpl.java"

# interfaces
.implements LVJ;


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private final a:I

.field private final a:Lap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lap",
            "<",
            "Ljava/lang/String;",
            "LVK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFX;)V
    .registers 4
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    const/4 v0, 0x3

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-eqz p1, :cond_c

    const-string v1, "maxIncompleteDownloads"

    invoke-interface {p1, v1, v0}, LFX;->a(Ljava/lang/String;I)I

    move-result v0

    :cond_c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LVL;->a:I

    .line 136
    new-instance v0, LVM;

    iget v1, p0, LVL;->a:I

    invoke-direct {v0, p0, v1}, LVM;-><init>(LVL;I)V

    iput-object v0, p0, LVL;->a:Lap;

    .line 145
    return-void
.end method

.method private a(LkR;LQM;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LkR;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, LQM;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(LQO;)LVK;
    .registers 3
    .parameter

    .prologue
    .line 172
    new-instance v0, LVN;

    invoke-direct {v0, p1}, LVN;-><init>(LQO;)V

    return-object v0
.end method

.method public declared-synchronized a(LkR;LQM;)LVK;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LVL;->a:Lap;

    invoke-direct {p0, p1, p2}, LVL;->a(LkR;LQM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVK;

    .line 163
    if-eqz v0, :cond_19

    invoke-interface {v0}, LVK;->b()Z

    move-result v1

    if-nez v1, :cond_19

    .line 164
    invoke-static {v0}, Lalz;->a(Ljava/io/Closeable;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 165
    const/4 v0, 0x0

    .line 167
    :cond_19
    monitor-exit p0

    return-object v0

    .line 162
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LkR;LQM;LVK;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    monitor-enter p0

    if-eqz p3, :cond_a

    .line 151
    :try_start_3
    iget v0, p0, LVL;->a:I

    if-nez v0, :cond_c

    .line 152
    invoke-static {p3}, Lalz;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 158
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 154
    :cond_c
    :try_start_c
    invoke-direct {p0, p1, p2}, LVL;->a(LkR;LQM;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, LVL;->a:Lap;

    invoke-virtual {v1, v0, p3}, Lap;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-static {v0}, Lalz;->a(Ljava/io/Closeable;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    goto :goto_a

    .line 149
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
