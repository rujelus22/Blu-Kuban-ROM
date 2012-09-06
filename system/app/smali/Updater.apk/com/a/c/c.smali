.class public final Lcom/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Comparator;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/Object;

.field private d:Z

.field private e:[Ljava/lang/Class;

.field private f:I

.field private g:I

.field private h:Landroid/widget/AbsListView$OnScrollListener;

.field private i:I

.field private j:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/a/c/c;->g:I

    iput-boolean v0, p0, Lcom/a/c/c;->k:Z

    return-void
.end method

.method private a(Landroid/widget/AbsListView;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-nez p2, :cond_25

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/a/c/c;->i:I

    if-eq v1, v0, :cond_24

    iput v1, p0, Lcom/a/c/c;->i:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_24
    return-void

    :cond_25
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/c/c;->i:I

    goto :goto_24
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 5

    const v1, 0x40ff0001

    if-eqz p0, :cond_14

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_2b

    check-cast p0, Landroid/view/View;

    if-eqz p2, :cond_15

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    :cond_2b
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_14

    check-cast p0, Landroid/app/Dialog;

    new-instance v0, Lcom/a/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_40

    invoke-virtual {v0, p0}, Lcom/a/a;->a(Landroid/app/Dialog;)Lcom/a/b;

    goto :goto_14

    :cond_40
    invoke-virtual {v0, p0}, Lcom/a/a;->b(Landroid/app/Dialog;)Lcom/a/b;

    goto :goto_14
.end method

.method private varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/a/c/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_56

    iget-object v5, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    :goto_c
    iget-object v0, p0, Lcom/a/c/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_11

    move-object v0, p0

    :cond_11
    iget-object v1, p0, Lcom/a/c/c;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/a/c/c;->d:Z

    iget-object v4, p0, Lcom/a/c/c;->e:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    iget v0, p0, Lcom/a/c/c;->f:I

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/a/c/c;->f:I

    packed-switch v0, :pswitch_data_58

    :cond_25
    :goto_25
    const/4 v0, 0x0

    goto :goto_1b

    :pswitch_27
    iget-object v0, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/a/c/a;->a(Ljava/io/File;JJ)V

    goto :goto_25

    :pswitch_46
    iget-object v0, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, [B

    invoke-static {v0, v1}, Lcom/a/c/a;->b(Ljava/io/File;[B)V

    goto :goto_25

    :cond_56
    move-object v5, p1

    goto :goto_c

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_46
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Lcom/a/c/c;
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/c/c;->f:I

    iput-object p1, p0, Lcom/a/c/c;->c:[Ljava/lang/Object;

    return-object p0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    cmp-long v0, v2, v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_11

    :cond_18
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15

    const/4 v6, 0x0

    const v8, 0x40ff0004

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/c/c;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/a/c/c;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2a
    iget-boolean v0, p0, Lcom/a/c/c;->k:Z

    if-eqz v0, :cond_59

    invoke-virtual {p1, v8}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p3, :cond_59

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    const-string v0, "redrawing"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    move v1, v6

    :goto_57
    if-lt v1, v3, :cond_5a

    :cond_59
    return-void

    :cond_5a
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, v4, v1

    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_7b

    const-string v0, "skip"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_57

    :cond_7b
    const-string v0, "redraw"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6, v5, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_77
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3

    iget-object v0, p0, Lcom/a/c/c;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/a/c/c;->j:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_9
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget v0, p0, Lcom/a/c/c;->g:I

    invoke-direct {p0, p1, v0}, Lcom/a/c/c;->a(Landroid/widget/AbsListView;I)V

    iget-object v0, p0, Lcom/a/c/c;->h:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/a/c/c;->h:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_e
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 16

    iput p2, p0, Lcom/a/c/c;->g:I

    invoke-direct {p0, p1, p2}, Lcom/a/c/c;->a(Landroid/widget/AbsListView;I)V

    instance-of v0, p1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_85

    move-object v5, p1

    check-cast v5, Landroid/widget/ExpandableListView;

    const v0, 0x40ff0004

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_2a

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    sub-int v8, v0, v7

    invoke-virtual {v5}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    move v6, v1

    :goto_28
    if-le v6, v8, :cond_34

    :cond_2a
    iget-object v0, p0, Lcom/a/c/c;->h:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/a/c/c;->h:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_33
    return-void

    :cond_34
    add-int v1, v6, v7

    invoke-virtual {v5, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    if-ltz v1, :cond_6c

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v3, 0x40ff0004

    invoke-virtual {v4, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v3, v11, v9

    if-nez v3, :cond_7f

    const/4 v3, -0x1

    if-ne v2, v3, :cond_70

    invoke-virtual {v5, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :goto_65
    const v1, 0x40ff0004

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_28

    :cond_70
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7d

    const/4 v3, 0x1

    :goto_79
    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_65

    :cond_7d
    const/4 v3, 0x0

    goto :goto_79

    :cond_7f
    const-string v1, "skip!"

    invoke-static {v1}, Lcom/a/c/a;->a(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_85
    const v0, 0x40ff0004

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_2a

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sub-int v4, v0, v3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    move v2, v1

    :goto_ae
    if-gt v2, v4, :cond_2a

    add-int v1, v2, v3

    int-to-long v5, v1

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v1, 0x40ff0004

    invoke-virtual {v7, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-eqz v8, :cond_d1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_e0

    :cond_d1
    long-to-int v1, v5

    invoke-interface {v0, v1, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x40ff0004

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_dc
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_ae

    :cond_e0
    const-string v1, "skip!"

    invoke-static {v1}, Lcom/a/c/a;->a(Ljava/lang/Object;)V

    goto :goto_dc
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/a/c/c;->b([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
