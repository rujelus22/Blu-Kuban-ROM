.class public final Lcom/x/google/common/geom/Point;
.super Ljava/lang/Object;


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/x/google/common/geom/Point;->x:I

    iput p2, p0, Lcom/x/google/common/geom/Point;->y:I

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/geom/Point;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/x/google/common/geom/Point;->x:I

    iput v0, p0, Lcom/x/google/common/geom/Point;->x:I

    iget v0, p1, Lcom/x/google/common/geom/Point;->y:I

    iput v0, p0, Lcom/x/google/common/geom/Point;->y:I

    return-void
.end method

.method public static isSamePointWithinError(Lcom/x/google/common/geom/Point;Lcom/x/google/common/geom/Point;I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/x/google/common/geom/Point;->x:I

    iget v2, p1, Lcom/x/google/common/geom/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p2, :cond_5

    iget v1, p0, Lcom/x/google/common/geom/Point;->y:I

    iget v2, p1, Lcom/x/google/common/geom/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    check-cast p1, Lcom/x/google/common/geom/Point;

    iget v1, p0, Lcom/x/google/common/geom/Point;->x:I

    iget v2, p1, Lcom/x/google/common/geom/Point;->x:I

    if-ne v1, v2, :cond_20

    iget v1, p0, Lcom/x/google/common/geom/Point;->y:I

    iget v2, p1, Lcom/x/google/common/geom/Point;->y:I

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public getX()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/geom/Point;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/geom/Point;->y:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/x/google/common/geom/Point;->x:I

    iget v1, p0, Lcom/x/google/common/geom/Point;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setLocation(II)V
    .registers 3

    iput p1, p0, Lcom/x/google/common/geom/Point;->x:I

    iput p2, p0, Lcom/x/google/common/geom/Point;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/x/google/common/geom/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/x/google/common/geom/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
