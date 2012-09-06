.class public Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;
.super Ljava/lang/Object;
.source "RegionQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/RegionQuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    .local p3, data:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->x:I

    .line 284
    iput p2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->y:I

    .line 285
    iput-object p3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->data:Ljava/lang/Object;

    .line 286
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 289
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 293
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->y:I

    return v0
.end method

.method public inRegion(IIII)Z
    .registers 6
    .parameter "minX"
    .parameter "minY"
    .parameter "maxX"
    .parameter "maxY"

    .prologue
    .line 319
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->x:I

    if-lt v0, p1, :cond_12

    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->y:I

    if-lt v0, p2, :cond_12

    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->x:I

    if-gt v0, p3, :cond_12

    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->y:I

    if-gt v0, p4, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 324
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    const-string v0, "(%d,%d)=\"%s\""

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->data:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
