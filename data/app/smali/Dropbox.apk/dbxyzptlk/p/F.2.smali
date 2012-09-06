.class public final Ldbxyzptlk/p/F;
.super Ldbxyzptlk/o/a;
.source "panda.py"


# instance fields
.field private final a:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 28
    new-instance v0, Ldbxyzptlk/o/l;

    const/4 v1, 0x1

    invoke-static {v1}, Ldbxyzptlk/p/F;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ldbxyzptlk/p/F;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/o/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ldbxyzptlk/o/n;->a:Ldbxyzptlk/o/n;

    invoke-direct {p0, v0, v1}, Ldbxyzptlk/o/a;-><init>(Ldbxyzptlk/o/l;Ldbxyzptlk/o/n;)V

    .line 29
    invoke-static {p1}, Lcom/dropbox/android/util/aq;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/F;->a:Ljava/util/Locale;

    .line 30
    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/o/k;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Ldbxyzptlk/o/l;

    const/4 v1, 0x1

    invoke-static {v1}, Ldbxyzptlk/p/F;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ldbxyzptlk/p/F;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/o/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ldbxyzptlk/o/n;->a:Ldbxyzptlk/o/n;

    invoke-direct {p0, v0, v1, p1}, Ldbxyzptlk/o/a;-><init>(Ldbxyzptlk/o/l;Ldbxyzptlk/o/n;Ldbxyzptlk/o/k;)V

    .line 34
    invoke-static {p2}, Lcom/dropbox/android/util/aq;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/F;->a:Ljava/util/Locale;

    .line 35
    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/o/l;Landroid/content/Context;Ldbxyzptlk/o/k;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    sget-object v0, Ldbxyzptlk/o/n;->a:Ldbxyzptlk/o/n;

    invoke-direct {p0, p1, v0, p3}, Ldbxyzptlk/o/a;-><init>(Ldbxyzptlk/o/l;Ldbxyzptlk/o/n;Ldbxyzptlk/o/k;)V

    .line 39
    invoke-static {p2}, Lcom/dropbox/android/util/aq;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/F;->a:Ljava/util/Locale;

    .line 40
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/16 v8, 0x1a

    const/16 v4, 0xf

    const/4 v1, 0x0

    .line 55
    const-string v0, "vlwr70ohoptcb6x9n71kd0ghf15ijzk68u6zew0amx3p3yld4odold5v8w8d06e28mleivtzq9nxspdzm004jnsdrb4r4noqudhbmmdm7lrxj1isl2rb1pqjg0i155zz8mbxsm0tcgd5hstwg028i4qatlvu4eonj8kf3gj29t39r5qeiso54e251h1r23ss25q6k2p90j3d4jfh5nrrfu80k3nkok7702vyzhb321xjtfanahyq2xnfkfn1h29ex0amds3zljmiii1atl6megqwshdumm95iqprqy2wqn63ir04hsjy71enazu5sunk26yepl600kftr3kt9zlbtbk3xbj090dme04fqwyzvdq19l94hk4sv7dgl5vd410tbbqhtk222731eaamkgs76os4eubd2su0bblx9p4mkz8s67w40r6wpt78vrm538fcab717l6fevhy32eftog1ykssm2sh0nmt3qr6x5vr1q96fkmg3fajf0lc0f5r3da1bb5mkon7a8a753jgij61vgpc33jed0i0jpeo2vgo3ter52zr4a134ppj8kh0hftxz8qeoaka2lr18i7btkhetnrpgaaxzf2aey9l1jwshtn3pm6l4csti60v71p5opkiafv2b3d0wvi1ikjer6llz7f8s10sk870ugunwgil0xdsth5cunt01xi4ygdwiooello96j46kdeuuvbzcrvc4fkyiqaumluwvd25977b1lxykubl3rfjs1744effxtun139li26uwz9j2ulaidymmsh8ko6pc1wapgpescm1vumbixkyouv81sgy0djdrtj85r0avdkza2cowmgcqin02t3qqahaupxihuqd3a3kb91v2fr1qmxskvt9ghgpbje9tcxat23htblookisjtr43vjs7tenfjapnlh23whwms5jnwgfy49csvpprxhxro5n0cwq19rcyhsnxmyaf9x0kpx3yju0fo9ufgrbjmbubghbzhhunea1lkrr3cyyq4ku"

    .line 57
    const/4 v0, 0x3

    new-array v3, v0, [[I

    new-array v0, v4, [I

    fill-array-data v0, :array_90

    aput-object v0, v3, v1

    const/4 v0, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_b2

    aput-object v2, v3, v0

    const/4 v0, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_d4

    aput-object v2, v3, v0

    .line 62
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    aget-object v0, v3, v1

    const/4 v2, 0x5

    aget v5, v0, v2

    .line 64
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    .line 65
    :goto_31
    const/16 v0, 0x24

    if-ge v2, v0, :cond_6c

    .line 66
    if-ge v2, v8, :cond_5a

    add-int/lit8 v0, v2, 0x61

    int-to-char v0, v0

    :goto_3a
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    sub-int v0, v2, v5

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v0, v0, 0x24

    if-ge v0, v8, :cond_60

    sub-int v0, v2, v5

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    :goto_4f
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    .line 66
    :cond_5a
    add-int/lit8 v0, v2, -0x1a

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_3a

    :cond_60
    sub-int v0, v2, v5

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x1a

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_4f

    :cond_6c
    move v0, v1

    .line 69
    :goto_6d
    aget-object v1, v3, p0

    array-length v1, v1

    if-ge v0, v1, :cond_8a

    .line 70
    const-string v1, "vlwr70ohoptcb6x9n71kd0ghf15ijzk68u6zew0amx3p3yld4odold5v8w8d06e28mleivtzq9nxspdzm004jnsdrb4r4noqudhbmmdm7lrxj1isl2rb1pqjg0i155zz8mbxsm0tcgd5hstwg028i4qatlvu4eonj8kf3gj29t39r5qeiso54e251h1r23ss25q6k2p90j3d4jfh5nrrfu80k3nkok7702vyzhb321xjtfanahyq2xnfkfn1h29ex0amds3zljmiii1atl6megqwshdumm95iqprqy2wqn63ir04hsjy71enazu5sunk26yepl600kftr3kt9zlbtbk3xbj090dme04fqwyzvdq19l94hk4sv7dgl5vd410tbbqhtk222731eaamkgs76os4eubd2su0bblx9p4mkz8s67w40r6wpt78vrm538fcab717l6fevhy32eftog1ykssm2sh0nmt3qr6x5vr1q96fkmg3fajf0lc0f5r3da1bb5mkon7a8a753jgij61vgpc33jed0i0jpeo2vgo3ter52zr4a134ppj8kh0hftxz8qeoaka2lr18i7btkhetnrpgaaxzf2aey9l1jwshtn3pm6l4csti60v71p5opkiafv2b3d0wvi1ikjer6llz7f8s10sk870ugunwgil0xdsth5cunt01xi4ygdwiooello96j46kdeuuvbzcrvc4fkyiqaumluwvd25977b1lxykubl3rfjs1744effxtun139li26uwz9j2ulaidymmsh8ko6pc1wapgpescm1vumbixkyouv81sgy0djdrtj85r0avdkza2cowmgcqin02t3qqahaupxihuqd3a3kb91v2fr1qmxskvt9ghgpbje9tcxat23htblookisjtr43vjs7tenfjapnlh23whwms5jnwgfy49csvpprxhxro5n0cwq19rcyhsnxmyaf9x0kpx3yju0fo9ufgrbjmbubghbzhhunea1lkrr3cyyq4ku"

    aget-object v2, v3, p0

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 73
    :cond_8a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0

    .line 57
    nop

    :array_90
    .array-data 0x4
        0x88t 0x0t 0x0t 0x0t
        0x37t 0x2t 0x0t 0x0t
        0x5bt 0x1t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x7t 0x2t 0x0t 0x0t
        0xcbt 0x2t 0x0t 0x0t
        0x6ft 0x3t 0x0t 0x0t
        0x99t 0x3t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xa7t 0x3t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x34t 0x2t 0x0t 0x0t
    .end array-data

    :array_b2
    .array-data 0x4
        0x86t 0x1t 0x0t 0x0t
        0x86t 0x3t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x79t 0x1t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0x53t 0x1t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0x82t 0x2t 0x0t 0x0t
        0xfdt 0x1t 0x0t 0x0t
        0x1bt 0x2t 0x0t 0x0t
        0x88t 0x2t 0x0t 0x0t
    .end array-data

    :array_d4
    .array-data 0x4
        0x82t 0x1t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x8ct 0x1t 0x0t 0x0t
        0x73t 0x1t 0x0t 0x0t
        0xc1t 0x3t 0x0t 0x0t
        0xd1t 0x1t 0x0t 0x0t
        0xaat 0x2t 0x0t 0x0t
        0xd9t 0x3t 0x0t 0x0t
        0x42t 0x2t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x67t 0x1t 0x0t 0x0t
        0x1dt 0x1t 0x0t 0x0t
        0xdt 0x3t 0x0t 0x0t
        0x74t 0x3t 0x0t 0x0t
        0x13t 0x1t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final c()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Ldbxyzptlk/p/F;->a:Ljava/util/Locale;

    return-object v0
.end method

.method public final declared-synchronized g()Lorg/apache/http/client/HttpClient;
    .registers 4

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ldbxyzptlk/o/a;->g()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 51
    monitor-exit p0

    return-object v0

    .line 49
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
