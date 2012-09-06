.class public Ll/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/e;
.implements Lr/ae;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ll/e;

.field private d:Ll/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ll/t;->b:Ljava/lang/String;

    .line 51
    new-instance v0, Ll/u;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ll/u;-><init>(Ll/t;LY/c;)V

    invoke-virtual {v0}, Ll/u;->g()V

    .line 57
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_f

    .line 110
    iget-object v1, p0, Ll/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lr/af;->a(Ljava/lang/String;Lr/ae;)Lr/ac;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Ll/t;->a(Lr/ac;)V

    .line 113
    :cond_f
    return-void
.end method

.method static synthetic a(Ll/t;)V
    .registers 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ll/t;->a()V

    return-void
.end method

.method private static b(Lr/ac;)Ll/e;
    .registers 5
    .parameter

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lr/ac;->e()[B

    move-result-object v0

    .line 67
    if-eqz v0, :cond_28

    array-length v2, v0

    if-lez v2, :cond_28

    .line 69
    :try_start_a
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 70
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Ll/j;->a(Ljava/io/Reader;)Ll/j;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_22

    move-result-object v0

    .line 78
    :goto_1a
    if-nez v0, :cond_21

    .line 79
    new-instance v0, Ll/v;

    invoke-direct {v0}, Ll/v;-><init>()V

    .line 94
    :cond_21
    return-object v0

    .line 73
    :catch_22
    move-exception v0

    .line 74
    const-string v2, "ResourceBasedBuildingBoundProvider"

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    move-object v0, v1

    goto :goto_1a
.end method


# virtual methods
.method public declared-synchronized a(Ln/am;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ll/t;->c:Ll/e;

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Ll/t;->c:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ln/am;)Ljava/util/Collection;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result-object v0

    .line 121
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    sget-object v0, Ll/t;->a:Ljava/util/Collection;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    .line 117
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ll/f;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ll/t;->d:Ll/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lr/ac;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    if-nez p1, :cond_3

    .line 160
    :goto_2
    return-void

    .line 143
    :cond_3
    monitor-enter p1

    .line 144
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_c

    .line 145
    :try_start_5
    iget-object v0, p0, Ll/t;->c:Ll/e;

    if-eqz v0, :cond_f

    .line 146
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_29

    :try_start_a
    monitor-exit p1

    goto :goto_2

    .line 159
    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw v0

    .line 148
    :cond_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_29

    .line 150
    :try_start_10
    invoke-virtual {p1}, Lr/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 151
    invoke-static {p1}, Ll/t;->b(Lr/ac;)Ll/e;

    move-result-object v0

    .line 152
    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_c

    .line 153
    :try_start_1b
    iput-object v0, p0, Ll/t;->c:Ll/e;

    .line 154
    iget-object v0, p0, Ll/t;->d:Ll/f;

    if-eqz v0, :cond_26

    .line 155
    iget-object v0, p0, Ll/t;->d:Ll/f;

    invoke-interface {v0}, Ll/f;->a()V

    .line 157
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2c

    .line 159
    :cond_27
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_c

    goto :goto_2

    .line 148
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_c

    .line 157
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_c
.end method

.method public declared-synchronized a(Ln/m;)Z
    .registers 3
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ll/t;->c:Ll/e;

    if-eqz v0, :cond_d

    .line 127
    iget-object v0, p0, Ll/t;->c:Ll/e;

    invoke-interface {v0, p1}, Ll/e;->a(Ln/m;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 129
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 126
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
