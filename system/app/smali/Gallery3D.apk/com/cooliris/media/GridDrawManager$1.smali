.class final Lcom/cooliris/media/GridDrawManager$1;
.super Ljava/lang/Object;
.source "GridDrawManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/GridDrawManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cooliris/media/DisplayItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/DisplayItem;)I
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 168
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 177
    :cond_6
    :goto_6
    return v1

    .line 171
    :cond_7
    iget-object v2, p1, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget v2, v2, Lcom/cooliris/media/Vector3f;->z:F

    iget-object v3, p2, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget v3, v3, Lcom/cooliris/media/Vector3f;->z:F

    sub-float v0, v2, v3

    .line 172
    .local v0, delta:F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_17

    .line 173
    const/4 v1, 0x1

    goto :goto_6

    .line 174
    :cond_17
    cmpg-float v2, v0, v4

    if-gez v2, :cond_6

    .line 175
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    check-cast p1, Lcom/cooliris/media/DisplayItem;

    .end local p1
    check-cast p2, Lcom/cooliris/media/DisplayItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/cooliris/media/GridDrawManager$1;->compare(Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/DisplayItem;)I

    move-result v0

    return v0
.end method
