.class public final Ljcifs/netbios/g;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/net/InetAddress;

.field static final b:Ljcifs/netbios/b;

.field static final c:Ljcifs/netbios/g;

.field static final d:[B

.field static e:Ljcifs/netbios/g;

.field private static final q:Ljcifs/netbios/e;

.field private static final r:I

.field private static s:I

.field private static final t:Ljava/util/HashMap;

.field private static final u:Ljava/util/HashMap;


# instance fields
.field f:Ljcifs/netbios/b;

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:[B

.field p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-wide/16 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string v0, "jcifs.netbios.wins"

    const-string v1, ","

    new-array v2, v3, [Ljava/net/InetAddress;

    invoke-static {v0, v1, v2}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    new-instance v0, Ljcifs/netbios/e;

    invoke-direct {v0}, Ljcifs/netbios/e;-><init>()V

    sput-object v0, Ljcifs/netbios/g;->q:Ljcifs/netbios/e;

    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/netbios/g;->r:I

    sput v3, Ljcifs/netbios/g;->s:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    new-instance v0, Ljcifs/netbios/b;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1, v3, v8}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    new-instance v0, Ljcifs/netbios/g;

    sget-object v1, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    invoke-direct {v0, v1, v3, v3, v3}, Ljcifs/netbios/g;-><init>(Ljcifs/netbios/b;IZI)V

    sput-object v0, Ljcifs/netbios/g;->c:Ljcifs/netbios/g;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_ea

    sput-object v0, Ljcifs/netbios/g;->d:[B

    sget-object v0, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    sget-object v1, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    new-instance v2, Ljcifs/netbios/h;

    sget-object v4, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    sget-object v5, Ljcifs/netbios/g;->c:Ljcifs/netbios/g;

    invoke-direct {v2, v4, v5, v10, v11}, Ljcifs/netbios/h;-><init>(Ljcifs/netbios/b;Ljcifs/netbios/g;J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/netbios/g;->q:Ljcifs/netbios/e;

    iget-object v0, v0, Ljcifs/netbios/e;->a:Ljava/net/InetAddress;

    if-nez v0, :cond_e7

    :try_start_62
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_65
    .catch Ljava/net/UnknownHostException; {:try_start_62 .. :try_end_65} :catch_db

    move-result-object v0

    move-object v2, v0

    :goto_67
    const-string v0, "jcifs.netbios.hostname"

    invoke-static {v0, v8}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b8

    :cond_75
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JCIFS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-static {v1, v9}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b8
    new-instance v1, Ljcifs/netbios/b;

    const-string v4, "jcifs.netbios.scope"

    invoke-static {v4, v8}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Ljcifs/netbios/g;

    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    const/4 v7, 0x1

    sget-object v9, Ljcifs/netbios/g;->d:[B

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-direct/range {v0 .. v9}, Ljcifs/netbios/g;-><init>(Ljcifs/netbios/b;IZIZZZZ[B)V

    sput-object v0, Ljcifs/netbios/g;->e:Ljcifs/netbios/g;

    sget-object v0, Ljcifs/netbios/g;->e:Ljcifs/netbios/g;

    invoke-static {v1, v0, v10, v11}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljcifs/netbios/g;J)V

    return-void

    :catch_db
    move-exception v1

    :try_start_dc
    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_e1
    .catch Ljava/net/UnknownHostException; {:try_start_dc .. :try_end_e1} :catch_e4

    move-result-object v0

    move-object v2, v0

    goto :goto_67

    :catch_e4
    move-exception v1

    move-object v2, v0

    goto :goto_67

    :cond_e7
    move-object v2, v0

    goto/16 :goto_67

    :array_ea
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljcifs/netbios/b;IZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iput p2, p0, Ljcifs/netbios/g;->g:I

    iput-boolean p3, p0, Ljcifs/netbios/g;->i:Z

    iput p4, p0, Ljcifs/netbios/g;->h:I

    return-void
.end method

.method constructor <init>(Ljcifs/netbios/b;IZIZZZZ[B)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iput p2, p0, Ljcifs/netbios/g;->g:I

    iput-boolean p3, p0, Ljcifs/netbios/g;->i:Z

    iput p4, p0, Ljcifs/netbios/g;->h:I

    iput-boolean p5, p0, Ljcifs/netbios/g;->j:Z

    iput-boolean p6, p0, Ljcifs/netbios/g;->k:Z

    iput-boolean p7, p0, Ljcifs/netbios/g;->l:Z

    iput-boolean p8, p0, Ljcifs/netbios/g;->m:Z

    iput-object p9, p0, Ljcifs/netbios/g;->o:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/netbios/g;->n:Z

    return-void
.end method

.method public static a()Ljcifs/netbios/g;
    .registers 1

    sget-object v0, Ljcifs/netbios/g;->e:Ljcifs/netbios/g;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljcifs/netbios/g;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljcifs/netbios/g;->a(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/g;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;
    .registers 14

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    invoke-static {}, Ljcifs/netbios/g;->a()Ljcifs/netbios/g;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    goto :goto_11

    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_2d
    array-length v4, v6

    if-ge v0, v4, :cond_78

    aget-char v4, v6, v0

    if-lt v4, v8, :cond_36

    if-le v4, v9, :cond_40

    :cond_36
    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    goto :goto_11

    :cond_40
    move v5, v4

    move v4, v0

    move v0, v1

    :goto_43
    const/16 v7, 0x2e

    if-eq v5, v7, :cond_5f

    if-lt v5, v8, :cond_4b

    if-le v5, v9, :cond_55

    :cond_4b
    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    goto :goto_11

    :cond_55
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v4, v4, 0x1

    array-length v5, v6

    if-lt v4, v5, :cond_6d

    :cond_5f
    const/16 v5, 0xff

    if-le v0, v5, :cond_70

    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    goto :goto_11

    :cond_6d
    aget-char v5, v6, v4

    goto :goto_43

    :cond_70
    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v4, 0x1

    goto :goto_2d

    :cond_78
    const/4 v0, 0x4

    if-ne v2, v0, :cond_83

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    :cond_83
    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/netbios/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, p3}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v0

    goto :goto_11

    :cond_8d
    new-instance v0, Ljcifs/netbios/g;

    sget-object v2, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    invoke-direct {v0, v2, v3, v1, v1}, Ljcifs/netbios/g;-><init>(Ljcifs/netbios/b;IZI)V

    goto/16 :goto_11
.end method

.method static a(Ljcifs/netbios/b;)Ljcifs/netbios/g;
    .registers 8

    const/4 v1, 0x0

    sget v0, Ljcifs/netbios/g;->r:I

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    sget-object v2, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_a
    sget-object v0, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/h;

    if-eqz v0, :cond_27

    iget-wide v3, v0, Ljcifs/netbios/h;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_27

    iget-wide v3, v0, Ljcifs/netbios/h;->c:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_27

    move-object v0, v1

    :cond_27
    if-eqz v0, :cond_30

    iget-object v0, v0, Ljcifs/netbios/h;->b:Ljcifs/netbios/g;

    :goto_2b
    monitor-exit v2

    goto :goto_6

    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    move-object v0, v1

    goto :goto_2b
.end method

.method static a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;
    .registers 4

    iget v0, p0, Ljcifs/netbios/b;->d:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_c

    sget-object v0, Ljcifs/netbios/g;->q:Ljcifs/netbios/e;

    iget-object p1, v0, Ljcifs/netbios/e;->b:Ljava/net/InetAddress;

    :cond_c
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    :goto_12
    iput v0, p0, Ljcifs/netbios/b;->e:I

    invoke-static {p0}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;)Ljcifs/netbios/g;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Ljcifs/netbios/g;->b(Ljcifs/netbios/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/g;

    if-nez v0, :cond_2e

    :try_start_22
    sget-object v1, Ljcifs/netbios/g;->q:Ljcifs/netbios/e;

    invoke-virtual {v1, p0, p1}, Ljcifs/netbios/e;->a(Ljcifs/netbios/b;Ljava/net/InetAddress;)Ljcifs/netbios/g;
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_48
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_27} :catch_3e

    move-result-object v0

    invoke-static {p0, v0}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljcifs/netbios/g;)V

    invoke-static {p0}, Ljcifs/netbios/g;->c(Ljcifs/netbios/b;)V

    :cond_2e
    :goto_2e
    sget-object v1, Ljcifs/netbios/g;->c:Ljcifs/netbios/g;

    if-ne v0, v1, :cond_50

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p0}, Ljcifs/netbios/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_12

    :catch_3e
    move-exception v1

    :try_start_3f
    sget-object v0, Ljcifs/netbios/g;->c:Ljcifs/netbios/g;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_48

    invoke-static {p0, v0}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljcifs/netbios/g;)V

    invoke-static {p0}, Ljcifs/netbios/g;->c(Ljcifs/netbios/b;)V

    goto :goto_2e

    :catchall_48
    move-exception v1

    invoke-static {p0, v0}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljcifs/netbios/g;)V

    invoke-static {p0}, Ljcifs/netbios/g;->c(Ljcifs/netbios/b;)V

    throw v1

    :cond_50
    return-object v0
.end method

.method static a(Ljcifs/netbios/b;Ljcifs/netbios/g;)V
    .registers 6

    sget v0, Ljcifs/netbios/g;->r:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-wide/16 v0, -0x1

    sget v2, Ljcifs/netbios/g;->r:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/netbios/g;->r:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_16
    invoke-static {p0, p1, v0, v1}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;Ljcifs/netbios/g;J)V

    goto :goto_4
