.class public Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;
.super Ljava/lang/Object;
.source "PhotoGridItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoGridItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->width:I

    .line 587
    iput p2, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->height:I

    .line 588
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 597
    instance-of v2, p1, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    if-eqz v2, :cond_15

    move-object v0, p1

    .line 598
    check-cast v0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    .line 599
    .local v0, testObj:Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;
    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->width:I

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->width:I

    if-ne v2, v3, :cond_15

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->height:I

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->height:I

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    .line 601
    .end local v0           #testObj:Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;
    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 606
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
