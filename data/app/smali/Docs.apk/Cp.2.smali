.class LCp;
.super Ljava/lang/Object;
.source "Layout.java"


# instance fields
.field private a:I

.field private a:[I

.field private b:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    invoke-virtual {p0, p1, p2}, LCp;->a(I[Ljava/lang/Object;)V

    .line 1517
    return-void
.end method

.method public static a(FIZ)F
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1564
    if-eqz p2, :cond_5

    .line 1566
    int-to-float v0, p1

    add-float/2addr v0, p0

    .line 1568
    :goto_4
    return v0

    :cond_5
    int-to-float v0, p1

    add-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    goto :goto_4
.end method


# virtual methods
.method a(FZ)F
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1550
    iget v1, p0, LCp;->a:I

    .line 1551
    if-lez v1, :cond_17

    if-nez p2, :cond_17

    .line 1552
    iget-object v2, p0, LCp;->a:[I

    .line 1553
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_17

    .line 1554
    aget v3, v2, v0

    .line 1555
    int-to-float v4, v3

    cmpl-float v4, v4, p1

    if-lez v4, :cond_14

    .line 1556
    int-to-float v0, v3

    .line 1560
    :goto_13
    return v0

    .line 1553
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1560
    :cond_17
    iget v0, p0, LCp;->b:I

    invoke-static {p1, v0, p2}, LCp;->a(FIZ)F

    move-result v0

    goto :goto_13
.end method

.method a(I[Ljava/lang/Object;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1520
    iput p1, p0, LCp;->b:I

    .line 1523
    if-eqz p2, :cond_4e

    .line 1524
    iget-object v2, p0, LCp;->a:[I

    .line 1525
    array-length v7, p2

    move v6, v4

    move v3, v4

    :goto_a
    if-ge v6, v7, :cond_3a

    aget-object v0, p2, v6

    .line 1526
    instance-of v1, v0, Landroid/text/style/TabStopSpan;

    if-eqz v1, :cond_4b

    .line 1527
    if-nez v2, :cond_29

    .line 1528
    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 1536
    :cond_18
    :goto_18
    add-int/lit8 v2, v3, 0x1

    check-cast v0, Landroid/text/style/TabStopSpan;

    invoke-interface {v0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v0

    aput v0, v1, v3

    move v0, v2

    .line 1525
    :goto_23
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v0

    move-object v2, v1

    goto :goto_a

    .line 1529
    :cond_29
    array-length v1, v2

    if-ne v3, v1, :cond_49

    .line 1530
    mul-int/lit8 v1, v3, 0x2

    new-array v1, v1, [I

    move v5, v4

    .line 1531
    :goto_31
    if-ge v5, v3, :cond_18

    .line 1532
    aget v8, v2, v5

    aput v8, v1, v5

    .line 1531
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1539
    :cond_3a
    const/4 v0, 0x1

    if-le v3, v0, :cond_40

    .line 1540
    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->sort([III)V

    .line 1542
    :cond_40
    iget-object v0, p0, LCp;->a:[I

    if-eq v2, v0, :cond_46

    .line 1543
    iput-object v2, p0, LCp;->a:[I

    .line 1546
    :cond_46
    :goto_46
    iput v3, p0, LCp;->a:I

    .line 1547
    return-void

    :cond_49
    move-object v1, v2

    goto :goto_18

    :cond_4b
    move-object v1, v2

    move v0, v3

    goto :goto_23

    :cond_4e
    move v3, v4

    goto :goto_46
.end method
