.class public Lcom/google/googlenav/android/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/s;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field private static final l:[Ljava/lang/String;

.field private static final m:Lcom/google/common/collect/ImmutableSet;


# instance fields
.field private final i:Lcom/google/googlenav/android/P;

.field private final j:Lcom/google/googlenav/ui/v;

.field private final k:Lat/u;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 251
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/checkin"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->a:Landroid/net/Uri;

    .line 260
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/auto-checkin"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->b:Landroid/net/Uri;

    .line 270
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/location-history"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->c:Landroid/net/Uri;

    .line 280
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/location-history/enable"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->d:Landroid/net/Uri;

    .line 290
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->e:Landroid/net/Uri;

    .line 300
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "places"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "places"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->f:Landroid/net/Uri;

    .line 308
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/choose-location"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->g:Landroid/net/Uri;

    .line 318
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/manage-places"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->h:Landroid/net/Uri;

    .line 449
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "client"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tab"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/android/M;->l:[Ljava/lang/String;

    .line 460
    new-instance v0, Lcom/google/common/collect/bD;

    invoke-direct {v0}, Lcom/google/common/collect/bD;-><init>()V

    sget-object v1, Lcom/google/googlenav/android/M;->l:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bD;->b([Ljava/lang/Object;)Lcom/google/common/collect/bD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bD;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/M;->m:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/P;Lcom/google/googlenav/ui/v;Lat/u;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    .line 659
    iput-object p2, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    .line 660
    iput-object p3, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    .line 661
    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1983
    .line 1985
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1986
    if-eqz v0, :cond_a

    .line 1987
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_b

    move-result p3

    .line 1993
    :cond_a
    :goto_a
    return p3

    .line 1989
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/android/M;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 2286
    .line 2287
    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2288
    const/4 v0, 0x0

    move v1, v0

    .line 2295
    :goto_b
    if-ne v1, v2, :cond_1a

    .line 2309
    :goto_d
    return-object p0

    .line 2290
    :cond_e
    const-string v0, " cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2291
    if-eq v0, v2, :cond_55

    .line 2292
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_b

    .line 2300
    :cond_1a
    const-string v0, "cid"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 2303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_33

    .line 2304
    add-int/lit8 v0, v0, 0x1

    .line 2306
    :cond_33
    :goto_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_46

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_46

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 2308
    :cond_46
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2309
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_55
    move v1, v0

    goto :goto_b
.end method

.method private a(Landroid/net/Uri;)V
    .registers 13
    .parameter

    .prologue
    const/16 v7, 0x2c

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1228
    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_1d

    move-result-object v0

    .line 1234
    const-string v1, "geo"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri is not geo scheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :catch_1d
    move-exception v0

    .line 1231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1238
    :cond_26
    if-nez v0, :cond_30

    .line 1239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri link contains no body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_30
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1244
    if-ne v2, v4, :cond_5f

    move-object v1, v0

    .line 1246
    :goto_39
    if-ne v2, v4, :cond_64

    move-object v0, v3

    .line 1249
    :goto_3c
    invoke-static {v1}, Lcom/google/googlenav/android/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1251
    if-gez v2, :cond_6b

    .line 1252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid geo uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :cond_5f
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 1246
    :cond_64
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 1254
    :cond_6b
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1255
    if-ltz v5, :cond_77

    .line 1257
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1261
    :cond_77
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1262
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1263
    const v1, 0xf4240

    .line 1265
    :try_start_84
    invoke-static {v5}, Lat/B;->b(Ljava/lang/String;)I

    move-result v7

    .line 1266
    invoke-static {v2}, Lat/B;->b(Ljava/lang/String;)I

    move-result v8

    .line 1269
    const/16 v2, 0x2e

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1270
    if-lez v2, :cond_a4

    .line 1271
    const-wide/high16 v9, 0x4024

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x7

    int-to-double v1, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_a2} :catch_eb

    move-result-wide v1

    double-to-int v1, v1

    .line 1280
    :cond_a4
    new-instance v9, Lcom/google/googlenav/android/O;

    invoke-direct {v9}, Lcom/google/googlenav/android/O;-><init>()V

    .line 1281
    if-eqz v0, :cond_14d

    .line 1282
    invoke-virtual {v9, v0}, Lcom/google/googlenav/android/O;->parseQuery(Ljava/lang/String;)V

    .line 1283
    const-string v2, "z"

    invoke-virtual {v9, v2}, Lcom/google/googlenav/android/O;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1284
    if-eqz v2, :cond_14d

    .line 1287
    :try_start_b6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x16

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1288
    invoke-static {}, Lat/Y;->e()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I
    :try_end_c7
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_c7} :catch_105

    move-result v2

    .line 1299
    :goto_c8
    if-nez v7, :cond_11f

    if-nez v8, :cond_11f

    .line 1300
    const/4 v5, 0x1

    .line 1311
    :goto_cd
    if-eqz v0, :cond_145

    .line 1312
    const-string v0, "q"

    invoke-virtual {v9, v0}, Lcom/google/googlenav/android/O;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1313
    if-eqz v1, :cond_13d

    .line 1315
    invoke-static {v1}, Lcom/google/googlenav/android/M;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1316
    invoke-static {v1}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v5, v6

    :goto_e2
    move-object v0, p0

    move v7, v6

    move v8, v6

    move-object v9, v3

    move v10, v6

    .line 1322
    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZZLat/B;Z)V

    .line 1337
    :goto_ea
    return-void

    .line 1273
    :catch_eb
    move-exception v0

    .line 1274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid geo uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :catch_105
    move-exception v0

    .line 1290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid geo uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_11f
    iget-object v5, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    new-instance v10, Lat/B;

    invoke-direct {v10, v7, v8}, Lat/B;-><init>(II)V

    invoke-virtual {v5, v10}, Lat/u;->c(Lat/B;)V

    .line 1303
    if-lez v2, :cond_136

    .line 1304
    iget-object v1, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    invoke-static {v2}, Lat/Y;->b(I)Lat/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lat/u;->a(Lat/Y;)V

    move v5, v6

    goto :goto_cd

    .line 1306
    :cond_136
    iget-object v2, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    invoke-virtual {v2, v1, v1}, Lat/u;->d(II)V

    move v5, v6

    goto :goto_cd

    .line 1326
    :cond_13d
    const-string v0, "cbp"

    invoke-virtual {v9, v0}, Lcom/google/googlenav/android/O;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    if-eqz v0, :cond_145

    .line 1336
    :cond_145
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    goto :goto_ea

    :cond_14b
    move-object v2, v3

    goto :goto_e2

    :cond_14d
    move v2, v6

    goto/16 :goto_c8
