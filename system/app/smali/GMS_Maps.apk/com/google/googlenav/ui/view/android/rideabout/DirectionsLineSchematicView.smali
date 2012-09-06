.class public Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;
.super Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;
.source "SourceFile"


# instance fields
.field private final b:Lad/w;

.field private final c:LaP/d;

.field private final d:Lcom/google/googlenav/ui/view/android/rideabout/r;

.field private final e:Lcom/google/googlenav/ui/view/android/rideabout/q;

.field private final f:Lcom/google/googlenav/ui/g;

.field private final g:Lcom/google/googlenav/ui/p;

.field private final h:LaP/v;

.field private final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lad/w;LaP/d;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/p;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    .line 69
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    .line 70
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->f:Lcom/google/googlenav/ui/g;

    .line 71
    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    .line 72
    iput-boolean p6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->i:Z

    .line 73
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    .line 74
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/q;

    const v1, 0x7f0f00de

    const v2, 0x7f0f00dc

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/q;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    .line 76
    new-instance v0, LaP/v;

    invoke-direct {v0, p3}, LaP/v;-><init>(LaP/d;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:LaP/v;

    .line 77
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d()V

    .line 78
    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040171

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 359
    const v1, 0x7f1003e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 360
    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/View;I)V

    .line 361
    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 4
    .parameter

    .prologue
    .line 340
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 349
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {v1, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 354
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->f:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private a(ILjava/util/TreeMap;)Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {v0, p1}, Lad/w;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v1

    .line 296
    if-eqz p2, :cond_1e

    .line 297
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;-><init>(Landroid/content/Context;Ljava/util/List;Lad/t;)V

    .line 300
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private a(LaP/t;LaP/r;)Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v7, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, LaP/r;->d()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;IZ)V

    .line 210
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/widget/TableRow;)V

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p2}, LaP/r;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v5

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p2}, LaP/r;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v4

    .line 213
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/m;Lcom/google/googlenav/ui/view/android/rideabout/m;II)V

    .line 215
    invoke-virtual {p2}, LaP/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 216
    invoke-virtual {p2}, LaP/r;->C()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 219
    invoke-virtual {p2}, LaP/r;->d()I

    move-result v1

    invoke-direct {p0, v8, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 220
    invoke-virtual {p2}, LaP/r;->f()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 222
    invoke-virtual {p2}, LaP/r;->g()Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_52
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, LaP/r;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v10

    .line 226
    invoke-virtual {p2}, LaP/r;->I()Ljava/lang/String;

    move-result-object v11

    .line 227
    invoke-static {v11}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 228
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, LaP/r;->h()J

    move-result-wide v3

    invoke-virtual {p2}, LaP/r;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v3, 0x497

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v10, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 241
    :goto_94
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    :cond_97
    invoke-virtual {v7, v0, v8}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 244
    return-object v7

    .line 235
    :cond_9b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, LaP/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, LaP/r;->h()J

    move-result-wide v3

    invoke-virtual {p2}, LaP/r;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v3, 0x496

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v10, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v1

    goto :goto_94
.end method

.method private a(LaP/v;)Ljava/util/TreeMap;
    .registers 7
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1}, LaP/v;->d()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 138
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 140
    :cond_c
    invoke-virtual {p1}, LaP/v;->a()LaP/t;

    move-result-object v2

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    invoke-virtual {v0, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, LaP/h;->b()LaP/q;

    move-result-object v3

    sget-object v4, LaP/q;->c:LaP/q;

    if-ne v3, v4, :cond_27

    .line 143
    check-cast v0, LaP/r;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/t;LaP/r;)Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_27
    invoke-virtual {p1}, LaP/v;->d()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v1

    .line 148
    :cond_2e
    return-object v0
.end method

