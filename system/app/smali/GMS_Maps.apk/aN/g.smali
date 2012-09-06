.class public Lan/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/google/googlenav/common/io/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lan/g;->a:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    sput-object v0, Lan/g;->b:Lcom/google/googlenav/common/io/j;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    const-class v1, Lan/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lan/g;->a:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 38
    sget-object v0, Lan/g;->b:Lcom/google/googlenav/common/io/j;

    const-string v2, "GlsPlatformKey"

    invoke-interface {v0, v2}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1c

    .line 40
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lan/g;->a:Ljava/lang/String;

    .line 46
    :cond_18
    :goto_18
    sget-object v0, Lan/g;->a:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_21

    monitor-exit v1

    return-object v0

    .line 43
    :cond_1c
    :try_start_1c
    const-string v0, ""

    sput-object v0, Lan/g;->a:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_21

    goto :goto_18

    .line 36
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 50
    const-class v1, Lan/g;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lan/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_26

    move-result v0

    if-eqz v0, :cond_13

    .line 58
    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    .line 55
    :cond_13
    :try_start_13
    sget-object v0, Lan/g;->b:Lcom/google/googlenav/common/io/j;

    const-string v2, "GlsPlatformKey"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 56
    sget-object v0, Lan/g;->b:Lcom/google/googlenav/common/io/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 57
    sput-object p0, Lan/g;->a:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_11

    .line 50
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
