.class public Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;
.super Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;


# instance fields
.field private final b:Lau/v;

.field private final c:Lbc/d;

.field private final d:Lcom/google/googlenav/ui/view/android/rideabout/n;

.field private final e:Lcom/google/googlenav/ui/view/android/rideabout/m;

.field private final f:Lcom/google/googlenav/ui/p;

.field private final g:Lcom/google/googlenav/ui/x;

.field private final h:Lbc/v;

.field private final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lau/v;Lbc/d;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/x;Z)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->f:Lcom/google/googlenav/ui/p;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    iput-boolean p6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->i:Z

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/m;

    const v1, 0x7f0d00c6

    const v2, 0x7f0d00c4

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/m;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    new-instance v0, Lbc/v;

    invoke-direct {v0, p3}, Lbc/v;-><init>(Lbc/d;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:Lbc/v;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;
    .registers 5

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030130

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/View;I)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 4

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {v1, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->f:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method private a(ILjava/util/TreeMap;)Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {v0, p1}, Lau/v;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    invoke-virtual {v0}, Lau/m;->m()Lau/s;

    move-result-object v1

    if-eqz p2, :cond_1e

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;-><init>(Landroid/content/Context;Ljava/util/List;Lau/s;)V

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private a(Lbc/t;Lbc/r;)Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;
    .registers 15

    new-instance v7, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lbc/r;->d()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/widget/TableRow;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p2}, Lbc/r;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p2}, Lbc/r;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v4

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/rideabout/i;Lcom/google/googlenav/ui/view/android/rideabout/i;II)V

    invoke-virtual {p2}, Lbc/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {p2}, Lbc/r;->C()Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p2}, Lbc/r;->d()I

    move-result v1

    invoke-direct {p0, v8, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {p2}, Lbc/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p2}, Lbc/r;->g()Ljava/lang/String;

    move-result-object v2

    :cond_52
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lbc/r;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v10

    invoke-virtual {p2}, Lbc/r;->I()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lbc/r;->h()J

    move-result-wide v3

    invoke-virtual {p2}, Lbc/r;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/x;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v3, 0x3bc

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v10, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v1

    :goto_94
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_97
    invoke-virtual {v7, v0, v8}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    return-object v7

    :cond_9b
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lbc/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbc/r;->h()J

    move-result-wide v3

    invoke-virtual {p2}, Lbc/r;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/x;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v3, 0x3bb

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v10, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v1

    goto :goto_94
.end method

.method private a(Lbc/v;)Ljava/util/TreeMap;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lbc/v;->d()Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :cond_c
    invoke-virtual {p1}, Lbc/v;->a()Lbc/t;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    invoke-virtual {v0, v2}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->b()Lbc/q;

    move-result-object v3

    sget-object v4, Lbc/q;->c:Lbc/q;

    if-ne v3, v4, :cond_27

    check-cast v0, Lbc/r;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/t;Lbc/r;)Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-virtual {p1}, Lbc/v;->d()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v1

    :cond_2e
    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/b;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/b;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->i:Z

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/c;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/c;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private a(Lbc/j;Landroid/widget/LinearLayout;)V
    .registers 14

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lbc/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbc/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lbc/j;->g()Ljava/lang/String;

    move-result-object v1

    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lbc/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v6

    invoke-virtual {p1}, Lbc/j;->I()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lbc/j;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lbc/j;->D()Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/x;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v2, 0x3b6

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    aput-object v0, v3, v8

    aput-object v6, v3, v9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lbc/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbc/j;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lbc/j;->D()Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/x;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v2, 0x3b5

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    aput-object v0, v3, v8

    aput-object v6, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_57
.end method