.method private a(LaP/j;Landroid/widget/LinearLayout;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    invoke-virtual {p1}, LaP/j;->f()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, LaP/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 187
    invoke-virtual {p1}, LaP/j;->g()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LaP/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v6

    .line 192
    invoke-virtual {p1}, LaP/j;->I()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-static {v7}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LaP/j;->h()J

    move-result-wide v2

    invoke-virtual {p1}, LaP/j;->D()Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v2, 0x490

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    aput-object v0, v3, v8

    aput-object v6, v3, v9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    :goto_57
    return-void

    .line 200
    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LaP/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LaP/j;->h()J

    move-result-wide v2

    invoke-virtual {p1}, LaP/j;->D()Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v2, 0x48f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    aput-object v0, v3, v8

    aput-object v6, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_57
.end method

.method private a(LaP/k;LaP/t;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-virtual {p1}, LaP/k;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, LaP/k;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/View;I)V

    .line 336
    invoke-virtual {p1}, LaP/k;->d()I

    move-result v1

    invoke-super {p0, v1, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b(ILandroid/widget/LinearLayout;LaP/t;)V

    .line 337
    return-void
.end method

.method private a(LaP/l;LaP/t;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, LaP/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, LaP/l;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v3, 0x4ec

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LaP/l;->u()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {p1}, LaP/l;->d()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;-><init>(Landroid/content/Context;Lad/w;I)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p1}, LaP/l;->d()I

    move-result v1

    invoke-super {p0, v1, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(ILandroid/widget/LinearLayout;LaP/t;)V

    .line 160
    return-void
.end method

.method private a(LaP/n;ZLaP/t;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p1}, LaP/n;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v5

    .line 305
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p1}, LaP/n;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v4

    .line 306
    invoke-virtual {p1}, LaP/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LaP/n;->j()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_8b

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 308
    invoke-virtual {p1}, LaP/n;->d()I

    move-result v0

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 310
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->aW()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, LaP/n;->N()Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    .line 311
    :goto_3a
    const/4 v6, 0x0

    .line 312
    if-eqz p2, :cond_8f

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->a:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 313
    :goto_3f
    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    if-ne v1, v3, :cond_92

    .line 314
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v6, 0x4a4

    invoke-static {v6}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LaP/n;->u()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p1}, LaP/n;->C()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    new-instance v6, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {p1}, LaP/n;->d()I

    move-result v3

    invoke-direct {v6, v0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;-><init>(Landroid/content/Context;Lad/w;I)V

    .line 322
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    :goto_80
    invoke-virtual {p1}, LaP/n;->d()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move-object v8, p3

    invoke-super/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/m;IZIILcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;Landroid/widget/LinearLayout;LaP/t;)V

    .line 331
    return-void

    .line 306
    :cond_8b
    const/4 v0, 0x0

    goto :goto_1f

    .line 310
    :cond_8d
    const/4 v0, 0x0

    goto :goto_3a

    .line 312
    :cond_8f
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    goto :goto_3f

    .line 325
    :cond_92
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v8, 0x4a3

    invoke-static {v8}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {v3, v8, v9}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p1}, LaP/n;->C()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_80
.end method

.method private a(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 365
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/b;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/b;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->i:Z

    if-nez v0, :cond_14

    .line 373
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/c;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/c;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 380
    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 381
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/m;LaP/j;Ljava/util/TreeMap;LaP/t;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p2}, LaP/j;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v5

    .line 165
    invoke-virtual {p2}, LaP/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, LaP/j;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 166
    invoke-virtual {p2}, LaP/j;->d()I

    move-result v2

    invoke-direct {p0, v6, v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 167
    invoke-virtual {p2}, LaP/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 168
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p2}, LaP/j;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    :cond_37
    invoke-direct {p0, p2, v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/j;Landroid/widget/LinearLayout;)V

    .line 171
    invoke-virtual {p2}, LaP/j;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 172
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    const/16 v4, 0x4aa

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v0, [Ljava/lang/String;

    invoke-virtual {p2}, LaP/j;->F()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/r;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_5f
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    const/4 v4, 0x0

    invoke-virtual {p2}, LaP/j;->B()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {v8}, Lad/w;->aW()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-virtual {p2}, LaP/j;->M()Z

    move-result v8

    if-eqz v8, :cond_8f

    :goto_74
    invoke-virtual {v3, v4, v7, v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p2}, LaP/j;->d()I

    move-result v2

    invoke-virtual {p2}, LaP/j;->d()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(ILjava/util/TreeMap;)Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v7, p4

    invoke-super/range {v0 .. v7}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/m;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILandroid/widget/LinearLayout;LaP/t;)V

    .line 181
    return-void

    :cond_8f
    move v0, v1

    .line 176
    goto :goto_74
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/m;LaP/n;LaP/j;Ljava/util/TreeMap;LaP/t;LaP/t;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p2}, LaP/n;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v9

    .line 252
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual/range {p3 .. p3}, LaP/j;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(I)I

    move-result v7

    .line 254
    invoke-virtual {p2}, LaP/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 255
    invoke-virtual/range {p3 .. p3}, LaP/j;->d()I

    move-result v1

    invoke-direct {p0, v8, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 256
    invoke-virtual/range {p3 .. p3}, LaP/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 257
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual/range {p3 .. p3}, LaP/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    :cond_3b
    invoke-virtual/range {p3 .. p3}, LaP/j;->f()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 261
    invoke-virtual/range {p3 .. p3}, LaP/j;->g()Ljava/lang/String;

    move-result-object v2

    .line 263
    :cond_49
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, LaP/j;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v11

    .line 265
    invoke-virtual/range {p3 .. p3}, LaP/j;->I()Ljava/lang/String;

    move-result-object v12

    .line 266
    invoke-static {v12}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_103

    .line 267
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, LaP/j;->h()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LaP/j;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v3, 0x4db

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v11, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    :goto_8e
    invoke-virtual/range {p3 .. p3}, LaP/j;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 279
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x4aa

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, LaP/j;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/r;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    :cond_c2
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/r;

    invoke-virtual {p2}, LaP/n;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, LaP/j;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {v1}, Lad/w;->aW()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-virtual {p2}, LaP/n;->N()Z

    move-result v1

    if-nez v1, :cond_e0

    invoke-virtual/range {p3 .. p3}, LaP/j;->M()Z

    move-result v1

    if-eqz v1, :cond_131

    :cond_e0
    const/4 v1, 0x1

    :goto_e1
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, LaP/j;->d()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, LaP/j;->d()I

    move-result v1

    move-object/from16 v0, p4

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(ILjava/util/TreeMap;)Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p4

    move v6, v9

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-super/range {v1 .. v10}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/m;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;IILandroid/widget/LinearLayout;LaP/t;LaP/t;)V

    .line 291
    return-void

    .line 273
    :cond_103
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, LaP/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, LaP/j;->h()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LaP/j;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/p;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v3, 0x4da

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v11, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8e

    .line 284
    :cond_131
    const/4 v1, 0x0

    goto :goto_e1
