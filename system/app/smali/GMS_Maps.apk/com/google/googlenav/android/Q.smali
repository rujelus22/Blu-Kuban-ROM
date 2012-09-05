.class public Lcom/google/googlenav/android/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lat/r;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field private static final o:[Ljava/lang/String;

.field private static final p:LK/bu;


# instance fields
.field private final l:Lcom/google/googlenav/android/T;

.field private final m:Lcom/google/googlenav/ui/D;

.field private n:LaJ/u;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    sput-object v0, Lcom/google/googlenav/android/Q;->a:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->b:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/Q;->c:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->d:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->e:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/plus-acl"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/Q;->f:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->g:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->h:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->i:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->j:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/sign-out"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/Q;->k:Landroid/net/Uri;

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

    sput-object v0, Lcom/google/googlenav/android/Q;->o:[Ljava/lang/String;

    new-instance v0, LK/bw;

    invoke-direct {v0}, LK/bw;-><init>()V

    sget-object v1, Lcom/google/googlenav/android/Q;->o:[Ljava/lang/String;

    invoke-virtual {v0, v1}, LK/bw;->b([Ljava/lang/Object;)LK/bw;

    move-result-object v0

    invoke-virtual {v0}, LK/bw;->a()LK/bu;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/Q;->p:LK/bu;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/T;Lcom/google/googlenav/ui/D;LaJ/u;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    iput-object p2, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    iput-object p3, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I
    .registers 5

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_b

    move-result p3

    :cond_a
    :goto_a
    return p3

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/googlenav/android/Q;)Lcom/google/googlenav/ui/D;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, -0x1

    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ne v1, v2, :cond_1a

    :goto_d
    return-object p0

    :cond_e
    const-string v0, " cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_55

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_b

    :cond_1a
    const-string v0, "cid"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_33

    add-int/lit8 v0, v0, 0x1

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

    :cond_46
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

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

    const/16 v7, 0x2c

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_1d

    move-result-object v0

    const-string v1, "geo"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri is not geo scheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geouri link contains no body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v4, :cond_4a

    move-object v1, v0

    :goto_39
    if-ne v2, v4, :cond_4f

    move-object v0, v3

    :goto_3c
    const-string v2, "optout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz v0, :cond_56

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/Q;->f(Ljava/lang/String;)V

    :goto_49
    return-void

    :cond_4a
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_56
    invoke-static {v1}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_79

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

    :cond_79
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_85

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_85
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0xf4240

    :try_start_92
    invoke-static {v5}, LaJ/B;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2}, LaJ/B;->b(Ljava/lang/String;)I

    move-result v8

    const/16 v2, 0x2e

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_b2

    const-wide/high16 v9, 0x4024

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x7

    int-to-double v1, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_b0} :catch_f1

    move-result-wide v1

    double-to-int v1, v1

    :cond_b2
    new-instance v9, Lcom/google/googlenav/android/S;

    invoke-direct {v9}, Lcom/google/googlenav/android/S;-><init>()V

    if-eqz v0, :cond_154

    invoke-virtual {v9, v0}, Lcom/google/googlenav/android/S;->parseQuery(Ljava/lang/String;)V

    const-string v2, "z"

    invoke-virtual {v9, v2}, Lcom/google/googlenav/android/S;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_154

    :try_start_c4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x16

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I
    :try_end_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_cd} :catch_10b

    move-result v2

    :goto_ce
    if-nez v7, :cond_125

    if-nez v8, :cond_125

    const/4 v5, 0x1

    :goto_d3
    if-eqz v0, :cond_14b

    const-string v0, "q"

    invoke-virtual {v9, v0}, Lcom/google/googlenav/android/S;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_143

    invoke-static {v1}, Lcom/google/googlenav/android/Q;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_152

    invoke-static {v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v5, v6

    :goto_e8
    move-object v0, p0

    move v7, v6

    move v8, v6

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZZLaJ/B;)V

    goto/16 :goto_49

    :catch_f1
    move-exception v0

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

    :catch_10b
    move-exception v0

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

    :cond_125
    iget-object v5, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    new-instance v10, LaJ/B;

    invoke-direct {v10, v7, v8}, LaJ/B;-><init>(II)V

    invoke-virtual {v5, v10}, LaJ/u;->c(LaJ/B;)V

    if-lez v2, :cond_13c

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    invoke-static {v2}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, LaJ/u;->a(LaJ/Y;)V

    move v5, v6

    goto :goto_d3

    :cond_13c
    iget-object v2, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    invoke-virtual {v2, v1, v1}, LaJ/u;->d(II)V

    move v5, v6

    goto :goto_d3

    :cond_143
    const-string v0, "cbp"

    invoke-virtual {v9, v0}, Lcom/google/googlenav/android/S;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14b

    :cond_14b
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aA()V

    goto/16 :goto_49

    :cond_152
    move-object v2, v3

    goto :goto_e8

    :cond_154
    move v2, v6

    goto/16 :goto_ce
