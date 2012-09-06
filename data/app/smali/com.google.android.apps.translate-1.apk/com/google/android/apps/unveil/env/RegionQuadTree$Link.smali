.class Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;
.super Ljava/lang/Object;
.source "RegionQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/RegionQuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Link"
.end annotation


# instance fields
.field private intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>;"
        }
    .end annotation
.end field

.field private leafNodeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Item",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

.field final synthetic this$0:Lcom/google/android/apps/unveil/env/RegionQuadTree;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;Lcom/google/android/apps/unveil/env/RegionQuadTree;)V
    .registers 4
    .parameter
    .parameter "quadrant"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    .local p3, parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->this$0:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    .line 359
    iput-object p3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    .line 360
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    return-void
.end method

.method private addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Item",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    .local p1, newItem:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    if-eqz v0, :cond_a

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #calls: Lcom/google/android/apps/unveil/env/RegionQuadTree;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$100(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    .line 386
    :goto_9
    return-void

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 372
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->splitLeaf()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #calls: Lcom/google/android/apps/unveil/env/RegionQuadTree;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$100(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    goto :goto_9

    .line 379
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 383
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private canSplit()Z
    .registers 4

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    const/4 v0, 0x1

    .line 519
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1c

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I
    invoke-static {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$600(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v1

    if-le v1, v0, :cond_1c

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I
    invoke-static {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$700(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v1

    if-le v1, v0, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private getHeight()I
    .registers 4

    .prologue
    .line 495
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    sget-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$1;->$SwitchMap$com$google$android$apps$unveil$env$RegionQuadTree$Quadrant:[I

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 509
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown quadrant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 499
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$700(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 506
    :goto_34
    return v0

    :pswitch_35
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->height:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$700(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_34

    .line 495
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_35
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method

.method private getMinX()I
    .registers 4

    .prologue
    .line 433
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    sget-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$1;->$SwitchMap$com$google$android$apps$unveil$env$RegionQuadTree$Quadrant:[I

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 445
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown quadrant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 437
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #calls: Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterX()I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$200(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    .line 442
    :goto_32
    return v0

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->xOrigin:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$300(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    goto :goto_32

    .line 433
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method private getMinY()I
    .registers 4

    .prologue
    .line 453
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    sget-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$1;->$SwitchMap$com$google$android$apps$unveil$env$RegionQuadTree$Quadrant:[I

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 465
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown quadrant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 457
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->yOrigin:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$400(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    .line 462
    :goto_32
    return v0

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #calls: Lcom/google/android/apps/unveil/env/RegionQuadTree;->getCenterY()I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$500(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    goto :goto_32

    .line 453
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_33
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method

.method private getWidth()I
    .registers 4

    .prologue
    .line 473
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    sget-object v0, Lcom/google/android/apps/unveil/env/RegionQuadTree$1;->$SwitchMap$com$google$android$apps$unveil$env$RegionQuadTree$Quadrant:[I

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 487
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown quadrant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->quadrant:Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Quadrant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 479
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$600(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 484
    :goto_36
    return v0

    :pswitch_37
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->parent:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #getter for: Lcom/google/android/apps/unveil/env/RegionQuadTree;->width:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$600(Lcom/google/android/apps/unveil/env/RegionQuadTree;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 473
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private splitLeaf()Z
    .registers 8

    .prologue
    .line 531
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->canSplit()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 532
    new-instance v2, Lcom/google/android/apps/unveil/env/RegionQuadTree;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->getMinX()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->getMinY()I

    move-result v4

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->getWidth()I

    move-result v5

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/RegionQuadTree;-><init>(IIII)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    .line 533
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;

    .line 534
    .local v1, item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    #calls: Lcom/google/android/apps/unveil/env/RegionQuadTree;->addItem(Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->access$100(Lcom/google/android/apps/unveil/env/RegionQuadTree;Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;)V

    goto :goto_23

    .line 536
    .end local v1           #item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    :cond_35
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    .line 537
    const/4 v2, 0x1

    .line 539
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_39
    return v2

    :cond_3a
    const/4 v2, 0x0

    goto :goto_39
.end method


# virtual methods
.method getItemsInRegion(IIIILjava/util/List;)Ljava/util/List;
    .registers 10
    .parameter "minX"
    .parameter "minY"
    .parameter "maxX"
    .parameter "maxY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/RegionQuadTree$Item",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    .local p5, treesToSearch:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>;>;"
    const/4 v2, 0x0

    .line 411
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_26

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;

    .line 415
    .local v1, item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->inRegion(IIII)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 416
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 420
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;>;"
    :cond_26
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    if-eqz v3, :cond_2f

    .line 421
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_2f
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 545
    .local p0, this:Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;,"Lcom/google/android/apps/unveil/env/RegionQuadTree<TT;>.Link;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    if-eqz v3, :cond_b

    .line 546
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->intermediateNode:Lcom/google/android/apps/unveil/env/RegionQuadTree;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/RegionQuadTree;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    :goto_a
    return-object v3

    .line 547
    :cond_b
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_42

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/RegionQuadTree$Link;->leafNodeItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;

    .line 551
    .local v2, item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 554
    .end local v2           #item:Lcom/google/android/apps/unveil/env/RegionQuadTree$Item;,"Lcom/google/android/apps/unveil/env/RegionQuadTree$Item<TT;>;"
    :cond_38
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 557
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_42
    const-string v3, "<NIL>"

    goto :goto_a
.end method