.end method

.method private d()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 81
    new-instance v10, LaP/v;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    invoke-direct {v10, v0}, LaP/v;-><init>(LaP/d;)V

    .line 82
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->a:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 83
    :cond_b
    :goto_b
    invoke-virtual {v10}, LaP/v;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 84
    invoke-virtual {v10}, LaP/v;->a()LaP/t;

    move-result-object v5

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    invoke-virtual {v0, v5}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v7

    .line 87
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/d;->a:[I

    invoke-virtual {v7}, LaP/h;->b()LaP/q;

    move-result-object v2

    invoke-virtual {v2}, LaP/q;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_86

    goto :goto_b

    :pswitch_2b
    move-object v0, v7

    .line 89
    check-cast v0, LaP/l;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/l;LaP/t;)V

    .line 90
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    goto :goto_b

    .line 93
    :pswitch_34
    check-cast v7, LaP/j;

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/v;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-direct {p0, v1, v7, v0, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/m;LaP/j;Ljava/util/TreeMap;LaP/t;)V

    .line 95
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    goto :goto_b

    .line 101
    :pswitch_40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    invoke-virtual {v0, v5}, LaP/d;->f(LaP/t;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    invoke-virtual {v0, v5}, LaP/d;->c(LaP/t;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 105
    invoke-virtual {v10}, LaP/v;->a()LaP/t;

    move-result-object v6

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:LaP/d;

    invoke-virtual {v0, v6}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v3

    move-object v2, v7

    .line 108
    check-cast v2, LaP/n;

    check-cast v3, LaP/j;

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/v;)Ljava/util/TreeMap;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/m;LaP/n;LaP/j;Ljava/util/TreeMap;LaP/t;LaP/t;)V

    .line 111
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    move v0, v8

    .line 114
    :goto_6a
    if-nez v0, :cond_b

    .line 115
    check-cast v7, LaP/n;

    invoke-virtual {v10}, LaP/v;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7b

    move v0, v8

    :goto_75
    invoke-direct {p0, v7, v0, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/n;ZLaP/t;)V

    .line 116
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    goto :goto_b

    :cond_7b
    move v0, v9

    .line 115
    goto :goto_75

    .line 120
    :pswitch_7d
    check-cast v7, LaP/k;

    invoke-direct {p0, v7, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/k;LaP/t;)V

    goto :goto_b

    .line 124
    :cond_83
    return-void

    :cond_84
    move v0, v9

    goto :goto_6a

    .line 87
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_34
        :pswitch_40
        :pswitch_7d
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lad/w;

    invoke-virtual {v0}, Lad/w;->aU()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(I)I

    move-result v0

    return v0
.end method

.method public a(LaP/a;)I
    .registers 5
    .parameter

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:LaP/v;

    iget-object v2, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v1, v2}, LaP/v;->a(LaP/t;)LaP/v;

    .line 393
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:LaP/v;

    invoke-virtual {v1}, LaP/v;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:LaP/v;

    invoke-virtual {v0}, LaP/v;->a()LaP/t;

    move-result-object v0

    .line 396
    :cond_16
    invoke-super {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LaP/a;LaP/t;)I

    move-result v0

    return v0
.end method