.end method

.method private a(Ljava/lang/String;Lat/M;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2115
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1, v1, v1}, Lcom/google/googlenav/android/P;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 2119
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->at()V

    .line 2121
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/bd;->a(Lat/M;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 2127
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1803
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/googlenav/android/P;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 1804
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const/16 v2, 0x4f5

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 1811
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->at()V

    .line 2171
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V

    .line 2172
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZLjava/lang/String;ZLat/B;Lat/H;Z)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2056
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    move-object/from16 v0, p10

    invoke-interface {v1, p1, p2, v0}, Lcom/google/googlenav/android/P;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 2061
    const-string v1, "19"

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2062
    const/16 v1, 0x57

    const-string v2, "s"

    invoke-static {v1, v2, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/gj;->a(Ljava/lang/String;)V

    .line 2111
    :goto_29
    return-void

    .line 2070
    :cond_2a
    const-string v1, "20"

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2071
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    .line 2072
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, LaM/i;->av()I

    move-result v2

    if-nez v2, :cond_4c

    .line 2073
    check-cast v1, LaM/bj;

    .line 2074
    invoke-virtual {v1, p1, p3, p4}, LaM/bj;->a(Ljava/lang/String;Lat/H;I)V

    goto :goto_29

    .line 2082
    :cond_4c
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->at()V

    .line 2084
    if-eqz p5, :cond_6d

    .line 2085
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ai()Lcom/google/googlenav/A;

    move-result-object v1

    new-instance v4, Lcom/google/googlenav/c;

    const/4 v2, 0x2

    invoke-direct {v4, v2}, Lcom/google/googlenav/c;-><init>(I)V

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;IIZZZ)V

    goto :goto_29

    .line 2089
    :cond_6d
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/bd;->c(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/bd;->d(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    if-eqz p8, :cond_d1

    :goto_8f
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->b(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v1

    move/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->k(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    .line 2102
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d4

    .line 2103
    const/16 v2, 0x4f5

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 2109
    :cond_c6
    :goto_c6
    iget-object v2, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    goto/16 :goto_29

    .line 2089
    :cond_d1
    const-string p8, "100"

    goto :goto_8f

    .line 2105
    :cond_d4
    if-eqz p12, :cond_c6

    .line 2106
    const/16 v2, 0x4f4

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    goto :goto_c6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZZLat/B;Z)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2028
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZLjava/lang/String;ZLat/B;Lat/H;Z)V

    .line 2030
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 825
    invoke-static {p1}, Lcom/google/googlenav/android/M;->d(Ljava/lang/String;)I

    move-result v0

    .line 827
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v1

    .line 830
    invoke-virtual {v1}, LaI/o;->i()V

    .line 833
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    .line 834
    const-string v2, "s"

    invoke-virtual {v1, p0, v2, p2}, LaI/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 836
    invoke-static {p0}, Laa/b;->i(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, LaI/o;->a(III)V

    .line 839
    :cond_1b
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2181
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 2187
    const-string v0, "saddr"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lad/y;->a()Lad/y;

    move-result-object v0

    .line 2191
    :goto_12
    const-string v2, "daddr"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {}, Lad/y;->a()Lad/y;

    move-result-object v1

    .line 2197
    :cond_1e
    :goto_1e
    const-string v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2198
    const/4 v2, 0x2

    .line 2212
    :goto_27
    new-instance v3, Lad/j;

    invoke-direct {v3, v0, v1}, Lad/j;-><init>(Lad/y;Lad/y;)V

    .line 2213
    packed-switch v2, :pswitch_data_96

    .line 2229
    new-instance v0, Lad/s;

    invoke-direct {v0, v3}, Lad/s;-><init>(Lad/k;)V

    .line 2237
    :goto_34
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(Lad/k;)V

    .line 2238
    return-void

    .line 2187
    :cond_3a
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {p1}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v0

    goto :goto_12

    :cond_45
    move-object v0, v1

    goto :goto_12

    .line 2191
    :cond_47
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {p2}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v1

    goto :goto_1e

    .line 2199
    :cond_52
    const-string v2, "r"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2200
    const/4 v2, 0x1

    goto :goto_27

    .line 2201
    :cond_5c
    invoke-static {}, Lcom/google/googlenav/K;->C()Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "b"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2203
    const/4 v2, 0x3

    goto :goto_27

    .line 2204
    :cond_6c
    const-string v2, "d"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2205
    const/4 v2, 0x0

    goto :goto_27

    .line 2208
    :cond_76
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->H()I

    move-result v2

    goto :goto_27

    .line 2215
    :pswitch_7b
    new-instance v0, Lad/x;

    invoke-direct {v0, v3}, Lad/x;-><init>(Lad/k;)V

    goto :goto_34

    .line 2219
    :pswitch_81
    new-instance v0, Lad/w;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lad/w;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    goto :goto_34

    .line 2224
    :pswitch_8f
    new-instance v0, Lad/i;

    invoke-direct {v0, v3}, Lad/i;-><init>(Lad/k;)V

    goto :goto_34

    .line 2213
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_81
        :pswitch_7b
        :pswitch_8f
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2136
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/googlenav/android/P;->saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 2140
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->at()V

    .line 2143
    if-eqz p3, :cond_1e

    .line 2144
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 2148
    :cond_1e
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 2155
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 2156
    const/16 v1, 0x4f5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 2159
    :cond_50
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 2160
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2267
    if-nez p1, :cond_23

    .line 2276
    if-eqz p2, :cond_14

    const-string v0, "19"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "20"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 2279
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 2283
    :cond_23
    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;)Z
    .registers 5
    .parameter

    .prologue
    .line 2319
    invoke-virtual {p1}, Landroid/net/UrlQuerySanitizer;->getParameterSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2320
    sget-object v2, Lcom/google/googlenav/android/M;->m:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2321
    const/4 v0, 0x1

    .line 2324
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1890
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1891
    if-nez v2, :cond_8

    .line 1906
    :goto_7
    return-object v0

    .line 1894
    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1895
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1896
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lat/B;->b(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    .line 1897
    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lat/B;->b(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_2a} :catch_2c

    move-object v0, v1

    .line 1898
    goto :goto_7

    .line 1902
    :catch_2c
    move-exception v1

    goto :goto_7

    .line 1899
    :catch_2e
    move-exception v1

    goto :goto_7
.end method

.method private b(Landroid/net/Uri;)I
    .registers 8
    .parameter

    .prologue
    .line 1706
    new-instance v2, Lac/r;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lac/r;-><init>(Ljava/lang/String;Lac/s;)V

    .line 1707
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 1712
    invoke-virtual {v2}, Lac/r;->a()V

    .line 1713
    const/4 v0, -0x2

    return v0
.end method

.method static b(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1174
    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1175
    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "cu"

    goto :goto_e
.end method

.method private b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2004
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2006
    if-eqz v0, :cond_1c

    .line 2007
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2008
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2009
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2019
    :goto_13
    return-object v0

    .line 2010
    :cond_14
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 2012
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_13

    .line 2019
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2353
    if-nez p0, :cond_4

    .line 2361
    :cond_3
    :goto_3
    return-object v0

    .line 2356
    :cond_4
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2357
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    move-object v0, p0

    .line 2358
    goto :goto_3

    .line 2360
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2361
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_3
.end method

.method private b()V
    .registers 5

    .prologue
    .line 1749
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1750
    monitor-enter v1

    .line 1752
    const/4 v0, 0x0

    .line 1753
    :try_start_7
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2}, Lcom/google/googlenav/android/P;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/android/N;

    invoke-direct {v3, p0, v1}, Lcom/google/googlenav/android/N;-><init>(Lcom/google/googlenav/android/M;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    .line 1763
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->aj()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1764
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_28} :catch_29

    goto :goto_15

    .line 1766
    :catch_29
    move-exception v0

    .line 1769
    :cond_2a
    :try_start_2a
    monitor-exit v1

    .line 1770
    return-void

    .line 1769
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private c()Landroid/net/UrlQuerySanitizer;
    .registers 2

    .prologue
    .line 1874
    new-instance v0, Lcom/google/googlenav/android/S;

    invoke-direct {v0}, Lcom/google/googlenav/android/S;-><init>()V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lat/B;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 2372
    if-nez p0, :cond_5

    .line 2388
    :cond_4
    :goto_4
    return-object v0

    .line 2375
    :cond_5
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2376
    if-eq v1, v3, :cond_4

    .line 2379
    sget-object v0, LaI/w;->a:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2382
    if-ne v0, v3, :cond_27

    .line 2383
    const-string v0, ";"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2388
    :goto_22
    invoke-static {v0}, Lat/B;->a(Ljava/lang/String;)Lat/B;

    move-result-object v0

    goto :goto_4

    .line 2385
    :cond_27
    const-string v2, ";"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method private static c(Landroid/content/Intent;)Lcom/google/googlenav/ai;
    .registers 4
    .parameter

    .prologue
    .line 725
    const-string v0, "placemark-proto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 726
    if-eqz v0, :cond_22

    .line 727
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 729
    :try_start_12
    invoke-static {v1}, Lcom/google/googlenav/ai;->a(Ljava/io/DataInput;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 730
    const-string v1, "insitu"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->e(Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_21

    .line 736
    :goto_20
    return-object v0

    .line 732
    :catch_21
    move-exception v0

    .line 736
    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private c(Landroid/net/Uri;)V
    .registers 6
    .parameter

    .prologue
    .line 1776
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1777
    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1778
    if-eqz v1, :cond_2d

    .line 1779
    const-string v2, "kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1780
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load My Maps with output="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1784
    :cond_2d
    const-string v1, "output"

    const-string v2, "kml"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1787
    :cond_34
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1791
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2397
    if-nez p0, :cond_4

    .line 2404
    :cond_3
    :goto_3
    return v0

    .line 2400
    :cond_4
    sget-object v1, LaI/w;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2401
    if-eq v1, v0, :cond_3

    .line 2404
    new-instance v0, Ljava/lang/Integer;

    sget-object v2, LaI/w;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method

.method private static d(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 740
    const-string v0, "placemark-url"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/net/Uri;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1832
    .line 1834
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_51

    move-result-object v0

    .line 1841
    if-eqz v0, :cond_5d

    .line 1842
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1843
    array-length v0, v4

    if-lt v0, v9, :cond_5d

    .line 1844
    aget-object v0, v4, v3

    invoke-static {v0}, Lcom/google/googlenav/android/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1845
    aget-object v0, v4, v2

    invoke-static {v0}, Lcom/google/googlenav/android/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    const/4 v1, 0x0

    .line 1848
    const/4 v0, 0x2

    :try_start_20
    aget-object v0, v4, v0

    invoke-static {v0}, Lat/B;->b(Ljava/lang/String;)I

    move-result v7

    .line 1849
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Lat/B;->b(Ljava/lang/String;)I

    move-result v8

    .line 1850
    new-instance v0, Lat/B;

    invoke-direct {v0, v7, v8}, Lat/B;-><init>(II)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_32} :catch_5a

    .line 1854
    :goto_32
    const-string v1, ""

    .line 1855
    array-length v7, v4

    const/4 v8, 0x5

    if-lt v7, v8, :cond_3e

    .line 1857
    aget-object v1, v4, v9

    invoke-static {v1}, Lcom/google/googlenav/android/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1859
    :cond_3e
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-static {v6}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    if-eqz v0, :cond_5d

    .line 1861
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V

    move v0, v2

    .line 1866
    :goto_50
    return v0

    .line 1835
    :catch_51
    move-exception v0

    .line 1837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "google.layeritemdetails uri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :catch_5a
    move-exception v0

    move-object v0, v1

    goto :goto_32

    :cond_5d
    move v0, v3

    .line 1866
    goto :goto_50
.end method

.method private static e(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 744
    const-string v0, "intent-source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_15

    .line 748
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 750
    :cond_15
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2248
    const-string v1, "cid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2251
    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, " cid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private f(Landroid/content/Intent;)I
    .registers 8
    .parameter

    .prologue
    .line 754
    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/M;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 755
    if-nez v2, :cond_e

    .line 757
    const/4 v0, -0x1

    .line 794
    :goto_d
    return v0

    .line 760
    :cond_e
    const/4 v1, 0x0

    .line 761
    const/4 v0, 0x0

    .line 762
    const-string v3, "app_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 763
    if-eqz v3, :cond_38

    .line 764
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 765
    const-string v5, "skipSearchWizardOnBack"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 766
    const-string v0, "skipSearchWizardOnBack"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 769
    :cond_2a
    const-string v5, "searchUiSource"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 770
    const-string v1, "searchUiSource"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    :cond_38
    const-string v3, "19"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 776
    iget-object v3, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/gj;->b(Ljava/lang/String;)V

    .line 788
    :goto_51
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/android/M;->a(ZLjava/lang/String;)V

    .line 790
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_extra_data_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ag;->c:Lcom/google/googlenav/ag;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 794
    const/4 v0, -0x2

    goto :goto_d

    .line 777
    :cond_67
    const-string v3, "20"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 778
    iget-object v3, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v3

    invoke-virtual {v3}, LaM/am;->I()LaM/i;

    move-result-object v3

    .line 779
    if-eqz v3, :cond_8a

    invoke-virtual {v3}, LaM/i;->av()I

    move-result v4

    if-nez v4, :cond_8a

    .line 780
    iget-object v4, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v4

    invoke-virtual {v4, v3}, LaM/am;->g(LaM/i;)V

    .line 782
    :cond_8a
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v3, v2}, Lcom/google/googlenav/android/P;->showStarDetails(Ljava/lang/String;)V

    goto :goto_51

    .line 784
    :cond_90
    iget-object v3, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->at()V

    .line 785
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v3, v2}, Lcom/google/googlenav/android/P;->showStarOnMap(Ljava/lang/String;)V

    goto :goto_51
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2259
    const-string v1, "by:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2262
    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, " by:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private g(Landroid/content/Intent;)I
    .registers 5
    .parameter

    .prologue
    .line 798
    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/M;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    if-nez v0, :cond_e

    .line 801
    const/4 v0, -0x1

    .line 810
    :goto_d
    return v0

    .line 804
    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/P;->showBubbleForRecentPlace(Ljava/lang/String;)Lcom/google/googlenav/ag;

    move-result-object v0

    .line 806
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 810
    const/4 v0, -0x2

    goto :goto_d
.end method

.method private h(Landroid/content/Intent;)I
    .registers 5
    .parameter

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const-string v1, "stars"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Z)V

    .line 816
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_extra_data_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ag;->a:Lcom/google/googlenav/ag;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 820
    const/4 v0, -0x2

    return v0
.end method

.method private i(Landroid/content/Intent;)I
    .registers 20
    .parameter

    .prologue
    .line 846
    const-string v1, "google.star"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 847
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/android/M;->f(Landroid/content/Intent;)I

    move-result v1

    .line 960
    :goto_10
    return v1

    .line 850
    :cond_11
    const-string v1, "google.recentplace"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 851
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/android/M;->g(Landroid/content/Intent;)I

    move-result v1

    goto :goto_10

    .line 854
    :cond_22
    const-string v1, "google.myplaces_panel"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 855
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/android/M;->h(Landroid/content/Intent;)I

    move-result v1

    goto :goto_10

    .line 858
    :cond_33
    const-string v1, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 859
    const-string v2, "intent_extra_data_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 860
    invoke-static {v15}, Lcom/google/googlenav/android/M;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 861
    invoke-static {v15}, Lcom/google/googlenav/android/M;->c(Ljava/lang/String;)Lat/B;

    move-result-object v11

    .line 862
    if-nez v1, :cond_be

    const-string v2, ""

    .line 869
    :goto_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->r()Z

    move-result v8

    .line 874
    const-string v1, "app_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v1, "app_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_c6

    :cond_6f
    const/4 v1, 0x1

    .line 876
    :goto_70
    const/4 v4, 0x0

    .line 877
    const/4 v5, 0x0

    .line 878
    const/4 v6, 0x0

    .line 879
    const/4 v10, 0x0

    .line 880
    const/4 v7, 0x0

    .line 882
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/K;->an()Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 889
    const/4 v1, 0x0

    move-object v9, v6

    move v14, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    .line 943
    :goto_85
    const/4 v12, 0x0

    .line 944
    if-eqz v11, :cond_9f

    .line 945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v5

    invoke-virtual {v5}, Lat/u;->f()Lat/H;

    move-result-object v12

    .line 947
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v5

    invoke-virtual {v5, v11}, Lat/u;->c(Lat/B;)V

    .line 950
    :cond_9f
    if-nez v1, :cond_1c2

    .line 951
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZLjava/lang/String;ZLat/B;Lat/H;Z)V

    .line 957
    :goto_a9
    sget-object v1, Lcom/google/googlenav/ag;->a:Lcom/google/googlenav/ag;

    invoke-static {v2, v15, v1}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ag;)V

    .line 958
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lcom/google/googlenav/android/M;->a(ZLjava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->D()V

    .line 960
    const/16 v1, 0x15

    goto/16 :goto_10

    .line 862
    :cond_be
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Laa/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    .line 874
    :cond_c6
    const/4 v1, 0x0

    goto :goto_70

    .line 890
    :cond_c8
    if-nez v1, :cond_1d3

    .line 891
    const-string v9, "app_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 892
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 893
    const-string v13, "centerLatitude"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_102

    const-string v13, "centerLongitude"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_102

    .line 895
    const-string v13, "centerLatitude"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 896
    const-string v14, "centerLongitude"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/android/M;->k:Lat/u;

    move-object/from16 v16, v0

    new-instance v17, Lat/B;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v14}, Lat/B;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lat/u;->c(Lat/B;)V

    .line 901
    :cond_102
    const-string v13, "zoomLevel"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_199

    .line 902
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/android/M;->k:Lat/u;

    const-string v14, "zoomLevel"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lat/Y;->b(I)Lat/Y;

    move-result-object v14

    invoke-virtual {v13, v14}, Lat/u;->a(Lat/Y;)V

    .line 911
    :cond_11b
    :goto_11b
    const-string v13, "routePolyline"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_149

    .line 914
    :try_start_123
    new-instance v13, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v14, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v13, v14}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 915
    const-string v14, "routePolyline"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 916
    if-eqz v14, :cond_149

    .line 917
    invoke-virtual {v13, v14}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 918
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_149

    .line 919
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v13

    invoke-static {v13}, Lat/M;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/M;
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_148} :catch_1c9

    move-result-object v4

    .line 926
    :cond_149
    :goto_149
    const-string v13, "skipSearchWizardOnBack"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_157

    .line 927
    const-string v5, "skipSearchWizardOnBack"

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 930
    :cond_157
    const-string v13, "searchUiSource"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_165

    .line 931
    const-string v6, "searchUiSource"

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 933
    :cond_165
    const-string v13, "searchNearBy"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_184

    .line 934
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/android/M;->k:Lat/u;

    invoke-virtual {v7}, Lat/u;->f()Lat/H;

    move-result-object v7

    const-string v8, "searchNearBy"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lat/B;->a(Ljava/lang/String;)Lat/B;

    move-result-object v8

    invoke-virtual {v7, v8}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v7

    .line 936
    const/4 v8, 0x1

    .line 938
    :cond_184
    const-string v13, "searchIncludeInHistory"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1cc

    .line 939
    const-string v10, "searchIncludeInHistory"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object v9, v6

    move v14, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_85

    .line 903
    :cond_199
    const-string v13, "latitudeSpan"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11b

    const-string v13, "longitudeSpan"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11b

    .line 905
    const-string v13, "latitudeSpan"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 906
    const-string v14, "longitudeSpan"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/android/M;->k:Lat/u;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Lat/u;->d(II)V

    goto/16 :goto_11b

    .line 954
    :cond_1c2
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v10}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Lat/M;Z)V

    goto/16 :goto_a9

    .line 922
    :catch_1c9
    move-exception v13

    goto/16 :goto_149

    :cond_1cc
    move-object v9, v6

    move v14, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_85

    :cond_1d3
    move-object v9, v6

    move v14, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_85
