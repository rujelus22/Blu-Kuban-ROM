.class public Lcom/twitter/android/BaseListActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/twitter/android/util/w;
.implements Lcom/twitter/android/widget/n;
.implements Lcom/twitter/android/widget/o;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Z

.field b:Z

.field protected c:Lcom/twitter/android/client/b;

.field protected d:Lcom/twitter/android/client/g;

.field protected e:Landroid/support/v4/widget/CursorAdapter;

.field protected f:Lcom/twitter/android/widget/Navbar;

.field protected g:Lcom/twitter/android/util/i;

.field protected h:I

.field protected i:Z

.field private j:Z

.field private k:Landroid/app/Activity;

.field private l:I

.field private m:I

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/widget/TextView;

.field private r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private b(Z)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1b
.end method

.method private c(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/util/i;

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/twitter/android/util/i;->a(Landroid/content/Context;)Lcom/twitter/android/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/util/i;

    :cond_18
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/util/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/i;->a(I)I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method


# virtual methods
.method public final a(J)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-nez v0, :cond_5

    move-object v0, p0

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final a(Landroid/os/Bundle;IZZ)V
    .registers 13

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    iput-boolean v5, p0, Lcom/twitter/android/BaseListActivity;->j:Z

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f070042

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->o:Landroid/view/View;

    const v0, 0x7f070043

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->p:Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/twitter/android/BaseListActivity;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-boolean v4, p0, Lcom/twitter/android/BaseListActivity;->b:Z

    if-eqz p1, :cond_ba

    const-string v2, "scroll_pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/BaseListActivity;->l:I

    const-string v2, "scroll_off"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/BaseListActivity;->m:I

    const-string v2, "pending_reqs"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    :goto_70
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    :goto_83
    invoke-virtual {v1, v5, p0}, Lcom/twitter/android/client/b;->a(ILcom/twitter/android/util/w;)V

    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-nez v1, :cond_d7

    if-eqz v0, :cond_b6

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/n;)V

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/BaseListActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-nez v1, :cond_b6

    new-array v1, v6, [I

    fill-array-data v1, :array_de

    invoke-virtual {v0, v7, v1}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_b6
    :goto_b6
    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->f:Lcom/twitter/android/widget/Navbar;

    goto/16 :goto_29

    :cond_ba
    iput v4, p0, Lcom/twitter/android/BaseListActivity;->l:I

    iput v4, p0, Lcom/twitter/android/BaseListActivity;->m:I

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    goto :goto_70

    :cond_c7
    const-string v3, "com.twitter.android.pick_multiple"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_83

    :cond_d3
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_83

    :cond_d7
    if-eqz v0, :cond_b6

    invoke-virtual {v0, v7}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    goto :goto_b6

    nop

    :array_de
    .array-data 0x4
        0x4dt 0x0t 0x7t 0x7ft
        0x5at 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    iget v0, p0, Lcom/twitter/android/BaseListActivity;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    goto :goto_8
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public a_(I)V
    .registers 6

    sparse-switch p1, :sswitch_data_2a

    :goto_3
    return-void

    :sswitch_4
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->a()V

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->onSearchRequested()Z

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_3

    :sswitch_19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :sswitch_data_2a
    .sparse-switch
        0x7f070020 -> :sswitch_4
        0x7f07004d -> :sswitch_19
        0x7f07005a -> :sswitch_8
    .end sparse-switch
.end method

.method public final a_(Z)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseListActivity;->c(I)I

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/cm;

    invoke-direct {v1, p1}, Lcom/twitter/android/cm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final c(Ljava/lang/String;)Lcom/twitter/android/cm;
    .registers 6

    iget-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

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

.method public final c_()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseListActivity;->c(I)I

    return-void
.end method

.method protected final c_(I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->k:Landroid/app/Activity;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0b00f4

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_d
    return-void
.end method

.method public final e()V
    .registers 1

    return-void
.end method

.method public final f()Lcom/twitter/android/widget/f;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lcom/twitter/android/widget/f;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call the multiple parameter versions of this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->i()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1b

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f10

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_1b
    return v0
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/b;->b(ILcom/twitter/android/util/w;)V

    :cond_a
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/util/i;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->g:Lcom/twitter/android/util/i;

    invoke-virtual {v0}, Lcom/twitter/android/util/i;->a()V

    :cond_13
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_25
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->a()V

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_12
    .packed-switch 0x7f0700d5
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->d:Lcom/twitter/android/client/g;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->d:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    :cond_10
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_27

    const v0, 0x7f0700d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    :goto_24
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_27
    return v1

    :cond_28
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected onResume()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_14
    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->j:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->i()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->d:Lcom/twitter/android/client/g;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->d:Lcom/twitter/android/client/g;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    :cond_35
    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3e
    if-ltz v2, :cond_b1

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cm;

    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->c:Lcom/twitter/android/client/b;

    iget-object v3, v0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/twitter/android/client/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    iget v0, v0, Lcom/twitter/android/cm;->b:I

    packed-switch v0, :pswitch_data_be

    :cond_57
    :goto_57
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3e

    :pswitch_5b
    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->b:Z

    if-eqz v0, :cond_57

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, v4}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_57

    :pswitch_69
    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->b:Z

    if-eqz v0, :cond_57

    iput-boolean v4, p0, Lcom/twitter/android/BaseListActivity;->a:Z

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->a()V

    invoke-direct {p0, v4}, Lcom/twitter/android/BaseListActivity;->c(I)I

    goto :goto_57

    :pswitch_7c
    invoke-direct {p0, v4}, Lcom/twitter/android/BaseListActivity;->b(Z)V

    goto :goto_57

    :cond_80
    iget v1, v0, Lcom/twitter/android/cm;->b:I

    packed-switch v1, :pswitch_data_ca

    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_57

    :pswitch_8b
    invoke-direct {p0, v5}, Lcom/twitter/android/BaseListActivity;->b(Z)V

    goto :goto_85

    :pswitch_8f
    iget-boolean v1, p0, Lcom/twitter/android/BaseListActivity;->b:Z

    if-eqz v1, :cond_85

    iput-boolean v5, p0, Lcom/twitter/android/BaseListActivity;->a:Z

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->b()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/twitter/android/BaseListActivity;->c(I)I

    goto :goto_85

    :pswitch_a3
    iget-boolean v1, p0, Lcom/twitter/android/BaseListActivity;->b:Z

    if-eqz v1, :cond_85

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, v5}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_85

    :cond_b1
    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/BaseListActivity;->l:I

    iget v2, p0, Lcom/twitter/android/BaseListActivity;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_29

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_69
        :pswitch_7c
        :pswitch_69
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_8f
        :pswitch_8b
        :pswitch_8f
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "pending_reqs"

    iget-object v2, p0, Lcom/twitter/android/BaseListActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_1d
    iput v2, p0, Lcom/twitter/android/BaseListActivity;->l:I

    iput v0, p0, Lcom/twitter/android/BaseListActivity;->m:I

    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/twitter/android/BaseListActivity;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_off"

    iget v1, p0, Lcom/twitter/android/BaseListActivity;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    if-nez p3, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/BaseListActivity;->getParent()Landroid/app/Activity;

    :cond_8
    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_2

    add-int v0, p2, p3

    if-lt v0, p4, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iput p2, p0, Lcom/twitter/android/BaseListActivity;->h:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    iget-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/BaseListActivity;->i:Z

    :cond_f
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/BaseListActivity;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_12
    return-void
.end method
