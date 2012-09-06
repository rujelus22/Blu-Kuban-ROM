.class public Lcom/google/googlenav/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Lcom/google/googlenav/ui/v;

.field private f:I

.field private final g:Lcom/google/googlenav/A;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 102
    const-string v0, "=@latlon:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/googlenav/H;->b:I

    .line 105
    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/googlenav/H;->c:I

    .line 108
    const-string v0, "&"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/googlenav/H;->d:I

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/vnd.google.gmm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/vnd.google-earth.kml+xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/vnd.google-earth.kmz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/H;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/H;->f:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/H;->h:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/google/googlenav/H;->e:Lcom/google/googlenav/ui/v;

    .line 152
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ai()Lcom/google/googlenav/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/H;->g:Lcom/google/googlenav/A;

    .line 153
    return-void
.end method

.method static a(Ljava/lang/String;I)Lcom/google/googlenav/c;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 426
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 428
    :cond_9
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, p1}, Lcom/google/googlenav/c;-><init>(I)V

    .line 453
    :goto_e
    return-object v0

    .line 429
    :cond_f
    const-string v0, "@map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 430
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, v4}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    .line 431
    :cond_1d
    const-string v0, "@gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 432
    new-instance v0, Lcom/google/googlenav/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    .line 433
    :cond_2c
    const-string v0, "@latlon:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 434
    const-string v0, "@latlon:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 436
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4d

    .line 439
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, v4}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    .line 441
    :cond_4d
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 442
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    :try_start_58
    new-instance v0, Lcom/google/googlenav/c;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Laa/b;->b(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v3}, Laa/b;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/c;-><init>(II)V
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_67} :catch_68

    goto :goto_e

    .line 446
    :catch_68
    move-exception v0

    .line 449
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, v4}, Lcom/google/googlenav/c;-><init>(I)V

    goto :goto_e

    .line 453
    :cond_6f
    new-instance v0, Lcom/google/googlenav/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/c;-><init>(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "/gmm/x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_f

    .line 243
    :cond_e
    :goto_e
    return v0

    .line 222
    :cond_f
    const-string v2, ".kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".kmz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".gmml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ".kml?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".kmz?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".gmml?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".kml#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".kmz#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    const-string v2, ".gmml#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 235
    const-string v2, "http://maps.google.com/maps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string v2, "output=kml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 243
    :cond_67
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 299
    if-eqz p2, :cond_a

    .line 300
    invoke-direct {p0, p1}, Lcom/google/googlenav/H;->e(Ljava/lang/String;)I

    move-result v0

    .line 304
    :goto_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 307
    :cond_9
    return-void

    .line 302
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/googlenav/H;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_6
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 473
    move v0, v1

    .line 489
    :goto_2
    const-string v2, "=@latlon:"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 490
    if-gez v0, :cond_b

    .line 505
    return-object p0

    .line 493
    :cond_b
    sget v2, Lcom/google/googlenav/H;->b:I

    add-int/2addr v2, v0

    .line 494
    const-string v0, "&"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    if-lez v3, :cond_49

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 502
    :goto_42
    sget v0, Lcom/google/googlenav/H;->c:I

    add-int/2addr v0, v2

    sget v2, Lcom/google/googlenav/H;->d:I

    add-int/2addr v0, v2

    .line 503
    goto :goto_2

    :cond_49
    move-object p0, v0

    goto :goto_42
.end method

.method static d(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .parameter

    .prologue
    const/16 v4, 0x3f

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 518
    if-eq v2, v6, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_18

    .line 540
    :cond_17
    :goto_17
    return-object v0

    .line 524
    :cond_18
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    const/16 v3, 0x26

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 528
    :goto_28
    :try_start_28
    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 529
    aget-object v3, v2, v1

    .line 530
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 531
    if-eq v4, v6, :cond_4b

    .line 532
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/common/io/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 533
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/common/io/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_4b} :catch_4e

    .line 528
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 537
    :catch_4e
    move-exception v1

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method private e(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/googlenav/H;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->h(Ljava/lang/String;)V

    .line 315
    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lcom/google/googlenav/H;->f:I

    if-nez v0, :cond_6

    .line 181
    iput p1, p0, Lcom/google/googlenav/H;->f:I

    .line 183
    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 208
    const-string v0, "/gmm/x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    .line 209
    :goto_a
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/googlenav/H;->a(Ljava/lang/String;ZZ)V

    .line 210
    return-void

    .line 208
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Ljava/lang/String;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x34

    .line 256
    if-nez p1, :cond_5

    .line 290
    :goto_4
    return-void

    .line 260
    :cond_5
    if-eqz p3, :cond_22

    .line 262
    invoke-static {p1}, Lcom/google/googlenav/H;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {p1}, Lcom/google/googlenav/H;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 267
    const-string v1, "x"

    invoke-static {v2, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 272
    :cond_17
    if-eqz p2, :cond_34

    .line 273
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/H;->a(I)V

    .line 274
    const-string v1, "k"

    invoke-static {v2, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_22
    :goto_22
    iput-object p1, p0, Lcom/google/googlenav/H;->h:Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/H;->j:Z

    .line 287
    iput-boolean p2, p0, Lcom/google/googlenav/H;->i:Z

    .line 288
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/google/googlenav/H;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_4

    .line 277
    :cond_34
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/H;->a(I)V

    .line 278
    const-string v1, "u"

    invoke-static {v2, v1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method b(Ljava/lang/String;)I
    .registers 15
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 324
    .line 325
    invoke-static {p1}, Lcom/google/googlenav/H;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 328
    const-string v0, "view"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    const-string v1, "MAPV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 330
    iget-object v0, p0, Lcom/google/googlenav/H;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/v;->a(I)Z

    .line 338
    :cond_1e
    :goto_1e
    const-string v0, "span"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    if-eqz v0, :cond_120

    .line 340
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 341
    if-ne v1, v5, :cond_70

    move v4, v5

    .line 356
    :goto_31
    const-string v0, "action"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    const-string v1, "BUSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 359
    const-string v0, "q"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    const-string v0, "a"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    invoke-static {v0, v7}, Lcom/google/googlenav/H;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v3

    .line 363
    iget-object v0, p0, Lcom/google/googlenav/H;->g:Lcom/google/googlenav/A;

    const/4 v2, 0x0

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;IIZZZ)V

    move v6, v9

    .line 411
    :cond_5e
    :goto_5e
    if-eqz v6, :cond_116

    const/4 v0, 0x5

    :goto_61
    return v0

    .line 331
    :cond_62
    const-string v1, "SATV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 332
    iget-object v0, p0, Lcom/google/googlenav/H;->e:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/v;->a(I)Z

    goto :goto_1e

    .line 346
    :cond_70
    const/4 v3, 0x0

    :try_start_71
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Laa/b;->b(Ljava/lang/String;I)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_79} :catch_119

    move-result v4

    .line 347
    add-int/lit8 v1, v1, 0x1

    :try_start_7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Laa/b;->b(Ljava/lang/String;I)I
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_84} :catch_11d

    move-result v5

    goto :goto_31

    .line 366
    :cond_86
    const-string v1, "LOCN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 367
    const-string v0, "a"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-static {v0, v7}, Lcom/google/googlenav/H;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v7

    .line 370
    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 371
    const-string v0, "description"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 372
    const-string v0, "phone"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 373
    iget-object v6, p0, Lcom/google/googlenav/H;->g:Lcom/google/googlenav/A;

    move v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    goto :goto_5e

    .line 375
    :cond_bb
    const-string v1, "ROUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 376
    const-string v0, "start"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    invoke-static {v0, v8}, Lcom/google/googlenav/H;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v1

    .line 379
    const-string v0, "end"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    invoke-static {v0, v8}, Lcom/google/googlenav/H;->a(Ljava/lang/String;I)Lcom/google/googlenav/c;

    move-result-object v0

    .line 384
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bZ;->H()I

    move-result v2

    .line 386
    new-instance v3, Lad/j;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->d()Lad/y;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->d()Lad/y;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lad/j;-><init>(Lad/y;Lad/y;)V

    .line 387
    packed-switch v2, :pswitch_data_124

    .line 403
    new-instance v0, Lad/s;

    invoke-direct {v0, v3}, Lad/s;-><init>(Lad/k;)V

    .line 406
    :goto_f4
    iget-object v1, p0, Lcom/google/googlenav/H;->g:Lcom/google/googlenav/A;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/A;->a(Lad/k;)V

    move v6, v9

    .line 408
    goto/16 :goto_5e

    .line 389
    :pswitch_fc
    new-instance v0, Lad/x;

    invoke-direct {v0, v3}, Lad/x;-><init>(Lad/k;)V

    goto :goto_f4

    .line 393
    :pswitch_102
    new-instance v0, Lad/w;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lad/w;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    goto :goto_f4

    .line 398
    :pswitch_110
    new-instance v0, Lad/i;

    invoke-direct {v0, v3}, Lad/i;-><init>(Lad/k;)V

    goto :goto_f4

    .line 411
    :cond_116
    const/4 v0, 0x7

    goto/16 :goto_61

    .line 348
    :catch_119
    move-exception v0

    move v4, v5

    goto/16 :goto_31

    :catch_11d
    move-exception v0

    goto/16 :goto_31

    :cond_120
    move v4, v5

    goto/16 :goto_31

    .line 387
    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_102
        :pswitch_fc
        :pswitch_110
    .end packed-switch
.end method

.method public run()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/googlenav/H;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 196
    :goto_4
    return-void

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/H;->h:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/googlenav/H;->i:Z

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/H;->b(Ljava/lang/String;Z)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/H;->h:Ljava/lang/String;

    goto :goto_4
.end method