.end method

.method private a(Ljava/lang/String;LaJ/M;Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, p1, v1, v1}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aB()V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/bc;->a(LaJ/M;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bc;->e(I)Lcom/google/googlenav/bc;

    move-result-object v1

    const/16 v2, 0x40a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aB()V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZLjava/lang/String;ZLaJ/B;LaJ/H;)V
    .registers 22

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    move-object/from16 v0, p10

    invoke-interface {v1, p1, p2, v0}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    const-string v1, "19"

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x57

    const-string v2, "s"

    invoke-static {v1, v2, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hS;->D()Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/eA;->a(Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    const-string v1, "20"

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {v1}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, LaY/i;->ax()I

    move-result v2

    if-nez v2, :cond_4c

    check-cast v1, LaY/aG;

    invoke-virtual {v1, p1, p3, p4}, LaY/aG;->a(Ljava/lang/String;LaJ/H;I)V

    goto :goto_29

    :cond_4c
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aB()V

    if-eqz p5, :cond_6d

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ap()Lcom/google/googlenav/A;

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

    :cond_6d
    new-instance v1, Lcom/google/googlenav/bc;

    invoke-direct {v1}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/bc;->c(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/googlenav/bc;->d(I)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    if-eqz p8, :cond_cb

    :goto_8f
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->c(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->b(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c0

    const/16 v2, 0x40a

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :cond_c0
    iget-object v2, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    goto/16 :goto_29

    :cond_cb
    const-string p8, "100"

    goto :goto_8f
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZZLaJ/B;)V
    .registers 22

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZLjava/lang/String;ZLaJ/B;LaJ/H;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aA()V

    const-string v0, "saddr"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lau/x;->a()Lau/x;

    move-result-object v0

    :goto_12
    const-string v2, "daddr"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {}, Lau/x;->a()Lau/x;

    move-result-object v1

    :cond_1e
    :goto_1e
    const-string v2, "w"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x2

    :goto_27
    new-instance v3, Lau/j;

    invoke-direct {v3, v0, v1}, Lau/j;-><init>(Lau/x;Lau/x;)V

    packed-switch v2, :pswitch_data_96

    new-instance v0, Lau/r;

    invoke-direct {v0, v3}, Lau/r;-><init>(Lau/k;)V

    :goto_34
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lau/k;)V

    return-void

    :cond_3a
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {p1}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v0

    goto :goto_12

    :cond_45
    move-object v0, v1

    goto :goto_12

    :cond_47
    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {p2}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v1

    goto :goto_1e

    :cond_52
    const-string v2, "r"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_27

    :cond_5c
    invoke-static {}, Lcom/google/googlenav/M;->E()Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "b"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v2, 0x3

    goto :goto_27

    :cond_6c
    const-string v2, "d"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x0

    goto :goto_27

    :cond_76
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bu;->H()I

    move-result v2

    goto :goto_27

    :pswitch_7b
    new-instance v0, Lau/w;

    invoke-direct {v0, v3}, Lau/w;-><init>(Lau/k;)V

    goto :goto_34

    :pswitch_81
    new-instance v0, Lau/v;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    goto :goto_34

    :pswitch_8f
    new-instance v0, Lau/i;

    invoke-direct {v0, v3}, Lau/i;-><init>(Lau/k;)V

    goto :goto_34

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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;)V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aB()V

    if-eqz p3, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_1e
    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    const/16 v1, 0x40a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :cond_50
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/bb;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 6

    if-nez p1, :cond_23

    if-eqz p2, :cond_14

    const-string v0, "19"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "20"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/y;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    :cond_23
    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;)Z
    .registers 5

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

    sget-object v2, Lcom/google/googlenav/android/Q;->p:LK/bu;

    invoke-virtual {v2, v0}, LK/bu;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LaJ/B;->b(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LaJ/B;->b(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_2a} :catch_2c

    move-object v0, v1

    goto :goto_7

    :catch_2c
    move-exception v1

    goto :goto_7

    :catch_2e
    move-exception v1

    goto :goto_7
.end method

.method private b(Landroid/net/Uri;)I
    .registers 8

    new-instance v2, Lat/q;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lat/q;-><init>(Ljava/lang/String;Lat/r;)V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x1a2

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/googlenav/ui/wizard/y;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Lat/d;Lcom/google/googlenav/ui/wizard/y;J)V

    invoke-virtual {v2}, Lat/q;->a()V

    const/4 v0, -0x2

    return v0
.end method

.method static b(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "cu"

    goto :goto_e
.end method

.method private b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1, p2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_13
    return-object v0

    :cond_14
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_13

    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    move-object v0, p0

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_3
.end method

.method private b()V
    .registers 5

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v2}, Lcom/google/googlenav/android/T;->i()Lcom/google/googlenav/android/ac;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/android/R;

    invoke-direct {v3, p0, v1}, Lcom/google/googlenav/android/R;-><init>(Lcom/google/googlenav/android/Q;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->af()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_28} :catch_29

    goto :goto_15

    :catch_29
    move-exception v0

    :cond_2a
    :try_start_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public static c(Ljava/lang/String;)LaJ/B;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_4

    sget-object v0, LaV/q;->a:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_27

    const-string v0, ";"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-static {v0}, LaJ/B;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v0

    goto :goto_4

    :cond_27
    const-string v2, ";"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method private c()Landroid/net/UrlQuerySanitizer;
    .registers 2

    new-instance v0, Lcom/google/googlenav/android/W;

    invoke-direct {v0}, Lcom/google/googlenav/android/W;-><init>()V

    return-object v0
.end method

.method private static c(Landroid/content/Intent;)Lcom/google/googlenav/ah;
    .registers 4

    const-string v0, "placemark-proto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_12
    invoke-static {v1}, Lcom/google/googlenav/ah;->a(Ljava/io/DataInput;)Lcom/google/googlenav/ah;

    move-result-object v0

    const-string v1, "insitu"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->d(Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private c(Landroid/net/Uri;)V
    .registers 6

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v2, "kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

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

    :cond_2d
    const-string v1, "output"

    const-string v2, "kml"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_34
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    sget-object v1, LaV/q;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/Integer;

    sget-object v2, LaV/q;->a:Ljava/lang/String;

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

    const-string v0, "placemark-url"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/net/Uri;)Z
    .registers 12

    const/4 v9, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_51

    move-result-object v0

    if-eqz v0, :cond_5d

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-lt v0, v9, :cond_5d

    aget-object v0, v4, v3

    invoke-static {v0}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aget-object v0, v4, v2

    invoke-static {v0}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v0, 0x2

    :try_start_20
    aget-object v0, v4, v0

    invoke-static {v0}, LaJ/B;->b(Ljava/lang/String;)I

    move-result v7

    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, LaJ/B;->b(Ljava/lang/String;)I

    move-result v8

    new-instance v0, LaJ/B;

    invoke-direct {v0, v7, v8}, LaJ/B;-><init>(II)V
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_32} :catch_5a

    :goto_32
    const-string v1, ""

    array-length v7, v4

    const/4 v8, 0x5

    if-lt v7, v8, :cond_3e

    aget-object v1, v4, v9

    invoke-static {v1}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3e
    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-static {v6}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    if-eqz v0, :cond_5d

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V

    move v0, v2

    :goto_50
    return v0

    :catch_51
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "google.layeritemdetails uri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5a
    move-exception v0

    move-object v0, v1

    goto :goto_32

    :cond_5d
    move v0, v3

    goto :goto_50
