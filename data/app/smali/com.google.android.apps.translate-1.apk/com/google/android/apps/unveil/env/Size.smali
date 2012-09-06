.class public Lcom/google/android/apps/unveil/env/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/unveil/env/Size;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x6ab7b04cf27fbe29L


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 32
    iput p2, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bmp"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 37
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 38
    return-void
.end method

.method public static final dimensionsAsString(II)Ljava/lang/String;
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRotatedSize(Lcom/google/android/apps/unveil/env/Size;I)Lcom/google/android/apps/unveil/env/Size;
    .registers 5
    .parameter "size"
    .parameter "rotation"

    .prologue
    .line 52
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_e

    .line 54
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v2, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    move-object p0, v0

    .line 56
    .end local p0
    :cond_e
    return-object p0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;
    .registers 8
    .parameter "sizeString"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 77
    :cond_7
    :goto_7
    return-object v4

    .line 64
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 67
    const-string v5, "x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, components:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 70
    const/4 v5, 0x0

    :try_start_17
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 71
    .local v3, width:I
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, height:I
    new-instance v5, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v5, v3, v2}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_29} :catch_2b

    move-object v4, v5

    goto :goto_7

    .line 73
    .end local v2           #height:I
    .end local v3           #width:I
    :catch_2b
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method public static sizeListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    const-string v1, ""

    .line 97
    .local v1, sizesString:Ljava/lang/String;
    if-eqz p0, :cond_40

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 98
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    const/4 v0, 0x1

    .local v0, i:I
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 103
    .end local v0           #i:I
    :cond_40
    return-object v1
.end method

.method public static sizeStringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter "sizes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v6, sizeList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    if-eqz p0, :cond_20

    .line 84
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, pairs:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_20

    aget-object v3, v0, v1

    .line 86
    .local v3, pair:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/unveil/env/Size;->parseFromString(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v5

    .line 87
    .local v5, size:Lcom/google/android/apps/unveil/env/Size;
    if-eqz v5, :cond_1d

    .line 88
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 92
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pair:Ljava/lang/String;
    .end local v4           #pairs:[Ljava/lang/String;
    .end local v5           #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_20
    return-object v6
.end method


# virtual methods
.method public final aspectRatio()F
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public compareTo(Lcom/google/android/apps/unveil/env/Size;)I
    .registers 5
    .parameter "other"

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v2, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/apps/unveil/env/Size;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/Size;->compareTo(Lcom/google/android/apps/unveil/env/Size;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p1, :cond_4

    .line 126
    :cond_3
    :goto_3
    return v1

    .line 121
    :cond_4
    instance-of v2, p1, Lcom/google/android/apps/unveil/env/Size;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/google/android/apps/unveil/env/Size;

    .line 126
    .local v0, otherSize:Lcom/google/android/apps/unveil/env/Size;
    iget v2, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v3, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v3, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/Size;->dimensionsAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