.end method

.method private j(Landroid/content/Intent;)I
    .registers 14
    .parameter

    .prologue
    const/4 v11, -0x1

    const/4 v1, -0x2

    .line 965
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->resolveType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 967
    const-string v2, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 969
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->getPostalAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 972
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZZLat/B;Z)V

    .line 974
    const/16 v11, 0x12

    .line 1048
    :cond_31
    :goto_31
    return v11

    .line 975
    :cond_32
    const-string v2, "geo"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 976
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/M;->a(Landroid/net/Uri;)V

    .line 977
    const/16 v11, 0x14

    goto :goto_31

    .line 978
    :cond_48
    const-string v2, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "https"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 981
    :cond_60
    const-string v2, "application/vnd.google-earth.kml+xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 982
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;II)V

    move v0, v1

    .line 989
    :goto_76
    if-ne v0, v1, :cond_7a

    .line 990
    const/16 v0, 0x13

    :cond_7a
    move v11, v0

    .line 992
    goto :goto_31

    .line 987
    :cond_7c
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/M;->n(Landroid/content/Intent;)I

    move-result v0

    goto :goto_76

    .line 993
    :cond_81
    const-string v0, "rideabout"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 994
    const/16 v0, 0x61

    const-string v1, "n"

    const-string v2, "n"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/M;->l(Landroid/content/Intent;)I

    move-result v11

    goto :goto_31

    .line 998
    :cond_9b
    const-string v0, "latitude"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 999
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/M;->m(Landroid/content/Intent;)I

    move-result v11

    goto :goto_31

    .line 1000
    :cond_ac
    const-string v0, "google.layeritemdetails"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1001
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/M;->d(Landroid/net/Uri;)Z

    move-result v0

    .line 1002
    if-eqz v0, :cond_c7

    const/16 v0, 0x18

    :goto_c4
    move v11, v0

    goto/16 :goto_31

    :cond_c7
    move v0, v11

    goto :goto_c4

    .line 1005
    :cond_c9
    const-string v0, "google.businessdetails"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1006
    invoke-static {p1}, Lcom/google/googlenav/android/M;->c(Landroid/content/Intent;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_e8

    .line 1008
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1009
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/P;->startBusinessDetailsLayer(Lcom/google/googlenav/ai;)V

    move v11, v1

    .line 1010
    goto/16 :goto_31

    .line 1012
    :cond_e8
    invoke-static {p1}, Lcom/google/googlenav/android/M;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    if-eqz v0, :cond_31

    .line 1014
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1015
    const-string v2, "insitu"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1016
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v3, v0, v2}, Lcom/google/googlenav/android/P;->startBusinessDetailsLayer(Ljava/lang/String;Z)V

    move v11, v1

    .line 1017
    goto/16 :goto_31

    .line 1022
    :cond_102
    const-string v0, "google.businessratings"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 1023
    invoke-static {p1}, Lcom/google/googlenav/android/M;->c(Landroid/content/Intent;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1024
    invoke-static {p1}, Lcom/google/googlenav/android/M;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    if-eqz v0, :cond_125

    .line 1026
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v3}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1027
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v3, v0, v2}, Lcom/google/googlenav/android/P;->startBusinessRatings(Lcom/google/googlenav/ai;Ljava/lang/String;)V

    move v11, v1

    .line 1028
    goto/16 :goto_31

    .line 1030
    :cond_125
    invoke-static {p1}, Lcom/google/googlenav/android/M;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    if-eqz v0, :cond_31

    .line 1032
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v3}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1033
    const-string v3, "insitu"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1034
    iget-object v4, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v4, v0, v2, v3}, Lcom/google/googlenav/android/P;->startBusinessRatings(Ljava/lang/String;Ljava/lang/String;Z)V

    move v11, v1

    .line 1035
    goto/16 :goto_31

    .line 1040
    :cond_13f
    const-string v0, "google.star"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1041
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/M;->f(Landroid/content/Intent;)I
    :try_end_14e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_14e} :catch_151

    move-result v11

    goto/16 :goto_31

    .line 1045
    :catch_151
    move-exception v0

    goto/16 :goto_31