.end method

.method private static e(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0xa

    const-string v0, "intent-source"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    const-string v1, "cid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

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

    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/Q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v3, "app_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "skipSearchWizardOnBack"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string v0, "skipSearchWizardOnBack"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_2a
    const-string v5, "searchUiSource"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v1, "searchUiSource"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_38
    const-string v3, "19"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hS;->D()Lcom/google/googlenav/ui/wizard/eA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/wizard/eA;->b(Ljava/lang/String;)V

    :goto_51
    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/android/Q;->a(ZLjava/lang/String;)V

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, LaV/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_d

    :cond_65
    const-string v3, "20"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v3

    invoke-virtual {v3}, LaY/Y;->I()LaY/i;

    move-result-object v3

    if-eqz v3, :cond_88

    invoke-virtual {v3}, LaY/i;->ax()I

    move-result v4

    if-nez v4, :cond_88

    iget-object v4, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v4

    invoke-virtual {v4, v3}, LaY/Y;->f(LaY/i;)V

    :cond_88
    iget-object v3, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v3, v2}, Lcom/google/googlenav/android/T;->b(Ljava/lang/String;)V

    goto :goto_51

    :cond_8e
    iget-object v3, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->aB()V

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v3, v2}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;)V

    goto :goto_51
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/android/S;

    invoke-direct {v0}, Lcom/google/googlenav/android/S;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/S;->parseQuery(Ljava/lang/String;)V

    const-string v1, "ck"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/S;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/T;->d(Ljava/lang/String;)V

    return-void
