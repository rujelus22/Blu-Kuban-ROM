.class public LXi;
.super Ljava/lang/Object;
.source "AccountCapabilityFactoryImpl.java"

# interfaces
.implements LXh;


# instance fields
.field a:LSw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LXg;

.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LXg;",
            ">;"
        }
    .end annotation
.end field

.field a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LXi;->a:Ljava/util/Map;

    return-void
.end method

.method private a()LXg;
    .registers 5

    .prologue
    .line 89
    iget-object v0, p0, LXi;->a:LXg;

    if-eqz v0, :cond_7

    .line 90
    iget-object v0, p0, LXi;->a:LXg;

    .line 102
    :goto_6
    return-object v0

    .line 92
    :cond_7
    iget-object v0, p0, LXi;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcX;->base_line_account_metadata:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 96
    :try_start_19
    iget-object v1, p0, LXi;->a:LSw;

    invoke-virtual {v1, v0}, LSw;->a(Ljava/io/InputStream;)LSv;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_34
    .catch Lasn; {:try_start_19 .. :try_end_1e} :catch_42

    move-result-object v1

    .line 98
    :try_start_1f
    new-instance v2, LXg;

    invoke-virtual {v1}, LSv;->b()Lase;

    move-result-object v0

    check-cast v0, LSp;

    sget-object v3, LkH;->a:Ljava/util/Date;

    invoke-direct {v2, v0, v3}, LXg;-><init>(LSp;Ljava/util/Date;)V

    iput-object v2, p0, LXi;->a:LXg;

    .line 100
    iget-object v0, p0, LXi;->a:LXg;
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_3d

    .line 102
    :try_start_30
    invoke-virtual {v1}, LSv;->a()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34
    .catch Lasn; {:try_start_30 .. :try_end_33} :catch_42

    goto :goto_6

    .line 104
    :catch_34
    move-exception v0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot parse the standard base line account info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :catchall_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {v1}, LSv;->a()V

    throw v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_34
    .catch Lasn; {:try_start_3e .. :try_end_42} :catch_42

    .line 106
    :catch_42
    move-exception v0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot parse the standard base line account info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)LXg;
    .registers 5
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LXi;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXg;

    .line 64
    if-nez v0, :cond_21

    .line 65
    iget-object v0, p0, LXi;->a:Llu;

    invoke-interface {v0, p1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 66
    iget-object v1, p0, LXi;->a:Llu;

    invoke-interface {v1, v0}, Llu;->a(LkG;)LkH;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, LkH;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    .line 68
    invoke-direct {p0}, LXi;->a()LXg;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_3c

    move-result-object v0

    .line 85
    :cond_21
    :goto_21
    monitor-exit p0

    return-object v0

    .line 72
    :cond_23
    :try_start_23
    iget-object v0, p0, LXi;->a:LSw;

    invoke-virtual {v1}, LkH;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LTt;->a(LSw;Ljava/lang/String;)LSp;

    move-result-object v2

    .line 74
    new-instance v0, LXg;

    invoke-virtual {v1}, LkH;->a()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v2, v1}, LXg;-><init>(LSp;Ljava/util/Date;)V
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_3f
    .catch Lasn; {:try_start_23 .. :try_end_36} :catch_4c

    .line 82
    :goto_36
    :try_start_36
    iget-object v1, p0, LXi;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_21

    .line 63
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :catch_3f
    move-exception v0

    .line 76
    :try_start_40
    const-string v1, "AccountCapabilityFactoryImpl"

    const-string v2, "Error parsing feed"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-direct {p0}, LXi;->a()LXg;

    move-result-object v0

    goto :goto_36

    .line 78
    :catch_4c
    move-exception v0

    .line 79
    const-string v1, "AccountCapabilityFactoryImpl"

    const-string v2, "Error parsing feed"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-direct {p0}, LXi;->a()LXg;
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_3c

    move-result-object v0

    goto :goto_36
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LXi;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
