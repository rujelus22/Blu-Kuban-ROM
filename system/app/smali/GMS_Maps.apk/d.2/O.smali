.class public Ld/O;
.super Ljava/lang/Object;

# interfaces
.implements Lbw/n;


# static fields
.field private static final a:Lbv/k;


# instance fields
.field private final b:Lh/a;

.field private final c:Lm/c;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbv/k;

    invoke-direct {v0}, Lbv/k;-><init>()V

    sput-object v0, Ld/O;->a:Lbv/k;

    sget-object v0, Ld/O;->a:Lbv/k;

    const-string v1, "https://www.google.com/loc/m/api"

    invoke-virtual {v0, v1}, Lbv/k;->a(Ljava/lang/String;)V

    sget-object v0, Ld/O;->a:Lbv/k;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lbv/k;->b(Ljava/lang/String;)V

    sget-object v0, Ld/O;->a:Lbv/k;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lbv/k;->c(Ljava/lang/String;)V

    sget-object v0, Ld/O;->a:Lbv/k;

    sget-object v1, Ld/U;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbv/k;->d(Ljava/lang/String;)V

    sget-object v0, Ld/O;->a:Lbv/k;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lbv/k;->e(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ld/O;->a:Lbv/k;

    invoke-static {p1, v0}, Lh/a;->a(Landroid/content/Context;Lbv/k;)V

    invoke-static {}, Lh/a;->a()Lh/a;

    move-result-object v0

    iput-object v0, p0, Ld/O;->b:Lh/a;

    invoke-static {p2}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/O;->c:Lm/c;

    invoke-static {}, Ld/ax;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/O;->d:Ljava/util/Map;

    invoke-static {}, Ld/ax;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/O;->e:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;LW/a;)Lbw/m;
    .registers 6

    :try_start_0
    invoke-virtual {p2}, LW/a;->e()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v0

    new-instance v1, Ld/R;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ld/R;-><init>(Ljava/lang/String;I[B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lbw/m;->b(I)V

    invoke-virtual {v1, p0}, Lbw/m;->a(Lbw/n;)V

    return-object v1

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(LW/a;Ljava/lang/String;)Ld/ak;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_d

    new-instance v1, Ld/ak;

    const/4 v2, 0x0

    check-cast v0, LW/a;

    invoke-direct {v1, v2, v0, p2}, Ld/ak;-><init>(ZLW/a;Ljava/lang/String;)V

    move-object v0, v1

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ld/ak;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, v0}, Ld/ak;-><init>(ZLW/a;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_c
.end method

.method private a(Lbw/m;LW/a;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Ld/O;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/P;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p2, p3}, Ld/P;->a(LW/a;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Ld/O;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ld/s;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Ld/O;->a(LW/a;Ljava/lang/String;)Ld/ak;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ld/s;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method


# virtual methods
.method public a(Lbw/m;Lbw/o;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    :try_start_3
    invoke-virtual {p2}, Lbw/o;->g()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server error, RC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lbw/o;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_3e

    move-result-object v1

    :goto_22
    invoke-direct {p0, p1, v0, v1}, Ld/O;->a(Lbw/m;LW/a;Ljava/lang/String;)V

    return-void

    :cond_26
    :try_start_26
    invoke-virtual {p2}, Lbw/o;->b_()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_33
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_4e

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3d} :catch_3e

    goto :goto_33

    :catch_3e
    move-exception v1

    const-string v2, "Failed to read data from MASF: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v1, LW/a;

    sget-object v3, Lk/a;->D:LW/d;

    invoke-direct {v1, v3}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v2}, LW/a;->a([B)LW/a;

    invoke-virtual {v1}, LW/a;->c()Z

    move-result v2

    if-nez v2, :cond_6a

    new-instance v1, Ljava/io/IOException;

    const-string v2, "isValid returned after parsing reply"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6a
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LW/a;->c(I)I

    move-result v2

    if-eqz v2, :cond_87

    const-string v2, "GLS error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, LW/a;->c(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_85} :catch_3e

    move-result-object v1

    goto :goto_22

    :cond_87
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_22
.end method

.method public a(Lbw/m;Ljava/lang/Exception;)V
    .registers 7

    const-string v0, "Failed to send data to MASF: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ld/O;->a(Lbw/m;LW/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(LW/a;Ld/s;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Ld/O;->b:Lh/a;

    if-nez v2, :cond_7

    :goto_6
    return v0

    :cond_7
    const-string v2, "g:loc/uil"

    invoke-direct {p0, v2, p1}, Ld/O;->a(Ljava/lang/String;LW/a;)Lbw/m;

    move-result-object v2

    if-eqz p2, :cond_2a

    iget-object v3, p0, Ld/O;->e:Ljava/util/Map;

    monitor-enter v3

    :try_start_12
    iget-object v4, p0, Ld/O;->e:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    move v0, v1

    :cond_1b
    const-string v4, "Duplicated request."

    invoke-static {v0, v4}, Ld/ax;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/O;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_31

    :cond_2a
    iget-object v0, p0, Ld/O;->b:Lh/a;

    invoke-virtual {v0, v2, v1}, Lh/a;->a(Lbw/m;Z)V

    move v0, v1

    goto :goto_6

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method