.end method

.method private g(Landroid/content/Intent;)I
    .registers 5

    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/Q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v1, v0}, Lcom/google/googlenav/android/T;->c(Ljava/lang/String;)V

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, LaV/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_d
.end method

.method private h(Landroid/content/Intent;)I
    .registers 20

    const-string v1, "google.star"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/android/Q;->f(Landroid/content/Intent;)I

    move-result v1

    :goto_10
    return v1

    :cond_11
    const-string v1, "google.recentplace"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/android/Q;->g(Landroid/content/Intent;)I

    move-result v1

    goto :goto_10

    :cond_22
    const-string v1, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/android/Q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/googlenav/android/Q;->c(Ljava/lang/String;)LaJ/B;

    move-result-object v11

    invoke-static {v2}, Lcom/google/googlenav/android/Q;->d(Ljava/lang/String;)I

    move-result v14

    if-nez v1, :cond_c2

    const-string v2, ""

    :goto_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->C()Z

    move-result v8

    const-string v1, "app_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "app_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_cb

    :cond_62
    const/4 v1, 0x1

    :goto_63
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/M;->ak()Z

    move-result v9

    if-eqz v9, :cond_cd

    const/4 v1, 0x0

    move-object v9, v6

    move v13, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    :goto_78
    const/4 v12, 0x0

    if-eqz v11, :cond_92

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v5

    invoke-virtual {v5}, LaJ/u;->f()LaJ/H;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/D;->r()LaJ/u;

    move-result-object v5

    invoke-virtual {v5, v11}, LaJ/u;->c(LaJ/B;)V

    :cond_92
    const/4 v5, -0x1

    if-eq v14, v5, :cond_a9

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v5

    const-string v7, "s"

    invoke-virtual {v5, v2, v7}, LaV/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v15, 0x0

    invoke-virtual {v5, v7, v14, v15}, LaV/n;->a(III)V

    invoke-virtual {v5}, LaV/n;->j()V

    :cond_a9
    if-nez v1, :cond_1c7

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZLjava/lang/String;ZLaJ/B;LaJ/H;)V

    :goto_b2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/google/googlenav/android/Q;->a(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->F()V

    const/16 v1, 0x15

    goto/16 :goto_10

    :cond_c2
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_42

    :cond_cb
    const/4 v1, 0x0

    goto :goto_63

    :cond_cd
    if-nez v1, :cond_1d8

    const-string v9, "app_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    const-string v13, "centerLatitude"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_107

    const-string v13, "centerLongitude"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_107

    const-string v13, "centerLatitude"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "centerLongitude"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    move-object/from16 v16, v0

    new-instance v17, LaJ/B;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v15}, LaJ/B;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, LaJ/u;->c(LaJ/B;)V

    :cond_107
    const-string v13, "zoomLevel"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    const-string v15, "zoomLevel"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v15

    invoke-virtual {v13, v15}, LaJ/u;->a(LaJ/Y;)V

    :cond_120
    :goto_120
    const-string v13, "routePolyline"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14e

    :try_start_128
    new-instance v13, Lam/b;

    sget-object v15, LbD/cO;->d:Lam/e;

    invoke-direct {v13, v15}, Lam/b;-><init>(Lam/e;)V

    const-string v15, "routePolyline"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    if-eqz v15, :cond_14e

    invoke-virtual {v13, v15}, Lam/b;->a([B)Lam/b;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lam/b;->d(I)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_14e

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lam/b;->h(I)Lam/b;

    move-result-object v13

    invoke-static {v13}, LaJ/M;->a(Lam/b;)LaJ/M;
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_14d} :catch_1ce

    move-result-object v4

    :cond_14e
    :goto_14e
    const-string v13, "skipSearchWizardOnBack"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15c

    const-string v5, "skipSearchWizardOnBack"

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_15c
    const-string v13, "searchUiSource"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16a

    const-string v6, "searchUiSource"

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_16a
    const-string v13, "searchNearBy"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_189

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    invoke-virtual {v7}, LaJ/u;->f()LaJ/H;

    move-result-object v7

    const-string v8, "searchNearBy"

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LaJ/B;->a(Ljava/lang/String;)LaJ/B;

    move-result-object v8

    invoke-virtual {v7, v8}, LaJ/H;->a(LaJ/B;)LaJ/H;

    move-result-object v7

    const/4 v8, 0x1

    :cond_189
    const-string v13, "searchIncludeInHistory"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d1

    const-string v10, "searchIncludeInHistory"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    move-object v9, v6

    move v13, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_78

    :cond_19e
    const-string v13, "latitudeSpan"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_120

    const-string v13, "longitudeSpan"

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_120

    const-string v13, "latitudeSpan"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v15, "longitudeSpan"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, LaJ/u;->d(II)V

    goto/16 :goto_120

    :cond_1c7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v10}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;LaJ/M;Z)V

    goto/16 :goto_b2

    :catch_1ce
    move-exception v13

    goto/16 :goto_14e

    :cond_1d1
    move-object v9, v6

    move v13, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_78

    :cond_1d8
    move-object v9, v6

    move v13, v5

    move v6, v1

    move-object v1, v4

    move-object v4, v7

    goto/16 :goto_78
