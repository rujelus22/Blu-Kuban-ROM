.class Lcom/google/android/maps/driveabout/vector/bs;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1885
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bs;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bs;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1910
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bs;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bs;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1912
    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 1888
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bs;->a()V

    .line 1889
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1892
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bs;->a()V

    .line 1893
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1896
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_17

    .line 1897
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 1898
    const/16 v2, 0xa

    if-ne v1, v2, :cond_11

    .line 1899
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bs;->a()V

    .line 1896
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1902
    :cond_11
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bs;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1905
    :cond_17
    return-void
.end method