.method private a(Lbc/k;Lbc/t;)V
    .registers 6

    invoke-virtual {p1}, Lbc/k;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1}, Lbc/k;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/View;I)V

    invoke-virtual {p1}, Lbc/k;->d()I

    move-result v1

    invoke-super {p0, v1, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b(ILandroid/widget/LinearLayout;Lbc/t;)V

    return-void
.end method

.method private a(Lbc/l;Lbc/t;)V
    .registers 11

    invoke-virtual {p1}, Lbc/l;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1}, Lbc/l;->d()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v3, 0x401

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lbc/l;->u()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {p1}, Lbc/l;->d()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;-><init>(Landroid/content/Context;Lau/v;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lbc/l;->d()I

    move-result v1

    invoke-super {p0, v1, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(ILandroid/widget/LinearLayout;Lbc/t;)V

    return-void
.end method

.method private a(Lbc/n;ZLbc/t;)V
    .registers 16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p1}, Lbc/n;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p1}, Lbc/n;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v4

    invoke-virtual {p1}, Lbc/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbc/n;->j()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_8b

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {p1}, Lbc/n;->d()I

    move-result v0

    invoke-direct {p0, v7, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->aY()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lbc/n;->N()Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    :goto_3a
    const/4 v6, 0x0

    if-eqz p2, :cond_8f

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->a:Lcom/google/googlenav/ui/view/android/rideabout/i;

    :goto_3f
    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    if-ne v1, v3, :cond_92

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v6, 0x3c6

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lbc/n;->u()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p1}, Lbc/n;->C()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {p1}, Lbc/n;->d()I

    move-result v3

    invoke-direct {v6, v0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;-><init>(Landroid/content/Context;Lau/v;I)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_80
    invoke-virtual {p1}, Lbc/n;->d()I

    move-result v2

    move-object v0, p0

    move v3, p2

    move-object v8, p3

    invoke-super/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/i;IZIILcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;Landroid/widget/LinearLayout;Lbc/t;)V

    return-void

    :cond_8b
    const/4 v0, 0x0

    goto :goto_1f

    :cond_8d
    const/4 v0, 0x0

    goto :goto_3a

    :cond_8f
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    goto :goto_3f

    :cond_92
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v8, 0x3c5

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-virtual {v3, v8, v9}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p1}, Lbc/n;->C()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_80
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/i;Lbc/j;Ljava/util/TreeMap;Lbc/t;)V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p2}, Lbc/j;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v5

    invoke-virtual {p2}, Lbc/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbc/j;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {p2}, Lbc/j;->d()I

    move-result v2

    invoke-direct {p0, v6, v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p2}, Lbc/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p2}, Lbc/j;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_37
    invoke-direct {p0, p2, v2}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/j;Landroid/widget/LinearLayout;)V

    invoke-virtual {p2}, Lbc/j;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/16 v4, 0x3cb

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v0, [Ljava/lang/String;

    invoke-virtual {p2}, Lbc/j;->F()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/n;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5f
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lbc/j;->B()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {v8}, Lau/v;->aY()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-virtual {p2}, Lbc/j;->M()Z

    move-result v8

    if-eqz v8, :cond_8f

    :goto_74
    invoke-virtual {v3, v4, v7, v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lbc/j;->d()I

    move-result v2

    invoke-virtual {p2}, Lbc/j;->d()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(ILjava/util/TreeMap;)Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v7, p4

    invoke-super/range {v0 .. v7}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/i;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;ILandroid/widget/LinearLayout;Lbc/t;)V

    return-void

    :cond_8f
    move v0, v1

    goto :goto_74
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/i;Lbc/n;Lbc/j;Ljava/util/TreeMap;Lbc/t;Lbc/t;)V
    .registers 20

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p2}, Lbc/n;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v9

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual/range {p3 .. p3}, Lbc/j;->G()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(I)I

    move-result v7

    invoke-virtual {p2}, Lbc/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lbc/j;->d()I

    move-result v1

    invoke-direct {p0, v8, v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lbc/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual/range {p3 .. p3}, Lbc/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3b
    invoke-virtual/range {p3 .. p3}, Lbc/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual/range {p3 .. p3}, Lbc/j;->g()Ljava/lang/String;

    move-result-object v2

    :cond_49
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lbc/j;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lbc/j;->I()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_103

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lbc/j;->h()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lbc/j;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/x;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v3, 0x3ee

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v11, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_8e
    invoke-virtual/range {p3 .. p3}, Lbc/j;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3cb

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lbc/j;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_c2
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/n;

    invoke-virtual {p2}, Lbc/n;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lbc/j;->B()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {v1}, Lau/v;->aY()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-virtual {p2}, Lbc/n;->N()Z

    move-result v1

    if-nez v1, :cond_e0

    invoke-virtual/range {p3 .. p3}, Lbc/j;->M()Z

    move-result v1

    if-eqz v1, :cond_131

    :cond_e0
    const/4 v1, 0x1

    :goto_e1
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {p3 .. p3}, Lbc/j;->d()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lbc/j;->d()I

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

    invoke-super/range {v1 .. v10}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/i;ILcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;Ljava/util/TreeMap;IILandroid/widget/LinearLayout;Lbc/t;Lbc/t;)V

    return-void

    :cond_103
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lbc/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lbc/j;->h()J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Lbc/j;->D()Z

    move-result v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->g:Lcom/google/googlenav/ui/x;

    invoke-static/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/x;)Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    const/16 v3, 0x3ed

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/j;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v11, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/m;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/j;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8e

    :cond_131
    const/4 v1, 0x0

    goto :goto_e1
