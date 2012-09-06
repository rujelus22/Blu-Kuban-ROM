.class Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;
.super Lcom/jme3/scene/Node;
.source "DocumentNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/DocumentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeRepresentation"
.end annotation


# instance fields
.field private final DESCRIPTION_HEIGHT:F

.field private final DESCRIPTION_WIDTH:F

.field private final DESCRIPTION_X:F

.field private final DESCRIPTION_Y:F

.field private final DESCRIPTION_Z:F

.field private final GLOW_Z:F

.field private final NODE_LABEL_Z:F

.field private final THUMBNAIL_Z:F

.field private final mDescription:Lcom/jme3/scene/Geometry;

.field private final mGlow:Lcom/jme3/scene/Geometry;

.field private final mNodeLabel:Lcom/jme3/scene/Geometry;

.field private final mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

.field private final mThumbnail:Lcom/jme3/scene/Geometry;

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .registers 12
    .parameter

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v8, -0x40c0

    const/high16 v7, 0x3fc0

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4000

    .line 646
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    .line 637
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_Z:F

    .line 638
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->GLOW_Z:F

    .line 639
    const/high16 v2, 0x4040

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->THUMBNAIL_Z:F

    .line 640
    const/high16 v2, 0x4080

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->NODE_LABEL_Z:F

    .line 641
    const v2, 0x3f7456d6

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_HEIGHT:F

    .line 642
    const v2, 0x3ff456d6

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_WIDTH:F

    .line 643
    const v2, 0x3f666667

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_X:F

    .line 644
    const v2, -0x417d70a4

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_Y:F

    .line 647
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-thumbnail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    .line 648
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2, v7, v7, v6}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 649
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v8, v8, v3}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 650
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getInvisibleMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 651
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 653
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-glow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    .line 654
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 655
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v5

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 656
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getNodeGlowMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 657
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 659
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    .line 660
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getInvisibleMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 661
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 663
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-node-label"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    .line 664
    iget-object v2, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v3, 0x7f080136

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 665
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v2, v7

    .line 666
    .local v0, labelHeight:F
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2, v7, v0, v6}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 667
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    neg-float v3, v0

    div-float/2addr v3, v5

    const/high16 v4, 0x4080

    invoke-virtual {v2, v8, v3, v4}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 668
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 669
    new-instance v2, Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/jme3/scene/Geometry;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    aput-object v6, v4, v5

    invoke-direct {v2, v9, v9, v3, v4}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;-><init>(FFF[Lcom/jme3/scene/Geometry;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/google/android/finsky/exploreactivity/FadeAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->loadDescriptionMaterial()V

    return-void
.end method

.method private loadDescriptionMaterial()V
    .registers 21

    .prologue
    .line 677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z
    invoke-static {v14}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {v14}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->hasBitmapTexture(Lcom/jme3/scene/Geometry;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 740
    :cond_1c
    :goto_1c
    return-void

    .line 680
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 681
    .local v12, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, creator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f0800e4

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f0800e5

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 685
    .local v2, creatorView:Landroid/widget/TextView;
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_128

    .line 686
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    :goto_67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 693
    .local v3, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f08012c

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f08012d

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 696
    .local v11, starView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v14

    if-eqz v14, :cond_16f

    .line 697
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f080133

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const-string v15, "(%,d)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v10

    .line 702
    .local v10, starIndex:F
    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v14

    sub-float v5, v10, v14

    .line 703
    .local v5, partialStar:F
    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v14

    float-to-int v13, v14

    .line 704
    .local v13, wholeStars:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f08012d

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 705
    .local v9, starContainer:Landroid/view/ViewGroup;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_10d
    const/4 v14, 0x5

    if-gt v4, v14, :cond_174

    .line 706
    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 707
    .local v8, star:Landroid/widget/ImageView;
    if-gt v4, v13, :cond_12f

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOn:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 705
    :goto_125
    add-int/lit8 v4, v4, 0x1

    goto :goto_10d

    .line 689
    .end local v3           #description:Ljava/lang/CharSequence;
    .end local v4           #i:I
    .end local v5           #partialStar:F
    .end local v8           #star:Landroid/widget/ImageView;
    .end local v9           #starContainer:Landroid/view/ViewGroup;
    .end local v10           #starIndex:F
    .end local v11           #starView:Landroid/view/View;
    .end local v13           #wholeStars:I
    :cond_128
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_67

    .line 709
    .restart local v3       #description:Ljava/lang/CharSequence;
    .restart local v4       #i:I
    .restart local v5       #partialStar:F
    .restart local v8       #star:Landroid/widget/ImageView;
    .restart local v9       #starContainer:Landroid/view/ViewGroup;
    .restart local v10       #starIndex:F
    .restart local v11       #starView:Landroid/view/View;
    .restart local v13       #wholeStars:I
    :cond_12f
    add-int/lit8 v14, v13, 0x1

    if-le v4, v14, :cond_13f

    .line 710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOff:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_125

    .line 712
    :cond_13f
    const/high16 v14, 0x3e80

    cmpg-float v14, v5, v14

    if-gez v14, :cond_151

    .line 713
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOff:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_125

    .line 714
    :cond_151
    const/high16 v14, 0x3f40

    cmpl-float v14, v5, v14

    if-lez v14, :cond_163

    .line 715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOn:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_125

    .line 717
    :cond_163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarHalf:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_125

    .line 722
    .end local v4           #i:I
    .end local v5           #partialStar:F
    .end local v8           #star:Landroid/widget/ImageView;
    .end local v9           #starContainer:Landroid/view/ViewGroup;
    .end local v10           #starIndex:F
    .end local v13           #wholeStars:I
    :cond_16f
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 725
    :cond_174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v14}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v6

    .line 726
    .local v6, price:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v15, 0x7f080134

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 727
    .local v7, priceView:Landroid/widget/TextView;
    if-eqz v6, :cond_1fe

    .line 728
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    :goto_19b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewGroup;->measure(II)V

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v14, v14, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 736
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {v14}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {v15}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f08012b

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto/16 :goto_1c

    .line 731
    :cond_1fe
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19b
.end method


# virtual methods
.method public update(F)V
    .registers 7
    .parameter "timeDelta"

    .prologue
    const/high16 v1, 0x3f80

    .line 747
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const v0, 0x3eb33333

    div-float v3, p1, v0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v0

    if-eqz v0, :cond_87

    move v0, v1

    :goto_12
    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$916(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F

    .line 748
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    #setter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$902(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F

    .line 749
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    #setter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$902(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F

    .line 750
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->isFadingIn()Z

    move-result v0

    if-eqz v0, :cond_8a

    const/4 v0, 0x1

    :goto_4c
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    .line 751
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->update(F)V

    .line 752
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v2

    const v3, 0x3ff456d6

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    const v4, 0x3f7456d6

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 754
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v2

    const v3, 0x3f666667

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    const v4, -0x417d70a4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 756
    return-void

    .line 747
    :cond_87
    const/high16 v0, -0x4080

    goto :goto_12

    .line 750
    :cond_8a
    const/4 v0, 0x0

    goto :goto_4c
.end method
