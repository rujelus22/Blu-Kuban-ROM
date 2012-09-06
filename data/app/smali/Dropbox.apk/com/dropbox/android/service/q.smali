.class public final Lcom/dropbox/android/service/q;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:D

.field private final b:[I


# direct methods
.method private constructor <init>(DI)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    iput-wide p1, p0, Lcom/dropbox/android/service/q;->a:D

    .line 1363
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/dropbox/android/service/q;->b:[I

    .line 1364
    return-void
.end method

.method public static a()Lcom/dropbox/android/service/q;
    .registers 4

    .prologue
    .line 1353
    new-instance v0, Lcom/dropbox/android/service/q;

    const-wide/high16 v1, 0x4014

    const/16 v3, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/service/q;-><init>(DI)V

    return-object v0
.end method

.method public static b()Lcom/dropbox/android/service/q;
    .registers 4

    .prologue
    .line 1358
    new-instance v0, Lcom/dropbox/android/service/q;

    const-wide v1, 0x3fb999999999999aL

    const/16 v3, 0xfb

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/service/q;-><init>(DI)V

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .registers 9
    .parameter

    .prologue
    .line 1367
    long-to-double v0, p1

    iget-wide v2, p0, Lcom/dropbox/android/service/q;->a:D

    const-wide/high16 v4, 0x4130

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 1368
    iget-object v1, p0, Lcom/dropbox/android/service/q;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1369
    iget-object v1, p0, Lcom/dropbox/android/service/q;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 1370
    return-void
.end method

.method public final c()Ljava/util/LinkedHashMap;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1378
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 1379
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1380
    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1381
    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1383
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1384
    :goto_16
    iget-object v1, p0, Lcom/dropbox/android/service/q;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_66

    .line 1385
    iget-object v1, p0, Lcom/dropbox/android/service/q;->b:[I

    aget v4, v1, v0

    .line 1386
    if-lez v4, :cond_4a

    .line 1387
    iget-wide v5, p0, Lcom/dropbox/android/service/q;->a:D

    int-to-double v7, v0

    mul-double/2addr v5, v7

    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1389
    iget-object v7, p0, Lcom/dropbox/android/service/q;->b:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_4d

    .line 1390
    :goto_43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1389
    :cond_4d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p0, Lcom/dropbox/android/service/q;->a:D

    add-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    .line 1393
    :cond_66
    return-object v3
.end method
