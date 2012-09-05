.class public Lcom/google/android/maps/driveabout/app/bh;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lu/P;

.field private c:[Lu/P;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[Lu/b;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->h:I

    return-void
.end method

.method public static a(I)Landroid/net/Uri;
    .registers 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v0, "fd"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_30

    packed-switch p0, :pswitch_data_3c

    const-string v0, "d"

    :goto_2b
    const-string v2, "mode"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_30
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_35
    const-string v0, "w"

    goto :goto_2b

    :pswitch_38
    const-string v0, "b"

    goto :goto_2b

    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_35
        :pswitch_38
    .end packed-switch
.end method

.method public static a(Lu/P;I[Lu/b;)Landroid/net/Uri;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bi;->a(Lu/P;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bi;->a(I)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bi;->a([Lu/b;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lu/P;I[Lu/b;)Landroid/net/Uri;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/bi;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/bi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/bi;->a([Lu/P;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bi;->a(I)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/bi;->a([Lu/b;)Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bi;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lt/o;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/bh;->b(Lt/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([Lu/b;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/bh;->b([Lu/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu/P;
    .registers 6

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/bh;->b(Ljava/lang/String;)Lt/o;

    move-result-object v1

    if-nez p0, :cond_a

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lu/P;

    invoke-direct {v0, p0, v1, p2, p3}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "google.navigation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(Lt/o;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lt/o;->a()I

    move-result v1

    invoke-static {v1}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lt/o;->b()I

    move-result v1

    invoke-static {v1}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([Lu/b;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_3d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lu/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lu/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lt/o;
    .registers 9

    const-wide v6, 0x412e848000000000L

    const/4 v0, 0x0

    if-nez p0, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_8

    const/4 v2, 0x0

    :try_start_16
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v1, Lt/o;

    mul-double/2addr v2, v6

    double-to-int v2, v2

    mul-double v3, v4, v6

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lt/o;-><init>(II)V
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2d} :catch_2f

    move-object v0, v1

    goto :goto_8

    :catch_2f
    move-exception v1

    goto :goto_8
.end method

.method private static c(Ljava/lang/String;)[Lu/b;
    .registers 12

    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-array v0, v2, [Lu/b;

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    new-array v1, v1, [Lu/b;

    array-length v6, v5

    move v3, v2

    :goto_17
    if-ge v2, v6, :cond_3f

    aget-object v4, v5, v2

    const-string v7, ":"

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-ne v7, v10, :cond_b

    const/4 v7, 0x0

    :try_start_25
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v3, 0x1

    new-instance v9, Lu/b;

    invoke-direct {v9, v7, v8}, Lu/b;-><init>(II)V

    aput-object v9, v1, v3
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_3b} :catch_41

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_17

    :cond_3f
    move-object v0, v1

    goto :goto_b

    :catch_41
    move-exception v1

    goto :goto_b
.end method

.method public static l()Landroid/net/Uri;
    .registers 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "resume"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private m()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "nav"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "daddr"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    const-string v4, "dirflg"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:I

    if-eqz v2, :cond_49

    const-string v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bh;->d:I

    :cond_49
    new-array v2, v1, [Lu/P;

    new-instance v4, Lu/P;

    invoke-direct {v4, v3, v5, v5, v5}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    move v0, v1

    goto :goto_17
.end method


# virtual methods
.method public a()Z
    .registers 9

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bh;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bh;->i:Z

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const-string v0, "google.navigation:"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    move v0, v3

    goto :goto_c

    :cond_19
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    :goto_45
    const-string v0, "sync_layers"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/bh;->j:Z

    :cond_55
    const-string v0, "resume"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bh;->h:I

    move v0, v2

    goto :goto_c

    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_45

    :cond_86
    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput v3, p0, Lcom/google/android/maps/driveabout/app/bh;->d:I

    const-string v4, "w"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    iput v7, p0, Lcom/google/android/maps/driveabout/app/bh;->d:I

    :cond_98
    const-string v0, "entry"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->e:Ljava/lang/String;

    const-string v0, "fd"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->h:I

    move v0, v2

    goto/16 :goto_c

    :cond_b8
    const-string v0, "opt"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bh;->c(Ljava/lang/String;)[Lu/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->f:[Lu/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->f:[Lu/b;

    if-nez v0, :cond_cb

    move v0, v3

    goto/16 :goto_c

    :cond_cb
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "altvia"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_da
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bh;->b(Ljava/lang/String;)Lt/o;

    move-result-object v0

    if-nez v0, :cond_ef

    move v0, v3

    goto/16 :goto_c

    :cond_ef
    new-instance v6, Lu/P;

    invoke-direct {v6, v0}, Lu/P;-><init>(Lt/o;)V

    invoke-virtual {v6, v7}, Lu/P;->a(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_da

    :cond_fb
    const-string v0, "r"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->g:Ljava/lang/String;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sll"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "stitle"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stoken"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/app/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->b:Lu/P;

    const-string v0, "sr"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->b:Lu/P;

    if-nez v0, :cond_136

    move v0, v3

    goto/16 :goto_c

    :cond_136
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->h:I

    :cond_139
    const-string v0, "q"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ll"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/app/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu/P;

    move-result-object v0

    if-nez v0, :cond_15a

    move v0, v3

    goto/16 :goto_c

    :cond_15a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lu/P;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/P;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    const-string v0, "true"

    const-string v4, "goff"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    array-length v0, v0

    if-lt v0, v2, :cond_182

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->b:Lu/P;

    if-nez v0, :cond_185

    :cond_182
    move v0, v3

    goto/16 :goto_c

    :cond_185
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/maps/driveabout/app/bh;->h:I

    :cond_188
    move v0, v2

    goto/16 :goto_c
.end method

.method public b()Lu/P;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public c()Lu/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->b:Lu/P;

    return-object v0
.end method

.method public d()[Lu/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->c:[Lu/P;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bh;->d:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()[Lu/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->f:[Lu/b;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/bh;->h:I

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bh;->j:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/bh;->i:Z

    return v0
.end method
