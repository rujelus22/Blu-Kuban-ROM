.class public Lab/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:LK/bp;

.field private static final b:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, LK/bq;

    invoke-direct {v0}, LK/bq;-><init>()V

    const-string v1, "Web"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "gmm-android-google"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "gmm-android-verizon"

    const-string v2, "gmm-android-verizon"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "gmm-android-tmobile-us"

    const-string v2, "gmm-android-tmobile-us"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "gmm-android-sprint-us"

    const-string v2, "gmm-android-sprint-us"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "gmm-android-sonyericsson"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const-string v1, "gmm-android-motorola"

    const-string v2, "gmm-google"

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    invoke-virtual {v0}, LK/bq;->a()LK/bp;

    move-result-object v0

    sput-object v0, Lab/d;->a:LK/bp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    sput-object v2, Lab/d;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .registers 1

    invoke-static {}, Lab/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lab/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPT_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lab/d;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lab/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lab/d;->c()V

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    sget-object v0, Lab/d;->a:LK/bp;

    invoke-static {}, Laf/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ca-mb-app-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lab/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lab/d;->g()Ljava/lang/String;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-static {}, Lab/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static c()V
    .registers 2

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-static {}, Lab/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "ContentAdCookie"

    invoke-static {p0}, Lab/d;->d(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lab/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPT_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method

.method private static d(Ljava/lang/String;)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    :goto_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v1

    goto :goto_d
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->Q()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/adprefs?ck="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lab/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "ContentAdCookie"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {}, Lab/d;->g()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    :try_start_15
    invoke-static {v0}, Lab/d;->a([B)Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_14

    :catch_1a
    move-exception v0

    const-string v1, "ContentAds"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lab/d;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private static g()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lab/d;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lab/d;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private static h()J
    .registers 2

    sget-object v0, Lab/d;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
