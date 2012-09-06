.class public Lcom/twitter/android/ActivityFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Lcom/twitter/android/ff;
.implements Lcom/twitter/android/widget/ai;


# instance fields
.field private l:I

.field private m:I

.field private n:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private g(I)V
    .registers 11

    const/16 v6, 0x14

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/ActivityFragment;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    packed-switch p1, :pswitch_data_7c

    :goto_e
    :pswitch_e
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    iget v1, p0, Lcom/twitter/android/ActivityFragment;->l:I

    packed-switch p1, :pswitch_data_86

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

    :pswitch_2a
    const/4 v6, 0x0

    goto :goto_e

    :pswitch_2c
    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_58

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_58

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_40
    packed-switch p1, :pswitch_data_92

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

    :cond_58
    move-wide v2, v4

    goto :goto_40

    :pswitch_5a
    move-wide v2, v4

    goto :goto_40

    :pswitch_5c
    iget-object v7, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v7}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_70

    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v8

    if-eqz v8, :cond_70

    const/16 v4, 0xd

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_70
    :pswitch_70
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->b(IJJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ActivityFragment;->a(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/ActivityFragment;->b(I)V

    goto :goto_a

    nop

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_e
        :pswitch_2a
        :pswitch_e
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_2c
        :pswitch_5a
        :pswitch_2c
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_70
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p4}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .registers 4

    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->b:Z

    if-eqz v0, :cond_18

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->g(I)V

    :cond_18
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 8

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v1}, Lcom/twitter/android/ActivityFragment;->g(I)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->g(I)V

    :goto_1e
    new-instance v0, Lcom/twitter/android/widget/f;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/ActivityFragment;->n:J

    iget v4, p0, Lcom/twitter/android/ActivityFragment;->m:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/widget/f;Z)V

    goto :goto_f

    :cond_2d
    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityFragment;->c(I)V

    goto :goto_1e
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Lcom/twitter/android/j;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/twitter/android/j;->a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->startActivity(Landroid/content/Intent;)V

    :cond_19
    return-void
.end method

.method protected final a(Lcom/twitter/android/widget/f;)V
    .registers 7

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->l:I

    if-nez v0, :cond_4b

    new-instance v0, Lcom/twitter/android/client/a;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/twitter/android/widget/f;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/twitter/android/widget/f;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;I)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    :cond_4b
    return-void
.end method

.method protected final a(Lcom/twitter/android/widget/f;Z)V
    .registers 7

    iget-wide v0, p1, Lcom/twitter/android/widget/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ActivityFragment;->a(J)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-gt v0, v1, :cond_16

    if-nez p2, :cond_1d

    :cond_16
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/widget/ListView;

    iget v2, p1, Lcom/twitter/android/widget/f;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1d
    return-void
.end method

.method protected final a(Z)V
    .registers 5

    const/4 v2, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/j;

    if-eqz p1, :cond_11

    invoke-virtual {p0, v2}, Lcom/twitter/android/ActivityFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->h()Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/twitter/android/j;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-virtual {p0, v2}, Lcom/twitter/android/ActivityFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->g()V

    goto :goto_10

    :cond_1e
    invoke-virtual {v0}, Lcom/twitter/android/j;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v2}, Lcom/twitter/android/ActivityFragment;->g(I)V

    goto :goto_10
.end method

.method protected final a_()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->g(I)V

    return-void
.end method

.method protected final b(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/j;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/j;->a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V

    :cond_b
    return-void
.end method

.method protected final c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final d_()V
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->l:I

    if-nez v0, :cond_52

    new-instance v0, Lcom/twitter/android/client/a;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ActivityFragment;->n:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->m:I

    new-instance v0, Lcom/twitter/android/widget/f;

    iget-wide v1, p0, Lcom/twitter/android/ActivityFragment;->n:J

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->m:I

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    invoke-virtual {p0, v0, v4}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/widget/f;Z)V

    :cond_52
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/4 v2, 0x2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->l:I

    if-nez v0, :cond_2b

    new-instance v0, Lcom/twitter/android/bq;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    new-instance v4, Lcom/twitter/android/bi;

    iget-object v5, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    iget-object v7, p0, Lcom/twitter/android/ActivityFragment;->g:Lcom/twitter/android/be;

    invoke-direct {v4, v5, v7}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/client/b;Lcom/twitter/android/be;)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/bq;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;Lcom/twitter/android/widget/am;Lcom/twitter/android/widget/ai;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2b
    new-instance v0, Lcom/twitter/android/cf;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/cf;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    goto :goto_25
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/k;

    invoke-direct {v0, p0}, Lcom/twitter/android/k;-><init>(Lcom/twitter/android/ActivityFragment;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "activity_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->l:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->a(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->a(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/p;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/ag;->a:[Ljava/lang/String;

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/twitter/android/ActivityFragment;->l:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->b(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ActivityFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(Z)V

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->l:I

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ac:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aQ:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_18
.end method
