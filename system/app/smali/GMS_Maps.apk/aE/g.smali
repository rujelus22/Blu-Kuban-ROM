.class public LaE/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lak/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, LaE/g;->a:Ljava/lang/String;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    sput-object v0, LaE/g;->b:Lak/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    const-class v1, LaE/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, LaE/g;->a:Ljava/lang/String;

    if-nez v0, :cond_18

    sget-object v0, LaE/g;->b:Lak/m;

    const-string v2, "GlsPlatformKey"

    invoke-interface {v0, v2}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v2, LaE/g;->a:Ljava/lang/String;

    :cond_18
    :goto_18
    sget-object v0, LaE/g;->a:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_21

    monitor-exit v1

    return-object v0

    :cond_1c
    :try_start_1c
    const-string v0, ""

    sput-object v0, LaE/g;->a:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_21

    goto :goto_18

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 5

    const-class v1, LaE/g;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, LaE/g;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_26

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    :cond_13
    :try_start_13
    sget-object v0, LaE/g;->b:Lak/m;

    const-string v2, "GlsPlatformKey"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lak/m;->a(Ljava/lang/String;[B)Z

    sget-object v0, LaE/g;->b:Lak/m;

    invoke-interface {v0}, Lak/m;->a()V

    sput-object p0, LaE/g;->a:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_11

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
