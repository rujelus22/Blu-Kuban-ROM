.class public final Lcom/dropbox/android/util/O;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 206
    new-instance v0, Lcom/dropbox/android/util/Q;

    invoke-static {}, Lcom/dropbox/android/util/O;->a()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/util/Q;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 6
    .parameter

    .prologue
    .line 180
    const-wide/16 v0, 0x0

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 184
    :cond_c
    new-instance v2, Lcom/dropbox/android/util/R;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {}, Lcom/dropbox/android/util/O;->a()[B

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/dropbox/android/util/R;-><init>(Ljava/io/OutputStream;[BJ)V

    return-object v2
.end method

.method public static a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 5
    .parameter

    .prologue
    .line 192
    new-instance v0, Lcom/dropbox/android/util/R;

    invoke-static {}, Lcom/dropbox/android/util/O;->a()[B

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/dropbox/android/util/R;-><init>(Ljava/io/OutputStream;[BJ)V

    return-object v0
.end method

.method private static a()[B
    .registers 10

    .prologue
    const/16 v9, 0x1a

    const/16 v2, 0xf

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 216
    const-string v0, "vlwr70ohoptcb6x9n71kd0ghf15ijzk68u6zew0amx3p3yld4odold5v8w8d06e28mleivtzq9nxspdzm004jnsdrb4r4noqudhbmmdm7lrxj1isl2rb1pqjg0i155zz8mbxsm0tcgd5hstwg028i4qatlvu4eonj8kf3gj29t39r5qeiso54e251h1r23ss25q6k2p90j3d4jfh5nrrfu80k3nkok7702vyzhb321xjtfanahyq2xnfkfn1h29ex0amds3zljmiii1atl6megqwshdumm95iqprqy2wqn63ir04hsjy71enazu5sunk26yepl600kftr3kt9zlbtbk3xbj090dme04fqwyzvdq19l94hk4sv7dgl5vd410tbbqhtk222731eaamkgs76os4eubd2su0bblx9p4mkz8s67w40r6wpt78vrm538fcab717l6fevhy32eftog1ykssm2sh0nmt3qr6x5vr1q96fkmg3fajf0lc0f5r3da1bb5mkon7a8a753jgij61vgpc33jed0i0jpeo2vgo3ter52zr4a134ppj8kh0hftxz8qeoaka2lr18i7btkhetnrpgaaxzf2aey9l1jwshtn3pm6l4csti60v71p5opkiafv2b3d0wvi1ikjer6llz7f8s10sk870ugunwgil0xdsth5cunt01xi4ygdwiooello96j46kdeuuvbzcrvc4fkyiqaumluwvd25977b1lxykubl3rfjs1744effxtun139li26uwz9j2ulaidymmsh8ko6pc1wapgpescm1vumbixkyouv81sgy0djdrtj85r0avdkza2cowmgcqin02t3qqahaupxihuqd3a3kb91v2fr1qmxskvt9ghgpbje9tcxat23htblookisjtr43vjs7tenfjapnlh23whwms5jnwgfy49csvpprxhxro5n0cwq19rcyhsnxmyaf9x0kpx3yju0fo9ufgrbjmbubghbzhhunea1lkrr3cyyq4ku"

    .line 218
    const/4 v0, 0x3

    new-array v3, v0, [[I

    new-array v0, v2, [I

    fill-array-data v0, :array_96

    aput-object v0, v3, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_b8

    aput-object v0, v3, v8

    const/4 v0, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_da

    aput-object v2, v3, v0

    .line 223
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    aget-object v0, v3, v1

    const/4 v2, 0x5

    aget v5, v0, v2

    .line 225
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    .line 226
    :goto_31
    const/16 v0, 0x24

    if-ge v2, v0, :cond_6c

    .line 227
    if-ge v2, v9, :cond_5a

    add-int/lit8 v0, v2, 0x61

    int-to-char v0, v0

    :goto_3a
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    sub-int v0, v2, v5

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v0, v0, 0x24

    if-ge v0, v9, :cond_60

    sub-int v0, v2, v5

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    :goto_4f
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    .line 227
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

    .line 230
    :goto_6d
    aget-object v1, v3, v8

    array-length v1, v1

    if-ge v0, v1, :cond_8a

    .line 231
    const-string v1, "vlwr70ohoptcb6x9n71kd0ghf15ijzk68u6zew0amx3p3yld4odold5v8w8d06e28mleivtzq9nxspdzm004jnsdrb4r4noqudhbmmdm7lrxj1isl2rb1pqjg0i155zz8mbxsm0tcgd5hstwg028i4qatlvu4eonj8kf3gj29t39r5qeiso54e251h1r23ss25q6k2p90j3d4jfh5nrrfu80k3nkok7702vyzhb321xjtfanahyq2xnfkfn1h29ex0amds3zljmiii1atl6megqwshdumm95iqprqy2wqn63ir04hsjy71enazu5sunk26yepl600kftr3kt9zlbtbk3xbj090dme04fqwyzvdq19l94hk4sv7dgl5vd410tbbqhtk222731eaamkgs76os4eubd2su0bblx9p4mkz8s67w40r6wpt78vrm538fcab717l6fevhy32eftog1ykssm2sh0nmt3qr6x5vr1q96fkmg3fajf0lc0f5r3da1bb5mkon7a8a753jgij61vgpc33jed0i0jpeo2vgo3ter52zr4a134ppj8kh0hftxz8qeoaka2lr18i7btkhetnrpgaaxzf2aey9l1jwshtn3pm6l4csti60v71p5opkiafv2b3d0wvi1ikjer6llz7f8s10sk870ugunwgil0xdsth5cunt01xi4ygdwiooello96j46kdeuuvbzcrvc4fkyiqaumluwvd25977b1lxykubl3rfjs1744effxtun139li26uwz9j2ulaidymmsh8ko6pc1wapgpescm1vumbixkyouv81sgy0djdrtj85r0avdkza2cowmgcqin02t3qqahaupxihuqd3a3kb91v2fr1qmxskvt9ghgpbje9tcxat23htblookisjtr43vjs7tenfjapnlh23whwms5jnwgfy49csvpprxhxro5n0cwq19rcyhsnxmyaf9x0kpx3yju0fo9ufgrbjmbubghbzhhunea1lkrr3cyyq4ku"

    aget-object v2, v3, v8

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 232
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 234
    :cond_8a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 218
    :array_96
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

    :array_b8
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

    :array_da
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

.method public static b(Ljava/io/File;)Ljava/io/InputStream;
    .registers 2
    .parameter

    .prologue
    .line 199
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/dropbox/android/util/O;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
