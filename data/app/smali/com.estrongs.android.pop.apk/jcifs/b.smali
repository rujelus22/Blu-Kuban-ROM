.class public Ljcifs/b;
.super Ljava/lang/Object;


# static fields
.field private static c:[I

.field private static d:Ljava/net/InetAddress;

.field private static e:Ljcifs/util/e;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v5, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/b;->e:Ljcifs/util/e;

    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v3

    :try_start_15
    const-string v2, "jcifs.netbios.baddr"

    const-string v4, "255.255.255.255"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v2, v4}, Ljcifs/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, Ljcifs/b;->d:Ljava/net/InetAddress;
    :try_end_23
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_23} :catch_dd

    :goto_23
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_53

    :cond_2b
    if-nez v3, :cond_3e

    new-array v0, v11, [I

    sput-object v0, Ljcifs/b;->c:[I

    sget-object v0, Ljcifs/b;->c:[I

    aput v11, v0, v1

    sget-object v0, Ljcifs/b;->c:[I

    aput v10, v0, v9

    sget-object v0, Ljcifs/b;->c:[I

    aput v9, v0, v10

    :goto_3d
    return-void

    :cond_3e
    new-array v0, v5, [I

    sput-object v0, Ljcifs/b;->c:[I

    sget-object v0, Ljcifs/b;->c:[I

    aput v11, v0, v1

    sget-object v0, Ljcifs/b;->c:[I

    aput v1, v0, v9

    sget-object v0, Ljcifs/b;->c:[I

    aput v10, v0, v10

    sget-object v0, Ljcifs/b;->c:[I

    aput v9, v0, v11

    goto :goto_3d

    :cond_53
    new-array v4, v5, [I

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v5, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_5d
    :goto_5d
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, "LMHOSTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    add-int/lit8 v2, v0, 0x1

    aput v11, v4, v0

    move v0, v2

    goto :goto_5d

    :cond_79
    const-string v6, "WINS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    if-nez v3, :cond_91

    sget-object v2, Ljcifs/b;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-le v2, v9, :cond_5d

    sget-object v2, Ljcifs/b;->e:Ljcifs/util/e;

    const-string v6, "UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v2, v6}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    goto :goto_5d

    :cond_91
    add-int/lit8 v2, v0, 0x1

    aput v1, v4, v0

    move v0, v2

    goto :goto_5d

    :cond_97
    const-string v6, "BCAST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    add-int/lit8 v2, v0, 0x1

    aput v9, v4, v0

    move v0, v2

    goto :goto_5d

    :cond_a5
    const-string v6, "DNS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b3

    add-int/lit8 v2, v0, 0x1

    aput v10, v4, v0

    move v0, v2

    goto :goto_5d

    :cond_b3
    sget-object v6, Ljcifs/b;->e:Ljcifs/util/e;

    sget v6, Ljcifs/util/e;->a:I

    if-le v6, v9, :cond_5d

    sget-object v6, Ljcifs/b;->e:Ljcifs/util/e;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown resolver method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    goto :goto_5d

    :cond_d2
    new-array v2, v0, [I

    sput-object v2, Ljcifs/b;->c:[I

    sget-object v2, Ljcifs/b;->c:[I

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3d

    :catch_dd
    move-exception v2

    goto/16 :goto_23
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iput-object p1, p0, Ljcifs/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljcifs/b;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljcifs/b;->a(Ljava/lang/String;Z)Ljcifs/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljcifs/b;
    .registers 4

    invoke-static {p0, p1}, Ljcifs/b;->b(Ljava/lang/String;Z)[Ljcifs/b;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;
    .registers 14

    const/4 v4, 0x0

    const/4 v11, 0x1

    new-instance v1, Ljcifs/d;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljcifs/d;-><init>(I)V

    invoke-static {p1}, Ljcifs/netbios/g;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v3, 0x1b

    :goto_10
    new-instance v0, Ljcifs/c;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/c;-><init>(Ljcifs/d;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    new-instance v5, Ljcifs/c;

    const/16 v8, 0x20

    move-object v6, v1

    move-object v7, p0

    move-object v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Ljcifs/c;-><init>(Ljcifs/d;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    invoke-virtual {v0, v11}, Ljcifs/c;->setDaemon(Z)V

    invoke-virtual {v5, v11}, Ljcifs/c;->setDaemon(Z)V

    :try_start_28
    monitor-enter v1
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_29} :catch_42

    :try_start_29
    invoke-virtual {v0}, Ljcifs/c;->start()V

    invoke-virtual {v5}, Ljcifs/c;->start()V

    :goto_2f
    iget v2, v1, Ljcifs/d;->a:I

    if-lez v2, :cond_4c

    iget-object v2, v0, Ljcifs/c;->e:Ljcifs/netbios/g;

    if-nez v2, :cond_4c

    iget-object v2, v5, Ljcifs/c;->e:Ljcifs/netbios/g;

    if-nez v2, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2f

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v0
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_42} :catch_42

    :catch_42
    move-exception v0

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v3, 0x1d

    goto :goto_10

    :cond_4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_3f

    iget-object v1, v0, Ljcifs/c;->e:Ljcifs/netbios/g;

    if-eqz v1, :cond_54

    iget-object v0, v0, Ljcifs/c;->e:Ljcifs/netbios/g;

    :goto_53
    return-object v0

    :cond_54
    iget-object v1, v5, Ljcifs/c;->e:Ljcifs/netbios/g;

    if-eqz v1, :cond_5b

    iget-object v0, v5, Ljcifs/c;->e:Ljcifs/netbios/g;

    goto :goto_53

    :cond_5b
    iget-object v0, v0, Ljcifs/c;->g:Ljava/net/UnknownHostException;

    throw v0
.end method

.method static b(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_15
    if-ge v2, v4, :cond_27

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v5, v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_27

    if-ne v3, v4, :cond_28

    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    const/4 v0, 0x1

    :cond_27
    return v0

    :cond_28
    if-ge v3, v4, :cond_35

    aget-char v2, v5, v3

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_35

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v3, 0x1

    goto :goto_15

    :cond_35
    move v2, v3

    goto :goto_15
.end method

.method public static b(Ljava/lang/String;Z)[Ljcifs/b;
    .registers 10

    const/16 v7, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    :cond_12
    invoke-static {p0}, Ljcifs/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-array v0, v2, [Ljcifs/b;

    new-instance v2, Ljcifs/b;

    invoke-static {p0}, Ljcifs/netbios/g;->a(Ljava/lang/String;)Ljcifs/netbios/g;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/b;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    :goto_25
    return-object v0

    :cond_26
    move v0, v1

    :goto_27
    sget-object v2, Ljcifs/b;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b5

    :try_start_2c
    sget-object v2, Ljcifs/b;->c:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_bc

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_39
    move-exception v2

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :pswitch_3d
    invoke-static {p0}, Ljcifs/netbios/a;->a(Ljava/lang/String;)Ljcifs/netbios/g;

    move-result-object v2

    if-eqz v2, :cond_3a

    move-object v3, v2

    :goto_44
    const/4 v2, 0x1

    new-array v2, v2, [Ljcifs/b;

    const/4 v4, 0x0

    new-instance v5, Ljcifs/b;

    invoke-direct {v5, v3}, Ljcifs/b;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v4

    move-object v0, v2

    goto :goto_25

    :pswitch_51
    const-string v2, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq p0, v2, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_3a

    if-eqz p1, :cond_67

    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p0, v2}, Ljcifs/b;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_44

    :cond_67
    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {}, Ljcifs/netbios/g;->c()Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Ljcifs/netbios/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_44

    :pswitch_74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_3a

    if-eqz p1, :cond_84

    sget-object v2, Ljcifs/b;->d:Ljava/net/InetAddress;

    invoke-static {p0, v2}, Ljcifs/b;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_44

    :cond_84
    const/16 v2, 0x20

    const/4 v3, 0x0

    sget-object v4, Ljcifs/b;->d:Ljava/net/InetAddress;

    invoke-static {p0, v2, v3, v4}, Ljcifs/netbios/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/g;

    move-result-object v2

    move-object v3, v2

    goto :goto_44

    :pswitch_8f
    invoke-static {p0}, Ljcifs/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9b
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v2, v4

    new-array v2, v2, [Ljcifs/b;

    move v3, v1

    :goto_a3
    array-length v5, v4

    if-ge v3, v5, :cond_b2

    new-instance v5, Ljcifs/b;

    aget-object v6, v4, v3

    invoke-direct {v5, v6}, Ljcifs/b;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v3
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_af} :catch_39

    add-int/lit8 v3, v3, 0x1

    goto :goto_a3

    :cond_b2
    move-object v0, v2

    goto/16 :goto_25

    :cond_b5
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_51
        :pswitch_74
        :pswitch_8f
        :pswitch_3d
    .end packed-switch
.end method

.method static c(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    :goto_12
    return v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    const/16 v2, 0xf

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljcifs/netbios/g;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljcifs/netbios/g;

    invoke-virtual {v0}, Ljcifs/netbios/g;->e()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    :goto_27
    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    goto :goto_10

    :cond_2a
    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_45

    if-ge v0, v2, :cond_45

    iget-object v1, p0, Ljcifs/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    goto :goto_27

    :cond_45
    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_52

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    goto :goto_27

    :cond_52
    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    goto :goto_27
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljcifs/netbios/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljcifs/netbios/g;

    invoke-virtual {v0}, Ljcifs/netbios/g;->f()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    const-string v1, "*SMBSERVER     "

    if-eq v0, v1, :cond_1c

    const-string v0, "*SMBSERVER     "

    iput-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/b;->b:Ljava/lang/String;

    goto :goto_e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljcifs/netbios/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljcifs/netbios/g;

    invoke-virtual {v0}, Ljcifs/netbios/g;->g()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljcifs/netbios/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljcifs/netbios/g;

    invoke-virtual {v0}, Ljcifs/netbios/g;->i()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljcifs/b;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    check-cast p1, Ljcifs/b;

    iget-object v1, p1, Ljcifs/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
