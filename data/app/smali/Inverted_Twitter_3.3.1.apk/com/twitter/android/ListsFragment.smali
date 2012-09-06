.class public Lcom/twitter/android/ListsFragment;
.super Lcom/twitter/android/BaseListFragment;


# instance fields
.field l:I

.field private m:Lcom/twitter/android/ck;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private h(I)V
    .registers 7

    iget v0, p0, Lcom/twitter/android/ListsFragment;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/ListsFragment;->h:J

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsFragment;->g(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->b(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ListsFragment;->a(Ljava/lang/String;I)V

    :goto_15
    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsFragment;->b(I)V

    return-void

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/ListsFragment;->h:J

    iget v3, p0, Lcom/twitter/android/ListsFragment;->l:I

    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsFragment;->g(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->b(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ListsFragment;->a(Ljava/lang/String;I)V

    goto :goto_15
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)V
    .registers 3

    iget-boolean v0, p0, Lcom/twitter/android/ListsFragment;->b:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ListsFragment;->h(I)V

    :cond_f
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    invoke-direct {p0, v1}, Lcom/twitter/android/ListsFragment;->h(I)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsFragment;->c(I)V

    goto :goto_f
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07004a

    if-ne v0, v1, :cond_18

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ListCreateEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_17

    :pswitch_29
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->m:Lcom/twitter/android/ck;

    if-eqz v0, :cond_17

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->m:Lcom/twitter/android/ck;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/ck;->a(JLjava/lang/String;)V

    goto :goto_17

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_29
    .end packed-switch
.end method

.method final a(Lcom/twitter/android/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ListsFragment;->m:Lcom/twitter/android/ck;

    return-void
.end method

.method protected final a(Z)V
    .registers 4

    const/4 v1, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    if-eqz p1, :cond_d

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->h()Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->g()V

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v1}, Lcom/twitter/android/ListsFragment;->h(I)V

    goto :goto_c
.end method

.method public final a_()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/ListsFragment;->h(I)V

    return-void
.end method

.method final g(I)I
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid fetch type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v0, 0x1

    :cond_28
    :pswitch_28
    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_28

    new-instance v0, Lcom/twitter/android/bj;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/ListsFragment;->c:Lcom/twitter/android/client/b;

    iget v4, p0, Lcom/twitter/android/ListsFragment;->j:I

    if-nez v4, :cond_30

    move v4, v5

    :goto_17
    iget-wide v7, p0, Lcom/twitter/android/ListsFragment;->h:J

    iget-object v9, p0, Lcom/twitter/android/ListsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v9}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_32

    :goto_23
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/bj;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZZ)V

    iput-object v0, p0, Lcom/twitter/android/ListsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    :cond_28
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_30
    move v4, v6

    goto :goto_17

    :cond_32
    move v5, v6

    goto :goto_23
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/bn;-><init>(Lcom/twitter/android/ListsFragment;Lcom/twitter/android/bm;)V

    iput-object v0, p0, Lcom/twitter/android/ListsFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ListsFragment;->l:I

    :goto_1a
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ListsFragment;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_1f
    iput v2, p0, Lcom/twitter/android/ListsFragment;->l:I

    goto :goto_1a
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 14

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/twitter/android/provider/q;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget v0, p0, Lcom/twitter/android/ListsFragment;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2c

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/bl;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type IN (0,2)"

    new-array v5, v10, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListsFragment;->h:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/bl;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListsFragment;->h:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    iget v7, p0, Lcom/twitter/android/ListsFragment;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ListsFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ListsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsFragment;->a(Z)V

    return-void
.end method
