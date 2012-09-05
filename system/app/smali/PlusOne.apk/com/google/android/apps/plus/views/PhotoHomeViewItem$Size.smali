.class public Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
.super Ljava/lang/Object;
.source "PhotoHomeViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
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
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    .line 478
    iput p2, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    .line 479
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 488
    instance-of v2, p1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    if-eqz v2, :cond_15

    move-object v0, p1

    .line 489
    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    .line 490
    .local v0, testObj:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    if-ne v2, v3, :cond_15

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    iget v3, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    .line 492
    .end local v0           #testObj:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 497
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
