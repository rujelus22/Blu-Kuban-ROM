.class Lcom/google/android/maps/driveabout/vector/bF;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1610
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1635
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1637
    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 1613
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->a()V

    .line 1614
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1617
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->a()V

    .line 1618
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1621
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_17

    .line 1622
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1623
    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    .line 1624
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->a()V

    .line 1621
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1627
    :cond_11
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1630
    :cond_17
    return-void
.end method
