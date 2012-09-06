.class public Lcom/google/android/apps/unveil/env/RegionQuadTree;
.super Ljava/lang/Object;
.source "RegionQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/RegionQuadTree$1;,
        Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,
        Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,
        Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LEAF_SPLIT_THRESHOLD:I = 0x10


# instance fields
.field private count:I

.field private final height:I

.field private final northEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>.",
            "Link;"
        }
    .end annotation
.end field

.field private final northWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>.",
            "Link;"
        }
    .end annotation
.end field

.field private final southEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>.",
            "Link;"
        }
    .end annotation
.end field

.field private final southWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>.",
            "Link;"
        }
    .end annotation
.end field

.field private final width:I

.field private final xOrigin:I

.field private final yOrigin:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 8
    .parameter "xOrigin"
    .parameter "yOrigin"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-lez p3, :cond_7

    if-gtz p4, :cond_2a

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2a
    iput p1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I

    .line 88
    iput p2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I

    .line 89
    iput p3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I

    .line 90
    iput p4, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I

    .line 92
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->NW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;-><init>(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;Lcom/google/android/apps/unveil/env/RegionQuadTree;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    .line 93
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->NE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;-><init>(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;Lcom/google/android/apps/unveil/env/RegionQuadTree;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    .line 94
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->SW_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;-><init>(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;Lcom/google/android/apps/unveil/env/RegionQuadTree;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    .line 95
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    sget-object v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->SE_QUADRANT:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;-><init>(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;Lcom/google/android/apps/unveil/env/RegionQuadTree;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterY()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I

    return v0
.end method

.method private addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Item",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    .local p1, item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->getX()I

    move-result v0

    .line 134
    .local v0, itemX:I
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->getY()I

    move-result v1

    .line 135
    .local v1, itemY:I
    iget v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I

    if-lt v0, v2, :cond_1e

    iget v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1e

    iget v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I

    if-lt v1, v2, :cond_1e

    iget v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_49

    .line 137
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outside tree bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_49
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getLink(II)Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    move-result-object v2

    #calls: Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    invoke-static {v2, p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->access$000(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    .line 141
    iget v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->count:I

    .line 142
    return-void
.end method

.method private appendItemsInQuadrant(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;IIIILjava/util/List;Ljava/util/List;)V
    .registers 15
    .parameter
    .parameter "minX"
    .parameter "minY"
    .parameter "maxX"
    .parameter "maxY"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>.",
            "Link;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Item",
            "<TT;>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    .local p1, link:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    .local p6, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;>;"
    .local p7, treesToSearch:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;>;"
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->getItemsInRegion(IIIILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 163
    .local v6, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;>;"
    if-eqz v6, :cond_f

    .line 164
    invoke-interface {p6, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    :cond_f
    return-void
.end method

.method private getCenterX()I
    .registers 3

    .prologue
    .line 103
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I

    iget v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getCenterY()I
    .registers 3

    .prologue
    .line 111
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I

    iget v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getLink(II)Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;
    .registers 4
    .parameter "queryX"
    .parameter "queryY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>.",
            "Link;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I

    move-result v0

    if-ge p1, v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterY()I

    move-result v0

    if-ge p2, v0, :cond_f

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    .line 246
    :goto_e
    return-object v0

    .line 241
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I

    move-result v0

    if-lt p1, v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterY()I

    move-result v0

    if-ge p2, v0, :cond_1e

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    goto :goto_e

    .line 243
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    goto :goto_e

    .line 246
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    goto :goto_e
.end method


# virtual methods
.method public add(IILjava/lang/Object;)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    .local p3, data:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;-><init>(IILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    .line 124
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 227
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    iget v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->count:I

    return v0
.end method

.method public getItemsInRegion(IIII)Ljava/util/List;
    .registers 19
    .parameter "minX"
    .parameter "minY"
    .parameter "maxX"
    .parameter "maxY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Item",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v7, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v8, treesToSearch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;>;"
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_d
    :goto_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_89

    .line 187
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    .line 188
    .local v9, lastIndex:I
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/RegionQuadTree;

    .line 189
    .local v1, currentTree:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterY()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_81

    const/4 v11, 0x1

    .line 193
    .local v11, regionIntersectsNorth:Z
    :goto_2b
    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterY()I

    move-result v2

    move/from16 v0, p4

    if-lt v0, v2, :cond_83

    const/4 v12, 0x1

    .line 194
    .local v12, regionIntersectsSouth:Z
    :goto_34
    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I

    move-result v2

    if-ge p1, v2, :cond_85

    const/4 v13, 0x1

    .line 195
    .local v13, regionIntersectsWest:Z
    :goto_3b
    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I

    move-result v2

    move/from16 v0, p3

    if-lt v0, v2, :cond_87

    const/4 v10, 0x1

    .line 199
    .local v10, regionIntersectsEast:Z
    :goto_44
    if-eqz v11, :cond_62

    .line 200
    if-eqz v13, :cond_54

    .line 201
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->appendItemsInQuadrant(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;IIIILjava/util/List;Ljava/util/List;)V

    .line 204
    :cond_54
    if-eqz v10, :cond_62

    .line 205
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->appendItemsInQuadrant(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;IIIILjava/util/List;Ljava/util/List;)V

    .line 209
    :cond_62
    if-eqz v12, :cond_d

    .line 210
    if-eqz v13, :cond_72

    .line 211
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->appendItemsInQuadrant(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;IIIILjava/util/List;Ljava/util/List;)V

    .line 214
    :cond_72
    if-eqz v10, :cond_d

    .line 215
    iget-object v2, v1, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->appendItemsInQuadrant(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;IIIILjava/util/List;Ljava/util/List;)V

    goto :goto_d

    .line 192
    .end local v10           #regionIntersectsEast:Z
    .end local v11           #regionIntersectsNorth:Z
    .end local v12           #regionIntersectsSouth:Z
    .end local v13           #regionIntersectsWest:Z
    :cond_81
    const/4 v11, 0x0

    goto :goto_2b

    .line 193
    .restart local v11       #regionIntersectsNorth:Z
    :cond_83
    const/4 v12, 0x0

    goto :goto_34

    .line 194
    .restart local v12       #regionIntersectsSouth:Z
    :cond_85
    const/4 v13, 0x0

    goto :goto_3b

    .line 195
    .restart local v13       #regionIntersectsWest:Z
    :cond_87
    const/4 v10, 0x0

    goto :goto_44

    .line 220
    .end local v1           #currentTree:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    .end local v9           #lastIndex:I
    .end local v11           #regionIntersectsNorth:Z
    .end local v12           #regionIntersectsSouth:Z
    .end local v13           #regionIntersectsWest:Z
    :cond_89
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 252
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    const-string v0, "[tree=%s origin=(%d, %d) size=%dx%d count=%d NE=%s NW=%s SW=%s SE=%s]"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->northWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southWestChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree;->southEastChild:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