.end method

.method static a(Ljcifs/netbios/b;Ljcifs/netbios/g;J)V
    .registers 7

    sget v0, Ljcifs/netbios/g;->r:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v1, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8
    sget-object v0, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/h;

    if-nez v0, :cond_21

    new-instance v0, Ljcifs/netbios/h;

    invoke-direct {v0, p0, p1, p2, p3}, Ljcifs/netbios/h;-><init>(Ljcifs/netbios/b;Ljcifs/netbios/g;J)V

    sget-object v2, Ljcifs/netbios/g;->t:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    monitor-exit v1

    goto :goto_4

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    iput-object p1, v0, Ljcifs/netbios/h;->b:Ljcifs/netbios/g;

    iput-wide p2, v0, Ljcifs/netbios/h;->c:J
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_1e

    goto :goto_1c
.end method

.method public static a(Ljava/net/InetAddress;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eqz p0, :cond_18

    sget-object v2, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    invoke-virtual {p0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    sget-object v3, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_19

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static b(Ljcifs/netbios/b;)Ljava/lang/Object;
    .registers 4

    sget-object v1, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    monitor-exit v1

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    :goto_13
    sget-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_37

    move-result v0

    if-eqz v0, :cond_23

    :try_start_1b
    sget-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_37
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_13

    :catch_21
    move-exception v0

    goto :goto_13

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_37

    invoke-static {p0}, Ljcifs/netbios/g;->a(Ljcifs/netbios/b;)Ljcifs/netbios/g;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v1, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2d
    sget-object v2, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_12

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static b()Ljcifs/netbios/b;
    .registers 1

    sget-object v0, Ljcifs/netbios/g;->e:Ljcifs/netbios/g;

    iget-object v0, v0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    return-object v0
.end method

.method public static c()Ljava/net/InetAddress;
    .registers 2

    sget-object v0, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/g;->s:I

    aget-object v0, v0, v1

    goto :goto_6
.end method

.method private static c(Ljcifs/netbios/b;)V
    .registers 3

    sget-object v1, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/netbios/g;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method static d()Ljava/net/InetAddress;
    .registers 2

    sget v0, Ljcifs/netbios/g;->s:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    sget v0, Ljcifs/netbios/g;->s:I

    add-int/lit8 v0, v0, 0x1

    :goto_d
    sput v0, Ljcifs/netbios/g;->s:I

    sget-object v0, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_d

    :cond_18
    sget-object v0, Ljcifs/netbios/g;->a:[Ljava/net/InetAddress;

    sget v1, Ljcifs/netbios/g;->s:I

    aget-object v0, v0, v1

    goto :goto_15
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v1, v1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v1, v0

    :goto_20
    if-ge v1, v3, :cond_35

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v4, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_35

    if-ne v2, v3, :cond_38

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    :cond_35
    :goto_35
    iget-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    return-object v0

    :cond_38
    if-ge v2, v3, :cond_52

    aget-char v1, v4, v2

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_52

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, 0x1

    goto :goto_20

    :cond_45
    iget-object v0, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget v0, v0, Ljcifs/netbios/b;->d:I

    packed-switch v0, :pswitch_data_54

    goto :goto_35

    :pswitch_4d
    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    goto :goto_35

    :cond_52
    move v1, v2

    goto :goto_20

    :pswitch_data_54
    .packed-switch 0x1b
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_10

    instance-of v0, p1, Ljcifs/netbios/g;

    if-eqz v0, :cond_10

    check-cast p1, Ljcifs/netbios/g;

    iget v0, p1, Ljcifs/netbios/g;->g:I

    iget v1, p0, Ljcifs/netbios/g;->g:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public f()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v2, v2, Ljcifs/netbios/b;->b:Ljava/lang/String;

    if-ne v1, v2, :cond_10

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    :cond_d
    :goto_d
    iget-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    const-string v2, "*SMBSERVER     "

    if-ne v1, v2, :cond_4c

    :try_start_16
    sget-object v1, Ljcifs/netbios/g;->q:Ljcifs/netbios/e;

    invoke-virtual {v1, p0}, Ljcifs/netbios/e;->a(Ljcifs/netbios/g;)[Ljcifs/netbios/g;

    move-result-object v2

    iget-object v1, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget v1, v1, Ljcifs/netbios/b;->d:I

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x0

    :goto_25
    array-length v3, v2

    if-ge v1, v3, :cond_f

    aget-object v3, v2, v1

    iget-object v3, v3, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget v3, v3, Ljcifs/netbios/b;->d:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_39

    aget-object v1, v2, v1

    iget-object v1, v1, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v0, v1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    goto :goto_f

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3c
    iget-boolean v1, p0, Ljcifs/netbios/g;->n:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v0, v1, Ljcifs/netbios/b;->b:Ljava/lang/String;
    :try_end_47
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_47} :catch_48

    goto :goto_f

    :catch_48
    move-exception v1

    iput-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    goto :goto_d

    :cond_4c
    iput-object v0, p0, Ljcifs/netbios/g;->p:Ljava/lang/String;

    goto :goto_d
.end method

.method public g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    sget-object v1, Ljcifs/netbios/g;->b:Ljcifs/netbios/b;

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Ljcifs/netbios/g;->i()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget-object v0, v0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    goto :goto_a
.end method

.method public h()Ljava/net/InetAddress;
    .registers 2

    invoke-virtual {p0}, Ljcifs/netbios/g;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ljcifs/netbios/g;->g:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljcifs/netbios/g;->g:I

    ushr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/g;->g:I

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/g;->g:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/netbios/g;->g:I

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .registers 2

    iget-object v0, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    iget v0, v0, Ljcifs/netbios/b;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/netbios/g;->f:Ljcifs/netbios/b;

    invoke-virtual {v1}, Ljcifs/netbios/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/netbios/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