.end method

.method private i(Landroid/content/Intent;)I
    .registers 13

    const/4 v10, -0x1

    const/4 v1, -0x2

    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/T;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZZLaJ/B;)V

    const/16 v10, 0x12

    :cond_30
    :goto_30
    return v10

    :cond_31
    const-string v2, "geo"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/net/Uri;)V

    const/16 v10, 0x14

    goto :goto_30

    :cond_47
    const-string v2, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "application/vnd.google-earth.kml+xml"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;II)V

    move v0, v1

    :goto_69
    if-ne v0, v1, :cond_6d

    const/16 v0, 0x13

    :cond_6d
    move v10, v0

    goto :goto_30

    :cond_6f
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/Q;->m(Landroid/content/Intent;)I

    move-result v0

    goto :goto_69

    :cond_74
    const-string v0, "rideabout"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const/16 v0, 0x61

    const-string v1, "n"

    const-string v2, "n"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/Q;->k(Landroid/content/Intent;)I

    move-result v10

    goto :goto_30

    :cond_8e
    const-string v0, "latitude"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/Q;->l(Landroid/content/Intent;)I

    move-result v10

    goto :goto_30

    :cond_9f
    const-string v0, "google.layeritemdetails"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/Q;->d(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v0, 0x18

    :goto_b7
    move v10, v0

    goto/16 :goto_30

    :cond_ba
    move v0, v10

    goto :goto_b7

    :cond_bc
    const-string v0, "google.businessdetails"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-static {p1}, Lcom/google/googlenav/android/Q;->c(Landroid/content/Intent;)Lcom/google/googlenav/ah;

    move-result-object v0

    if-eqz v0, :cond_db

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->aA()V

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v2, v0}, Lcom/google/googlenav/android/T;->a(Lcom/google/googlenav/ah;)V

    move v10, v1

    goto/16 :goto_30

    :cond_db
    invoke-static {p1}, Lcom/google/googlenav/android/Q;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->aA()V

    const-string v2, "insitu"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v3, v0, v2}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Z)V

    move v10, v1

    goto/16 :goto_30

    :cond_f5
    const-string v0, "google.businessratings"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-static {p1}, Lcom/google/googlenav/android/Q;->c(Landroid/content/Intent;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/android/Q;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_118

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->aA()V

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v3, v0, v2}, Lcom/google/googlenav/android/T;->a(Lcom/google/googlenav/ah;Ljava/lang/String;)V

    move v10, v1

    goto/16 :goto_30

    :cond_118
    invoke-static {p1}, Lcom/google/googlenav/android/Q;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->aA()V

    const-string v3, "insitu"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v4, v0, v2, v3}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v10, v1

    goto/16 :goto_30

    :cond_132
    const-string v0, "google.star"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lcom/google/googlenav/android/Q;->f(Landroid/content/Intent;)I
    :try_end_141
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_141} :catch_144

    move-result v10

    goto/16 :goto_30

    :catch_144
    move-exception v0

    goto/16 :goto_30