.end method

.method private d()V
    .registers 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lbc/v;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    invoke-direct {v10, v0}, Lbc/v;-><init>(Lbc/d;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->a:Lcom/google/googlenav/ui/view/android/rideabout/i;

    :cond_b
    :goto_b
    invoke-virtual {v10}, Lbc/v;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {v10}, Lbc/v;->a()Lbc/t;

    move-result-object v5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    invoke-virtual {v0, v5}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v7

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/d;->a:[I

    invoke-virtual {v7}, Lbc/h;->b()Lbc/q;

    move-result-object v2

    invoke-virtual {v2}, Lbc/q;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_86

    goto :goto_b

    :pswitch_2b
    move-object v0, v7

    check-cast v0, Lbc/l;

    invoke-direct {p0, v0, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/l;Lbc/t;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    goto :goto_b

    :pswitch_34
    check-cast v7, Lbc/j;

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/v;)Ljava/util/TreeMap;

    move-result-object v0

    invoke-direct {p0, v1, v7, v0, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/i;Lbc/j;Ljava/util/TreeMap;Lbc/t;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    goto :goto_b

    :pswitch_40
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    invoke-virtual {v0, v5}, Lbc/d;->f(Lbc/t;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    invoke-virtual {v0, v5}, Lbc/d;->c(Lbc/t;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {v10}, Lbc/v;->a()Lbc/t;

    move-result-object v6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c:Lbc/d;

    invoke-virtual {v0, v6}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v3

    move-object v2, v7

    check-cast v2, Lbc/n;

    check-cast v3, Lbc/j;

    invoke-direct {p0, v10}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/v;)Ljava/util/TreeMap;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/i;Lbc/n;Lbc/j;Ljava/util/TreeMap;Lbc/t;Lbc/t;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->b:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move v0, v8

    :goto_6a
    if-nez v0, :cond_b

    check-cast v7, Lbc/n;

    invoke-virtual {v10}, Lbc/v;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7b

    move v0, v8

    :goto_75
    invoke-direct {p0, v7, v0, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/n;ZLbc/t;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/i;->c:Lcom/google/googlenav/ui/view/android/rideabout/i;

    goto :goto_b

    :cond_7b
    move v0, v9

    goto :goto_75

    :pswitch_7d
    check-cast v7, Lbc/k;

    invoke-direct {p0, v7, v5}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lbc/k;Lbc/t;)V

    goto :goto_b

    :cond_83
    return-void

    :cond_84
    move v0, v9

    goto :goto_6a

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

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b:Lau/v;

    invoke-virtual {v0}, Lau/v;->aW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(I)I

    move-result v0

    return v0
.end method

.method public a(Lbc/a;)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:Lbc/v;

    iget-object v2, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v1, v2}, Lbc/v;->a(Lbc/t;)Lbc/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:Lbc/v;

    invoke-virtual {v1}, Lbc/v;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->h:Lbc/v;

    invoke-virtual {v0}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    :cond_16
    invoke-super {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lbc/a;Lbc/t;)I

    move-result v0

    return v0
.end method
