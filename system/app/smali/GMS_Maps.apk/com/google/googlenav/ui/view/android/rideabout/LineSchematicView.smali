.class public Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    .line 44
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    .line 66
    invoke-virtual {p0, v3, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setColumnStretchable(IZ)V

    .line 67
    invoke-virtual {p0, v3, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setColumnShrinkable(IZ)V

    .line 68
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setPadding(IIII)V

    .line 69
    return-void
.end method

.method protected static a(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;
    .registers 3
    .parameter

    .prologue
    .line 295
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    if-eqz p2, :cond_39

    .line 114
    invoke-virtual {p4}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p4, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setExpandCommandView(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    .line 116
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

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setExpandCommandView(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/t;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;)V

    goto :goto_14

    .line 123
    :cond_39
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/h;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/h;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->addView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;LaP/t;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/h;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/h;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/h;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->i()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/googlenav/ui/view/android/rideabout/h;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    .line 195
    :goto_5
    return v0

    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v4

    move v3, v1

    move v2, v1

    .line 186
    :goto_c
    if-ge v3, v4, :cond_28

    .line 187
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    .line 188
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a()I

    move-result v5

    if-gt p1, v5, :cond_1c

    move v0, v2

    .line 189
    goto :goto_5

    .line 191
    :cond_1c
    invoke-virtual {v0, v1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->measure(II)V

    .line 192
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getMeasuredHeight()I

    move-result v0

    .line 193
    add-int/2addr v2, v0

    .line 186
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_28
    move v0, v2

    .line 195
    goto :goto_5
.end method

.method public a(LaP/a;LaP/t;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    iget-object v2, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/h;

    .line 218
    if-nez v0, :cond_e

    .line 228
    :goto_d
    return v1

    .line 222
    :cond_e
    if-eqz p2, :cond_36

    .line 223
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/h;

    .line 225
    iget v1, v1, Lcom/google/googlenav/ui/view/android/rideabout/h;->b:I

    move v2, v1

    .line 227
    :goto_1b
    iget v1, v0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:I

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    .line 228
    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v1

    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/h;->b:I

    iget v4, p1, LaP/a;->b:F

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(IIF)I

    move-result v0

    add-int v1, v3, v0

    goto :goto_d

    :cond_36
    move v2, v1

    goto :goto_1b
.end method

.method public a(ILandroid/widget/LinearLayout;LaP/t;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    .line 76
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentFirstWalk;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;)V

    .line 78
    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 79
    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;)V

    .line 80
    return-void
.end method

.method protected a(Landroid/widget/TableRow;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 175
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 177
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/i;)V
    .registers 3
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 278
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/m;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;IILandroid/widget/LinearLayout;LaP/t;LaP/t;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v8, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v8, v2, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    .line 102
    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    .line 103
    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v5, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    move-object v4, p1

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;II)V

    .line 105
    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 106
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v8, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;LaP/t;)V

    .line 107
    invoke-direct {p0, p3, p4, p2, v8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V

    .line 108
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/m;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILandroid/widget/LinearLayout;LaP/t;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    .line 89
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    invoke-direct {v1, v2, p1, v3, p5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;I)V

    .line 91
    invoke-virtual {v0, v1, p6}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 92
    invoke-direct {p0, v0, p7}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;)V

    .line 93
    invoke-direct {p0, p3, p4, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V

    .line 94
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/m;IZIILcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;Landroid/widget/LinearLayout;LaP/t;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v6, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v6, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    .line 129
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    .line 130
    if-eqz p6, :cond_f

    .line 131
    invoke-virtual {v6, p6}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setExpandCommandView(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    .line 134
    :cond_f
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    move-object v3, p1

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;II)V

    .line 136
    invoke-virtual {v6, v0, p7}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 137
    invoke-direct {p0, v6, p8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;)V

    .line 138
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 248
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

.method public b(ILandroid/widget/LinearLayout;LaP/t;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    .line 144
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 147
    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LaP/t;)V

    .line 148
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/view/android/rideabout/i;)V
    .registers 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public b(LaP/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    iget-object v2, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/h;

    .line 203
    if-nez v0, :cond_e

    .line 207
    :goto_d
    return v1

    .line 206
    :cond_e
    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    .line 207
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

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 255
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

.method public c(LaP/a;)V
    .registers 5
    .parameter

    .prologue
    .line 260
    if-nez p1, :cond_3

    .line 274
    :cond_2
    :goto_2
    return-void

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Ljava/util/HashMap;

    iget-object v1, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/h;

    .line 264
    if-eqz v0, :cond_2

    .line 267
    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/h;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    .line 271
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b()Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, p1, LaP/a;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 272
    :cond_24
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d()V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-super/range {p0 .. p5}, Landroid/widget/TableLayout;->onLayout(ZIIII)V

    .line 289
    const/4 v0, 0x0

    move v6, v0

    :goto_5
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_21

    .line 290
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/i;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(ZIIII)V

    .line 289
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    .line 292
    :cond_21
    return-void
.end method
