.class public Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;
.super Landroid/widget/TableLayout;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setColumnStretchable(IZ)V

    invoke-virtual {p0, v3, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setColumnShrinkable(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setPadding(IIII)V

    return-void
.end method

.method protected static a(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V
    .registers 8

    if-eqz p2, :cond_39

    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p4, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc/t;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;)V

    goto :goto_14

    :cond_39
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/g;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/g;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;Lbc/t;)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/g;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/g;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/g;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->i()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/googlenav/ui/view/android/rideabout/g;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 8

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v4

    move v3, v1

    move v2, v1

    :goto_c
    if-ge v3, v4, :cond_28

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a()I

    move-result v5

    if-gt p1, v5, :cond_1c

    move v0, v2

    goto :goto_5

    :cond_1c
    invoke-virtual {v0, v1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->measure(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_28
    move v0, v2

    goto :goto_5
.end method

.method public a(Lbc/a;Lbc/t;)I
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/g;

    if-nez v0, :cond_e

    :goto_d
    return v1

    :cond_e
    if-eqz p2, :cond_36

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/g;

    iget v1, v1, Lcom/google/googlenav/ui/view/android/rideabout/g;->b:I

    move v2, v1

    :goto_1b
    iget v1, v0, Lcom/google/googlenav/ui/view/android/rideabout/g;->a:I

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v1

    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/g;->b:I

    iget v4, p1, Lbc/a;->b:F

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(IIF)I

    move-result v0

    add-int v1, v3, v0

    goto :goto_d

    :cond_36
    move v2, v1

    goto :goto_1b
.end method

.method public a(ILandroid/widget/LinearLayout;Lbc/t;)V
    .registers 8

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;)V

    return-void
.end method

.method protected a(Landroid/widget/TableRow;)V
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/h;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/i;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;IILandroid/widget/LinearLayout;Lbc/t;Lbc/t;)V
    .registers 19

    new-instance v8, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v8, v2, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v5, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v4, p1

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;II)V

    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v8, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;Lbc/t;)V

    invoke-direct {p0, p3, p4, p2, v8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/i;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILandroid/widget/LinearLayout;Lbc/t;)V
    .registers 12

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-direct {v1, v2, p1, v3, p5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;I)V

    invoke-virtual {v0, v1, p6}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0, p7}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;)V

    invoke-direct {p0, p3, p4, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/i;IZIILcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;Landroid/widget/LinearLayout;Lbc/t;)V
    .registers 16

    new-instance v6, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v6, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    if-eqz p6, :cond_f

    invoke-virtual {v6, p6}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    :cond_f
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v3, p1

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;II)V

    invoke-virtual {v6, v0, p7}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v6, p8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;)V

    return-void
.end method

.method public b()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g()I

    move-result v0

    goto :goto_7
.end method

.method public b(ILandroid/widget/LinearLayout;Lbc/t;)V
    .registers 7

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;Lbc/t;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/android/rideabout/h;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lbc/a;)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/g;

    if-nez v0, :cond_e

    :goto_d
    return v1

    :cond_e
    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/g;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1d
    move v1, v0

    goto :goto_d

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method

.method public c()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_7
.end method

.method public c(Lbc/a;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/g;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/g;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b()Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, p1, Lbc/a;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_24
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d()V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    invoke-super/range {p0 .. p5}, Landroid/widget/TableLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    move v6, v0

    :goto_5
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/h;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/h;->a(ZIIII)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    :cond_21
    return-void
.end method
