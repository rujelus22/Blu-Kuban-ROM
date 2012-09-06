.class public Lcom/twitter/android/BaseListFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/twitter/android/util/w;
.implements Lcom/twitter/android/widget/o;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/twitter/android/client/b;

.field protected d:Lcom/twitter/android/client/g;

.field protected e:Landroid/support/v4/widget/CursorAdapter;

.field protected f:Lcom/twitter/android/util/i;

.field protected g:Lcom/twitter/android/be;

.field protected h:J

.field protected i:Landroid/widget/ListView;

.field protected j:I

.field protected k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ProgressBar;

.field private s:Lcom/twitter/android/t;

.field private t:Ljava/util/ArrayList;

.field private u:Lcom/twitter/android/s;

.field private final v:Landroid/widget/AdapterView$OnItemClickListener;

.field private final w:Landroid/os/Handler;

.field private final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/twitter/android/q;

    invoke-direct {v0, p0}, Lcom/twitter/android/q;-><init>(Lcom/twitter/android/BaseListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->v:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->w:Landroid/os/Handler;

    new-instance v0, Lcom/twitter/android/r;

    invoke-direct {v0, p0}, Lcom/twitter/android/r;-><init>(Lcom/twitter/android/BaseListFragment;)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->x:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_b
    const-string v1, "data"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private b(Z)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->j()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_19
.end method


# virtual methods
.method public a(J)I
    .registers 7

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->c()I

    move-result v0

    if-ltz v0, :cond_34

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_14
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v1, :cond_2d

    add-int/lit8 v0, v0, 0x1

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_34
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected final a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p1, p2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x1020004

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/BaseListFragment;->q:Landroid/view/View;

    const v0, 0x7f070043

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->r:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/twitter/android/BaseListFragment;->p:Landroid/view/View;

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->l:I

    if-lez v0, :cond_37

    const v0, 0x7f070056

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v4, p0, Lcom/twitter/android/BaseListFragment;->l:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_37
    iget v0, p0, Lcom/twitter/android/BaseListFragment;->m:I

    if-lez v0, :cond_4c

    const v0, 0x7f070057

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/twitter/android/BaseListFragment;->m:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4c
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/twitter/android/BaseListFragment;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget v3, p0, Lcom/twitter/android/BaseListFragment;->j:I

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v3, p0, Lcom/twitter/android/BaseListFragment;->k:I

    if-eqz v3, :cond_76

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    :cond_76
    iget-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    if-eqz v1, :cond_80

    move-object v1, v0

    check-cast v1, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/RefreshableListView;->a(Lcom/twitter/android/widget/o;)V

    :cond_80
    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    return-object v2
.end method

.method protected final a(ILcom/twitter/android/util/w;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method protected a(Landroid/database/Cursor;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_14
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method final a(Lcom/twitter/android/t;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/BaseListFragment;->s:Lcom/twitter/android/t;

    return-void
.end method

.method public a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    invoke-virtual {v0}, Lcom/twitter/android/be;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/be;->a(Z)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->b(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/be;->a(Z)V

    goto :goto_e
.end method

.method protected a(Lcom/twitter/android/widget/f;)V
    .registers 2

    return-void
.end method

.method protected a(Lcom/twitter/android/widget/f;Z)V
    .registers 3

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/cm;

    invoke-direct {v1, p1}, Lcom/twitter/android/cm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/cm;

    invoke-direct {v1, p1, p2}, Lcom/twitter/android/cm;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Z)V
    .registers 2

    return-void
.end method

.method protected final a(I)Z
    .registers 4

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected a_()V
    .registers 1

    return-void
.end method

.method public final a_(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->a_()V

    :cond_5
    return-void
.end method

.method protected final b(Ljava/lang/String;)Lcom/twitter/android/cm;
    .registers 6

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_23

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    iget-object v0, v0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    :goto_1e
    return-object v0

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->d(I)I

    return-void
.end method

.method protected b(I)V
    .registers 4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_26

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_4

    :pswitch_11
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->a()V

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseListFragment;->d(I)I

    iput-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    goto :goto_4

    :pswitch_22
    invoke-direct {p0, v1}, Lcom/twitter/android/BaseListFragment;->b(Z)V

    goto :goto_4

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_5
        :pswitch_11
        :pswitch_22
        :pswitch_11
        :pswitch_22
    .end packed-switch
.end method

.method protected final b(ILcom/twitter/android/util/w;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twitter/android/BaseListFragment;->h:J

    return-void
.end method

.method protected b(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->b_()V

    return-void
.end method

.method protected b_()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method protected c()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected c(I)V
    .registers 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_28

    :cond_4
    :goto_4
    return-void

    :pswitch_5
    invoke-direct {p0, v1}, Lcom/twitter/android/BaseListFragment;->b(Z)V

    goto :goto_4

    :pswitch_9
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->b()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->d(I)I

    iput-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    goto :goto_4

    :pswitch_1b
    iget-boolean v0, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_4

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public final c_()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->d(I)I

    return-void
.end method

.method protected final d(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->f:Lcom/twitter/android/util/i;

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/util/i;->a(Landroid/content/Context;)Lcom/twitter/android/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->f:Lcom/twitter/android/util/i;

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->f:Lcom/twitter/android/util/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/i;->a(I)I

    move-result v0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_d
    return-void
.end method

.method protected d_()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->n:I

    iget v2, p0, Lcom/twitter/android/BaseListFragment;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method protected e(I)Landroid/app/Dialog;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Lcom/twitter/android/widget/f;
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iget-boolean v4, p0, Lcom/twitter/android/BaseListFragment;->a:Z

    if-eqz v4, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    if-ge v1, v0, :cond_29

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_19
    new-instance v4, Lcom/twitter/android/widget/f;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_25
    invoke-direct {v4, v0, v5, v6, v1}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    return-object v4

    :cond_29
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_19

    :cond_31
    move v1, v2

    goto :goto_25
.end method

.method public final f(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twitter/android/BaseListFragment;->e(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_9
    return-void
.end method

.method protected final g()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    if-nez v0, :cond_d

    new-instance v0, Lcom/twitter/android/s;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->w:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/s;-><init>(Lcom/twitter/android/BaseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    :cond_d
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method protected final h()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected final i()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected j()Z
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    sub-int v0, v1, v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected k()V
    .registers 1

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    new-instance v0, Lcom/twitter/android/be;

    invoke-direct {v0}, Lcom/twitter/android/be;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    if-eqz p1, :cond_75

    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->n:I

    const-string v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->o:I

    const-string v0, "pending_reqs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    :goto_30
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_82

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/BaseListFragment;->h:J

    const-string v1, "chmode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "chmode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->j:I

    :cond_5c
    const-string v1, "bg_color"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->k:I

    const-string v1, "empty_title"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->l:I

    const-string v1, "empty_desc"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->m:I

    :goto_74
    return-void

    :cond_75
    iput v4, p0, Lcom/twitter/android/BaseListFragment;->n:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->o:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    goto :goto_30

    :cond_82
    iput-boolean v2, p0, Lcom/twitter/android/BaseListFragment;->b:Z

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/BaseListFragment;->h:J

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->j:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->k:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->l:I

    iput v4, p0, Lcom/twitter/android/BaseListFragment;->m:I

    goto :goto_74
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->l:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/twitter/android/BaseListFragment;->m:I

    if-lez v0, :cond_10

    :cond_8
    const v0, 0x7f03000f

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const v0, 0x7f03000e

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_f
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->f:Lcom/twitter/android/util/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->f:Lcom/twitter/android/util/i;

    invoke-virtual {v0}, Lcom/twitter/android/util/i;->a()V

    :cond_9
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1f
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->u:Lcom/twitter/android/s;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->d:Lcom/twitter/android/client/g;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    :cond_10
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->f()Lcom/twitter/android/widget/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->a(Lcom/twitter/android/widget/f;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->d:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_17
    if-ltz v1, :cond_3f

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->c:Lcom/twitter/android/client/b;

    iget-object v3, v0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/b;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->b(I)V

    :goto_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_17

    :cond_34
    iget v2, v0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {p0, v2}, Lcom/twitter/android/BaseListFragment;->c(I)V

    iget-object v2, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_3f
    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->d_()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_12
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/BaseListFragment;->n:I

    iput v0, p0, Lcom/twitter/android/BaseListFragment;->o:I

    :cond_1a
    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_off"

    iget v1, p0, Lcom/twitter/android/BaseListFragment;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    if-nez p3, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez p2, :cond_e

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->s:Lcom/twitter/android/t;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->s:Lcom/twitter/android/t;

    invoke-interface {v0}, Lcom/twitter/android/t;->b()V

    :cond_e
    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_2

    add-int v0, p2, p3

    if-lt v0, p4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListFragment;->a(Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    invoke-virtual {v0, p2}, Lcom/twitter/android/be;->a(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    invoke-virtual {v0}, Lcom/twitter/android/be;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/twitter/android/BaseListFragment;->b_()V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->g:Lcom/twitter/android/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/be;->a(Z)V

    :cond_16
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/BaseListFragment;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/BaseListFragment;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