.end method

.method private k(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 1053
    const/16 v0, 0x34

    const-string v1, "x"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1058
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x6f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 1060
    :cond_1e
    return-void
.end method

.method private l(Landroid/content/Intent;)I
    .registers 3
    .parameter

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startTransitNavigationLayer()V

    .line 1066
    const/16 v0, 0x1b

    return v0
.end method

.method private m(Landroid/content/Intent;)I
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 1076
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1078
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    .line 1079
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1082
    const-string v3, "/list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1083
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startFriendsListView(LaM/am;)V

    .line 1122
    :goto_22
    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "com.google.googlenav.appwidget.friends.FriendsAppWidgetUpdateService.EXTRA_SIGN_IN"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1124
    invoke-static {}, Lcom/google/googlenav/friend/af;->p()V

    .line 1126
    :cond_36
    const/16 v0, 0x1a

    return v0

    .line 1084
    :cond_39
    const-string v3, "/map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1085
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startFriendsLayer(LaM/am;)V

    goto :goto_22

    .line 1086
    :cond_47
    const-string v3, "/friends/location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1087
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1088
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/P;->startFriendsLocation(LaM/am;Ljava/lang/String;)V

    goto :goto_22

    .line 1089
    :cond_59
    const-string v3, "/friends/profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1090
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1091
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/P;->startFriendsProfile(LaM/am;Ljava/lang/String;)V

    goto :goto_22

    .line 1092
    :cond_6b
    const-string v0, "/auto-checkin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1093
    const-string v0, "notification_fired"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1094
    cmp-long v0, v2, v4

    if-eqz v0, :cond_92

    .line 1095
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1097
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->f(Ljava/lang/String;)V

    .line 1100
    :cond_92
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startFriendsListView(LaM/am;)V

    goto :goto_22

    .line 1101
    :cond_98
    const-string v0, "/checkin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1102
    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/M;->a(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 1103
    :cond_a5
    const-string v0, "/choose-location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1104
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1106
    const-string v2, "start_activity_on_complete"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1109
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/P;->startFriendsLocationChooser(LaM/am;Ljava/lang/Class;)V

    goto/16 :goto_22

    .line 1110
    :cond_c0
    const-string v0, "/location-history/enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1111
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/P;->startLocationHistoryOptIn(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 1112
    :cond_cf
    const-string v0, "/location-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 1113
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startFriendsLayerHistorySummary()V

    goto/16 :goto_22

    .line 1114
    :cond_de
    const-string v0, "/manage-places"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1115
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startManageAutoCheckinPlaces()V

    goto/16 :goto_22

    .line 1117
    :cond_ed
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startFriendsLayer(LaM/am;)V

    goto/16 :goto_22
.end method

.method private n(Landroid/content/Intent;)I
    .registers 14
    .parameter

    .prologue
    .line 1350
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1353
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/u/m/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1354
    invoke-direct {p0, v4}, Lcom/google/googlenav/android/M;->b(Landroid/net/Uri;)I

    move-result v0

    .line 1668
    :goto_1a
    return v0

    .line 1357
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    const/4 v1, 0x0

    .line 1366
    const/4 v2, 0x0

    .line 1370
    :try_start_22
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_25} :catch_aa

    move-result-object v0

    .line 1375
    if-nez v0, :cond_2a

    .line 1376
    const-string v0, ""

    .line 1380
    :cond_2a
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/latitude"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 1383
    const/4 v1, 0x1

    .line 1384
    iget-object v3, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    iget-object v6, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/google/googlenav/android/P;->startFriendsListView(LaM/am;)V

    .line 1402
    :cond_42
    invoke-direct {p0}, Lcom/google/googlenav/android/M;->c()Landroid/net/UrlQuerySanitizer;

    move-result-object v7

    .line 1407
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 1408
    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 1409
    invoke-direct {p0, v7}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1410
    const/4 v2, 0x1

    .line 1414
    :cond_54
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 1415
    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 1417
    const-string v0, "lci"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 1420
    const-string v0, "cbll"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1421
    if-eqz v0, :cond_104

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1424
    const-string v2, "google.streetview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    const-string v2, "cbll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    const-string v0, "cbp"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1428
    if-eqz v0, :cond_8a

    .line 1429
    const-string v2, "&cbp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :cond_8a
    const-string v0, "panoid"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_9a

    .line 1434
    const-string v2, "&panoid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    :cond_9a
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->c(Ljava/lang/String;)V

    .line 1439
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1371
    :catch_aa
    move-exception v0

    .line 1373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_b3
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/my-places"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1386
    const-string v0, "offline"

    invoke-virtual {v4}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1389
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    const-string v1, "offline"

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startMyPlacesList(Ljava/lang/String;)V

    .line 1393
    :goto_d2
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1391
    :cond_d5
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startMyPlacesList(Ljava/lang/String;)V

    goto :goto_d2

    .line 1394
    :cond_dc
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/offers-list"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 1395
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startOffersList()V

    .line 1396
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1397
    :cond_f0
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/transit-entry"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1398
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->startTransitEntry()V

    .line 1399
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1443
    :cond_104
    const-string v0, "nav"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    if-eqz v0, :cond_15d

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ak()Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 1447
    const-string v0, "daddr"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1451
    const-string v0, "sll"

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v0

    .line 1452
    if-eqz v0, :cond_242

    const-string v0, "sll"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    :goto_132
    const-string v3, "sspn"

    invoke-direct {p0, v7, v3}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v3

    .line 1454
    if-eqz v3, :cond_245

    const-string v3, "sspn"

    invoke-virtual {v7, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1457
    :goto_140
    const-string v8, "dirflg"

    invoke-virtual {v7, v8}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1460
    const-string v9, "entry"

    invoke-virtual {v7, v9}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1462
    invoke-static {v6, v0, v3, v8, v9}, Lcom/google/android/maps/driveabout/app/bj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1465
    iget-object v3, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/googlenav/aA;->b(Ljava/lang/String;)V

    .line 1470
    :cond_15d
    const-string v0, "t"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    const-string v3, "k"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_173

    const-string v3, "h"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_248

    .line 1472
    :cond_173
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(I)Z

    move-result v1

    .line 1483
    :cond_17a
    :goto_17a
    const-string v0, "layer"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_192

    .line 1485
    const/16 v3, 0x74

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_192

    .line 1486
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    .line 1487
    const/4 v1, 0x1

    .line 1492
    :cond_192
    const-string v0, "q"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1493
    const-string v0, "near"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    if-eqz v6, :cond_26e

    .line 1495
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    if-eqz v0, :cond_1ae

    .line 1497
    const-string v1, " near "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_1ae
    const/4 v3, 0x0

    .line 1501
    const-string v0, "sll"

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v8

    .line 1502
    if-eqz v8, :cond_1e0

    .line 1503
    new-instance v0, Lat/H;

    new-instance v1, Lat/B;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-direct {v1, v2, v3}, Lat/B;-><init>(II)V

    const/16 v2, 0xa

    invoke-static {v2}, Lat/Y;->b(I)Lat/Y;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->b()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->c()Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->O()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    move-object v3, v0

    .line 1508
    :cond_1e0
    const/4 v4, -0x1

    .line 1509
    const-string v0, "sspn"

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v0

    .line 1510
    if-eqz v0, :cond_1ec

    .line 1512
    const/4 v1, 0x0

    aget v4, v0, v1

    .line 1515
    :cond_1ec
    const/4 v0, 0x0

    .line 1519
    invoke-static {v6}, Lcom/google/googlenav/android/M;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_259

    .line 1520
    const-string v1, "cid"

    invoke-direct {p0, v7, v1}, Lcom/google/googlenav/android/M;->b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    if-nez v1, :cond_201

    .line 1522
    const-string v1, "latlng"

    invoke-direct {p0, v7, v1}, Lcom/google/googlenav/android/M;->b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1524
    :cond_201
    if-eqz v1, :cond_21d

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v6

    move-object v6, v0

    move-object v0, v11

    :cond_21d
    move-object v2, v0

    move-object v1, v6

    .line 1534
    :goto_21f
    const/4 v6, 0x0

    .line 1535
    const-string v0, "iwd"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1536
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 1537
    const/4 v6, 0x1

    .line 1542
    :cond_22f
    invoke-static {v1}, Lcom/google/googlenav/android/M;->f(Ljava/lang/String;)Z

    move-result v10

    .line 1548
    if-nez v8, :cond_25f

    invoke-static {v1}, Lcom/google/googlenav/android/M;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 1549
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v6, v0}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1555
    :goto_23f
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1452
    :cond_242
    const/4 v0, 0x0

    goto/16 :goto_132

    .line 1454
    :cond_245
    const/4 v3, 0x0

    goto/16 :goto_140

    .line 1473
    :cond_248
    const-string v3, "m"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1474
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(I)Z

    move-result v1

    goto/16 :goto_17a

    .line 1529
    :cond_259
    invoke-static {v6}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v6

    goto :goto_21f

    .line 1551
    :cond_25f
    if-nez v8, :cond_26c

    if-nez v10, :cond_26c

    const/4 v5, 0x1

    .line 1552
    :goto_264
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Lat/H;IZZZZLat/B;Z)V

    goto :goto_23f

    .line 1551
    :cond_26c
    const/4 v5, 0x0

    goto :goto_264

    .line 1559
    :cond_26e
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/maps/place"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2de

    .line 1560
    const-string v0, "cid"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1561
    const-string v3, "georestrict"

    invoke-virtual {v7, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1562
    invoke-static {v0, v3}, Lcom/google/googlenav/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1565
    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c5

    .line 1566
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1567
    const-string v0, "uc"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    const/4 v0, 0x0

    .line 1569
    const-string v2, "insitu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 1570
    const/4 v0, 0x1

    .line 1572
    :cond_2a5
    const-string v1, "openratings"

    const-string v2, "action"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bf

    .line 1573
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-static {p1}, Lcom/google/googlenav/android/M;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2, v0}, Lcom/google/googlenav/android/P;->startBusinessRatings(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1577
    :goto_2bc
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1575
    :cond_2bf
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1, v3, v0}, Lcom/google/googlenav/android/P;->startBusinessDetailsLayer(Ljava/lang/String;Z)V

    goto :goto_2bc

    .line 1579
    :cond_2c5
    const-string v0, "ftid"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2de

    .line 1581
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1582
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/P;->startTransitStationPage(Ljava/lang/String;)V

    .line 1583
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1588
    :cond_2de
    const-string v0, "saddr"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    const-string v3, "daddr"

    invoke-virtual {v7, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1590
    const-string v5, "dirflg"

    invoke-virtual {v7, v5}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1591
    const-string v6, "myl"

    invoke-virtual {v7, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1592
    if-nez v0, :cond_2fa

    if-eqz v3, :cond_300

    .line 1594
    :cond_2fa
    invoke-direct {p0, v0, v3, v5, v6}, Lcom/google/googlenav/android/M;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1599
    :cond_300
    const-string v0, "msid"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    if-eqz v0, :cond_30e

    .line 1601
    invoke-direct {p0, v4}, Lcom/google/googlenav/android/M;->c(Landroid/net/Uri;)V

    .line 1602
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1606
    :cond_30e
    const-string v0, "ll"

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v0

    .line 1608
    const-string v3, "spn"

    invoke-direct {p0, v7, v3}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v3

    .line 1610
    const-string v5, "z"

    const/4 v6, -0x1

    invoke-direct {p0, v7, v5, v6}, Lcom/google/googlenav/android/M;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I

    move-result v5

    .line 1612
    if-eqz v0, :cond_39f

    .line 1614
    new-instance v1, Lat/B;

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v8, 0x1

    aget v0, v0, v8

    invoke-direct {v1, v6, v0}, Lat/B;-><init>(II)V

    .line 1615
    iget-object v0, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    invoke-virtual {v0, v1}, Lat/u;->c(Lat/B;)V

    .line 1616
    const/4 v0, 0x1

    .line 1618
    :goto_334
    if-eqz v3, :cond_342

    .line 1619
    iget-object v0, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    const/4 v1, 0x0

    aget v1, v3, v1

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v0, v1, v6}, Lat/u;->d(II)V

    .line 1620
    const/4 v0, 0x1

    .line 1625
    :cond_342
    if-nez v3, :cond_350

    if-ltz v5, :cond_350

    .line 1626
    iget-object v0, p0, Lcom/google/googlenav/android/M;->k:Lat/u;

    invoke-static {v5}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->a(Lat/Y;)V

    .line 1627
    const/4 v0, 0x1

    .line 1641
    :cond_350
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 1642
    const-string v1, "cid"

    invoke-virtual {v7, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1643
    if-eqz v1, :cond_38b

    .line 1644
    invoke-static {v1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1645
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38b

    .line 1646
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1647
    const-string v0, "uc"

    invoke-virtual {v7, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1648
    const/4 v0, 0x0

    .line 1649
    const-string v3, "insitu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_383

    .line 1650
    const/4 v0, 0x1

    .line 1652
    :cond_383
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/P;->startBusinessDetailsLayer(Ljava/lang/String;Z)V

    .line 1653
    const/4 v0, -0x2

    goto/16 :goto_1a

    .line 1658
    :cond_38b
    if-nez v0, :cond_38f

    if-eqz v2, :cond_39c

    .line 1661
    :cond_38f
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1}, Lcom/google/googlenav/android/P;->resetForInvocation()V

    .line 1662
    if-eqz v0, :cond_399

    const/4 v0, -0x2

    goto/16 :goto_1a

    :cond_399
    const/4 v0, -0x3

    goto/16 :goto_1a

    .line 1668
    :cond_39c
    const/4 v0, -0x1

    goto/16 :goto_1a

    :cond_39f
    move v0, v1

    goto :goto_334
.end method


# virtual methods
.method public a()I
    .registers 7

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 677
    iget-object v2, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v2}, Lcom/google/googlenav/android/P;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 679
    if-nez v2, :cond_c

    move v0, v1

    .line 720
    :cond_b
    :goto_b
    return v0

    .line 683
    :cond_c
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 685
    if-eqz v3, :cond_23

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_25

    :cond_23
    move v0, v1

    .line 695
    goto :goto_b

    .line 698
    :cond_25
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 699
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/M;->i(Landroid/content/Intent;)I

    move-result v0

    goto :goto_b

    .line 700
    :cond_32
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 701
    :cond_42
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/M;->j(Landroid/content/Intent;)I

    move-result v0

    .line 702
    if-ne v0, v1, :cond_4c

    .line 703
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/M;->k(Landroid/content/Intent;)V

    goto :goto_b

    .line 704
    :cond_4c
    const/4 v1, -0x3

    if-ne v0, v1, :cond_52

    .line 705
    const/16 v0, 0x13

    goto :goto_b

    .line 706
    :cond_52
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_b

    .line 709
    iget-object v1, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->D()V

    goto :goto_b

    .line 712
    :cond_5c
    const-string v4, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 713
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1}, Lcom/google/googlenav/android/P;->startSettingsActivity()V

    goto :goto_b

    .line 715
    :cond_6a
    const-string v4, "com.google.android.apps.maps.LOCATION_SETTINGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 716
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v1}, Lcom/google/googlenav/android/P;->startLatitudeSettingsActivity()V

    goto :goto_b

    .line 719
    :cond_78
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/M;->k(Landroid/content/Intent;)V

    move v0, v1

    .line 720
    goto :goto_b
.end method

.method a(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 1136
    const/4 v1, 0x0

    .line 1139
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1142
    :try_start_b
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 1143
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbq/G;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1144
    new-instance v0, Lcom/google/googlenav/h;

    invoke-direct {v0, v2}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_21} :catch_50

    .line 1153
    :goto_21
    const-string v1, "notification_fired"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1154
    cmp-long v3, v1, v4

    if-eqz v3, :cond_40

    .line 1155
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 1157
    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/h;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/friend/af;->a(JLjava/lang/String;)V

    .line 1162
    :cond_40
    iget-object v1, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-static {p1}, Lcom/google/googlenav/android/M;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "optout"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/googlenav/android/P;->startCheckinWizardFromIntent(Lcom/google/googlenav/h;Ljava/lang/String;Z)V

    .line 1164
    return-void

    .line 1145
    :catch_50
    move-exception v0

    .line 1148
    const-string v2, "ANDROID_INTENT"

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    move-object v0, v1

    goto :goto_21
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1738
    const/16 v0, 0x34

    const-string v1, "f"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/google/googlenav/android/M;->j:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x6f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 1741
    invoke-direct {p0}, Lcom/google/googlenav/android/M;->b()V

    .line 1742
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/google/googlenav/android/M;->b()V

    .line 1724
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1725
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1727
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0}, Lcom/google/googlenav/android/P;->getActivity()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-class v2, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1728
    iget-object v0, p0, Lcom/google/googlenav/android/M;->i:Lcom/google/googlenav/android/P;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/P;->startActivity(Landroid/content/Intent;)V

    .line 1729
    return-void
.end method