.end method

.method private j(Landroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x34

    const-string v1, "x"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/T;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private k(Landroid/content/Intent;)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->k()V

    const/16 v0, 0x1b

    return v0
.end method

.method private l(Landroid/content/Intent;)I
    .registers 8

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aA()V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->c(LaY/Y;)V

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

    invoke-static {}, Lax/aA;->r()V

    :cond_36
    const/16 v0, 0x1a

    return v0

    :cond_39
    const-string v3, "/map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->a(LaY/Y;)V

    goto :goto_22

    :cond_47
    const-string v3, "/friends/location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/T;->a(LaY/Y;Ljava/lang/String;)V

    goto :goto_22

    :cond_59
    const-string v3, "/friends/profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/T;->b(LaY/Y;Ljava/lang/String;)V

    goto :goto_22

    :cond_6b
    const-string v0, "/auto-checkin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "notification_fired"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_92

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lax/aA;->f(Ljava/lang/String;)V

    :cond_92
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->c(LaY/Y;)V

    goto :goto_22

    :cond_98
    const-string v0, "/checkin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    goto/16 :goto_22

    :cond_a5
    const-string v0, "/choose-location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "start_activity_on_complete"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/android/T;->a(LaY/Y;Ljava/lang/Class;)V

    goto/16 :goto_22

    :cond_c0
    const-string v0, "/location-history/enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/T;->b(Landroid/content/Intent;)V

    goto/16 :goto_22

    :cond_cf
    const-string v0, "/location-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->m()V

    goto/16 :goto_22

    :cond_de
    const-string v0, "/manage-places"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->n()V

    goto/16 :goto_22

    :cond_ed
    const-string v0, "/plus-acl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->d(LaY/Y;)V

    goto/16 :goto_22

    :cond_fc
    const-string v0, "/sign-out"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->b(LaY/Y;)V

    goto/16 :goto_22

    :cond_10b
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->a(LaY/Y;)V

    goto/16 :goto_22
.end method

.method private m(Landroid/content/Intent;)I
    .registers 15

    const/4 v4, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/u/m/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, v5}, Lcom/google/googlenav/android/Q;->b(Landroid/net/Uri;)I

    move-result v10

    :goto_1f
    return v10

    :cond_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_25
    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_28} :catch_aa

    move-result-object v0

    if-nez v0, :cond_2d

    const-string v0, ""

    :cond_2d
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    iget-object v2, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/android/T;->c(LaY/Y;)V

    move v1, v8

    :goto_45
    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->c()Landroid/net/UrlQuerySanitizer;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;)Z

    move-result v2

    if-nez v2, :cond_31d

    move v2, v8

    :goto_56
    invoke-virtual {v11, v7}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    const-string v0, "lci"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cbll"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "google.streetview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cbll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cbp"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    const-string v2, "&cbp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8b
    const-string v0, "panoid"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    const-string v2, "&panoid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->c(Ljava/lang/String;)V

    goto/16 :goto_1f

    :catch_aa
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri not properly formatted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b3
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/my-places"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_320

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->l()V

    goto/16 :goto_1f

    :cond_c6
    const-string v0, "nav"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10f

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ah()Z

    move-result v0

    if-eqz v0, :cond_10f

    const-string v0, "daddr"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "sll"

    invoke-direct {p0, v11, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1c3

    const-string v0, "sll"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f4
    const-string v3, "sspn"

    invoke-direct {p0, v11, v3}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_1c6

    const-string v3, "sspn"

    invoke-virtual {v11, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_102
    invoke-static {v12, v0, v3}, LaN/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/googlenav/ay;->b(Ljava/lang/String;)V

    :cond_10f
    const-string v0, "t"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "k"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_125

    const-string v3, "h"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    :cond_125
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v8}, Lcom/google/googlenav/ui/D;->a(I)Z

    move-result v1

    :cond_12b
    :goto_12b
    const-string v0, "q"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "near"

    invoke-virtual {v11, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1ea

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_147

    const-string v1, " near "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_147
    const-string v1, "sll"

    invoke-direct {p0, v11, v1}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_31a

    new-instance v3, LaJ/H;

    new-instance v1, LaJ/B;

    aget v2, v5, v7

    aget v6, v5, v8

    invoke-direct {v1, v2, v6}, LaJ/B;-><init>(II)V

    const/16 v2, 0xa

    invoke-static {v2}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v2

    iget-object v6, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v6}, Lcom/google/googlenav/ui/D;->b()I

    move-result v6

    iget-object v12, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v12}, Lcom/google/googlenav/ui/D;->c()Z

    move-result v12

    invoke-direct {v3, v1, v2, v6, v12}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    :goto_16f
    const-string v1, "sspn"

    invoke-direct {p0, v11, v1}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_179

    aget v4, v1, v7

    :cond_179
    invoke-static {v0}, Lcom/google/googlenav/android/Q;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d9

    const-string v1, "cid"

    invoke-virtual {v11, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18d

    const-string v1, "latlng"

    invoke-direct {p0, v11, v1}, Lcom/google/googlenav/android/Q;->b(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_18d
    if-eqz v1, :cond_316

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " cid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a6
    move-object v2, v0

    :goto_1a7
    const-string v0, "iwd"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_313

    move v6, v8

    :goto_1b6
    if-nez v5, :cond_1df

    invoke-static {v1}, Lcom/google/googlenav/android/Q;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1df

    invoke-direct {p0, v1, v2, v6, v8}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1f

    :cond_1c3
    move-object v0, v9

    goto/16 :goto_f4

    :cond_1c6
    move-object v3, v9

    goto/16 :goto_102

    :cond_1c9
    const-string v3, "m"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/D;->a(I)Z

    move-result v1

    goto/16 :goto_12b

    :cond_1d9
    invoke-static {v0}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    goto :goto_1a7

    :cond_1df
    if-nez v5, :cond_1e8

    move v5, v8

    :goto_1e2
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;LaJ/H;IZZZZLaJ/B;)V

    goto/16 :goto_1f

    :cond_1e8
    move v5, v7

    goto :goto_1e2

    :cond_1ea
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/maps/place"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23f

    const-string v0, "cid"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "georestrict"

    invoke-virtual {v11, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/googlenav/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23f

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aA()V

    const-string v1, "uc"

    invoke-virtual {v11, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "insitu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_310

    :goto_21f
    const-string v1, "openratings"

    const-string v2, "action"

    invoke-virtual {v11, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_238

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-static {p1}, Lcom/google/googlenav/android/Q;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2, v8}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1f

    :cond_238
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v1, v0, v8}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1f

    :cond_23f
    const-string v0, "saddr"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "daddr"

    invoke-virtual {v11, v3}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "dirflg"

    invoke-virtual {v11, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "myl"

    invoke-virtual {v11, v9}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_25b

    if-eqz v3, :cond_260

    :cond_25b
    invoke-direct {p0, v0, v3, v6, v9}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_260
    const-string v0, "msid"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26d

    invoke-direct {p0, v5}, Lcom/google/googlenav/android/Q;->c(Landroid/net/Uri;)V

    goto/16 :goto_1f

    :cond_26d
    const-string v0, "ll"

    invoke-direct {p0, v11, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v0

    const-string v3, "spn"

    invoke-direct {p0, v11, v3}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;)[I

    move-result-object v3

    const-string v6, "z"

    invoke-direct {p0, v11, v6, v4}, Lcom/google/googlenav/android/Q;->a(Landroid/net/UrlQuerySanitizer;Ljava/lang/String;I)I

    move-result v6

    if-eqz v0, :cond_30e

    new-instance v1, LaJ/B;

    aget v9, v0, v7

    aget v0, v0, v8

    invoke-direct {v1, v9, v0}, LaJ/B;-><init>(II)V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    invoke-virtual {v0, v1}, LaJ/u;->c(LaJ/B;)V

    move v0, v8

    :goto_290
    if-eqz v3, :cond_29c

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    aget v1, v3, v7

    aget v9, v3, v8

    invoke-virtual {v0, v1, v9}, LaJ/u;->d(II)V

    move v0, v8

    :cond_29c
    if-nez v3, :cond_2aa

    if-ltz v6, :cond_2aa

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    invoke-static {v6}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/u;->a(LaJ/Y;)V

    move v0, v8

    :cond_2aa
    const-string v1, "layer"

    invoke-virtual {v11, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c0

    const/16 v3, 0x74

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2c0

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v8, v7}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    move v0, v8

    :cond_2c0
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f8

    const-string v1, "cid"

    invoke-virtual {v11, v1}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f8

    invoke-static {v1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f8

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aA()V

    const-string v0, "uc"

    invoke-virtual {v11, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "insitu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30c

    :goto_2f1
    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1, v8}, Lcom/google/googlenav/android/T;->a(Ljava/lang/String;Z)V

    goto/16 :goto_1f

    :cond_2f8
    if-nez v0, :cond_2fc

    if-eqz v2, :cond_309

    :cond_2fc
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aA()V

    if-eqz v0, :cond_307

    move v0, v10

    :goto_304
    move v10, v0

    goto/16 :goto_1f

    :cond_307
    const/4 v0, -0x3

    goto :goto_304

    :cond_309
    move v10, v4

    goto/16 :goto_1f

    :cond_30c
    move v8, v7

    goto :goto_2f1

    :cond_30e
    move v0, v1

    goto :goto_290

    :cond_310
    move v8, v7

    goto/16 :goto_21f

    :cond_313
    move v6, v7

    goto/16 :goto_1b6

    :cond_316
    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1a6

    :cond_31a
    move-object v3, v9

    goto/16 :goto_16f

    :cond_31d
    move v2, v7

    goto/16 :goto_56

    :cond_320
    move v1, v7

    goto/16 :goto_45
.end method


# virtual methods
.method public a()I
    .registers 6

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_b

    move v0, v1

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    if-eqz v0, :cond_22

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_24

    :cond_22
    move v0, v1

    goto :goto_a

    :cond_24
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-direct {p0, v2}, Lcom/google/googlenav/android/Q;->h(Landroid/content/Intent;)I

    move-result v0

    goto :goto_a

    :cond_31
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_41
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/Q;->i(Landroid/content/Intent;)I

    move-result v0

    if-ne v0, v1, :cond_4b

    invoke-direct {p0, v2}, Lcom/google/googlenav/android/Q;->j(Landroid/content/Intent;)V

    goto :goto_a

    :cond_4b
    const/4 v1, -0x3

    if-ne v0, v1, :cond_51

    const/16 v0, 0x13

    goto :goto_a

    :cond_51
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_a

    iget-object v1, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->F()V

    goto :goto_a

    :cond_5b
    const-string v3, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->o()V

    const/4 v0, -0x2

    goto :goto_a

    :cond_6a
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/Q;->j(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_a
.end method

.method public a(LaJ/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/Q;->n:LaJ/u;

    return-void
.end method

.method a(Landroid/content/Intent;)V
    .registers 8

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    :try_start_b
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lam/b;

    sget-object v3, LbF/G;->c:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v0}, Lam/b;->a([B)Lam/b;

    move-result-object v2

    new-instance v0, Lcom/google/googlenav/h;

    invoke-direct {v0, v2}, Lcom/google/googlenav/h;-><init>(Lam/b;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_21} :catch_50

    :goto_21
    const-string v1, "notification_fired"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-eqz v3, :cond_40

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    sub-long v1, v3, v1

    invoke-static {v0}, Lcom/google/googlenav/bI;->a(Lcom/google/googlenav/h;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lax/aA;->a(JLjava/lang/String;)V

    :cond_40
    iget-object v1, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-static {p1}, Lcom/google/googlenav/android/Q;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "optout"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/googlenav/android/T;->a(Lcom/google/googlenav/h;Ljava/lang/String;Z)V

    return-void

    :catch_50
    move-exception v0

    const-string v2, "ANDROID_INTENT"

    invoke-static {v2, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    move-object v0, v1

    goto :goto_21
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    const/16 v0, 0x34

    const-string v1, "f"

    invoke-static {v0, v1, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->m:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x66

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/googlenav/android/Q;->b()V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0}, Lcom/google/googlenav/android/T;->j()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    const-class v2, Lcom/google/android/maps/MapsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/googlenav/android/Q;->l:Lcom/google/googlenav/android/T;

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/T;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
