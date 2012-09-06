.class public Lcom/twitter/android/ActivityDetailFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Lcom/twitter/android/widget/ai;
.implements Lcom/twitter/android/widget/an;


# instance fields
.field private A:Lcom/twitter/android/bj;

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/util/HashSet;

.field private q:Lcom/twitter/android/util/FriendshipCache;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:[I

.field private w:Lcom/twitter/android/widget/t;

.field private x:Lcom/twitter/android/gm;

.field private y:Lcom/twitter/android/gm;

.field private z:Lcom/twitter/android/gc;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    iput v0, p0, Lcom/twitter/android/ActivityDetailFragment;->r:I

    iput v0, p0, Lcom/twitter/android/ActivityDetailFragment;->s:I

    iput v0, p0, Lcom/twitter/android/ActivityDetailFragment;->t:I

    iput v0, p0, Lcom/twitter/android/ActivityDetailFragment;->u:I

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p4}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    :goto_8
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    invoke-virtual {v2}, Lcom/twitter/android/gm;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_16

    move v0, v1

    :cond_16
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    invoke-virtual {v2}, Lcom/twitter/android/gm;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_23

    move v0, v1

    :cond_23
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    invoke-virtual {v2}, Lcom/twitter/android/gc;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_30

    move v0, v1

    :cond_30
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    invoke-virtual {v2}, Lcom/twitter/android/bj;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3d

    move v0, v1

    :cond_3d
    if-eqz v0, :cond_43

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityDetailFragment;->c(I)V

    :cond_43
    return-void

    :pswitch_44
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    invoke-virtual {v0, p2}, Lcom/twitter/android/gm;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_4a
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    invoke-virtual {v0, p2}, Lcom/twitter/android/gm;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_50
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    invoke-virtual {v0, p2}, Lcom/twitter/android/gc;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_56
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    invoke-virtual {v0, p2}, Lcom/twitter/android/bj;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4a
        :pswitch_50
        :pswitch_56
    .end packed-switch
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, p3}, Lcom/twitter/android/widget/t;->a(I)I

    move-result v0

    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->r:I

    if-eq v0, v1, :cond_13

    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->s:I

    if-ne v0, v1, :cond_36

    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/util/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_31

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_31
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ActivityDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_36
    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->t:I

    if-ne v0, v1, :cond_5c

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tw"

    new-instance v3, Lcom/twitter/android/provider/m;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_5c
    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->u:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    invoke-virtual {v1, v0, p3}, Lcom/twitter/android/widget/t;->a(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 6

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    :cond_18
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->c(J)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->b(J)V

    goto :goto_1d
.end method

.method protected final a(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    if-eqz p1, :cond_18

    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->v:[I

    array-length v3, v2

    :goto_e
    if-ge v0, v3, :cond_25

    aget v4, v2, v0

    invoke-virtual {v1, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->v:[I

    array-length v3, v2

    :goto_1b
    if-ge v0, v3, :cond_25

    aget v4, v2, v0

    invoke-virtual {v1, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_25
    return-void
.end method

.method protected final b(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 5

    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    invoke-virtual {v0}, Lcom/twitter/android/gm;->notifyDataSetChanged()V

    :cond_e
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    invoke-virtual {v0}, Lcom/twitter/android/gm;->notifyDataSetChanged()V

    :cond_17
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    invoke-virtual {v0}, Lcom/twitter/android/bj;->notifyDataSetChanged()V

    :cond_20
    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->notifyDataSetChanged()V

    :cond_2e
    return-void
.end method

.method public final b_()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 16

    const v5, 0x7f02003c

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->l:I

    packed-switch v0, :pswitch_data_122

    :pswitch_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_1e
    new-instance v0, Lcom/twitter/android/gm;

    iget v4, p0, Lcom/twitter/android/ActivityDetailFragment;->j:I

    if-eqz v4, :cond_64

    move v4, v12

    :goto_25
    iget-object v7, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/gm;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    new-instance v0, Lcom/twitter/android/gm;

    iget v4, p0, Lcom/twitter/android/ActivityDetailFragment;->j:I

    if-eqz v4, :cond_66

    move v4, v12

    :goto_36
    iget-object v7, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/gm;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    new-instance v0, Lcom/twitter/android/widget/t;

    new-array v1, v13, [Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    aput-object v3, v1, v12

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    iput v2, p0, Lcom/twitter/android/ActivityDetailFragment;->r:I

    iput v12, p0, Lcom/twitter/android/ActivityDetailFragment;->s:I

    new-array v0, v13, [I

    fill-array-data v0, :array_134

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->v:[I

    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_64
    move v4, v2

    goto :goto_25

    :cond_66
    move v4, v2

    goto :goto_36

    :pswitch_68
    new-instance v0, Lcom/twitter/android/gm;

    iget v4, p0, Lcom/twitter/android/ActivityDetailFragment;->j:I

    if-eqz v4, :cond_a9

    move v4, v12

    :goto_6f
    iget-object v7, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/gm;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    new-instance v4, Lcom/twitter/android/gc;

    new-instance v8, Lcom/twitter/android/bi;

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->g:Lcom/twitter/android/be;

    invoke-direct {v8, v3, v0}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/client/b;Lcom/twitter/android/be;)V

    move-object v5, v1

    move v6, v2

    move v7, v2

    move-object v9, v3

    move-object v10, p0

    invoke-direct/range {v4 .. v10}, Lcom/twitter/android/gc;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/am;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V

    iput-object v4, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    new-instance v0, Lcom/twitter/android/widget/t;

    new-array v1, v13, [Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    aput-object v3, v1, v12

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    iput v2, p0, Lcom/twitter/android/ActivityDetailFragment;->r:I

    iput v12, p0, Lcom/twitter/android/ActivityDetailFragment;->t:I

    new-array v0, v13, [I

    fill-array-data v0, :array_13c

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->v:[I

    goto :goto_5c

    :cond_a9
    move v4, v2

    goto :goto_6f

    :pswitch_ab
    new-instance v0, Lcom/twitter/android/gm;

    iget v4, p0, Lcom/twitter/android/ActivityDetailFragment;->j:I

    if-eqz v4, :cond_e3

    move v4, v12

    :goto_b2
    iget-object v7, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/gm;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    new-instance v0, Lcom/twitter/android/bj;

    move v4, v12

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/bj;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZZ)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    new-instance v0, Lcom/twitter/android/widget/t;

    new-array v1, v13, [Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    aput-object v3, v1, v12

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    iput v2, p0, Lcom/twitter/android/ActivityDetailFragment;->r:I

    iput v12, p0, Lcom/twitter/android/ActivityDetailFragment;->u:I

    new-array v0, v13, [I

    fill-array-data v0, :array_144

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->v:[I

    goto/16 :goto_5c

    :cond_e3
    move v4, v2

    goto :goto_b2

    :pswitch_e5
    new-instance v6, Lcom/twitter/android/bj;

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/twitter/android/bj;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZZ)V

    iput-object v6, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    new-instance v0, Lcom/twitter/android/gm;

    iget v4, p0, Lcom/twitter/android/ActivityDetailFragment;->j:I

    if-eqz v4, :cond_120

    move v4, v12

    :goto_f8
    iget-object v7, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    move-object v6, p0

    move v8, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/gm;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    new-instance v0, Lcom/twitter/android/widget/t;

    new-array v1, v13, [Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    aput-object v3, v1, v12

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/t;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    iput v2, p0, Lcom/twitter/android/ActivityDetailFragment;->u:I

    iput v12, p0, Lcom/twitter/android/ActivityDetailFragment;->s:I

    new-array v0, v13, [I

    fill-array-data v0, :array_14c

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->v:[I

    goto/16 :goto_5c

    :cond_120
    move v4, v2

    goto :goto_f8

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_68
        :pswitch_18
        :pswitch_18
        :pswitch_68
        :pswitch_1e
        :pswitch_e5
        :pswitch_ab
    .end packed-switch

    :array_134
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_13c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_144
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_14c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_36

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    const/4 v0, -0x1

    if-ne v0, p2, :cond_5

    if-eqz p3, :cond_5

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    const-string v2, "friendship"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "friendship"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->w:Lcom/twitter/android/widget/t;

    invoke-virtual {v0}, Lcom/twitter/android/widget/t;->notifyDataSetChanged()V

    goto :goto_5

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const-wide/16 v3, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "event_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/ActivityDetailFragment;->l:I

    const-string v1, "user_tag"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ActivityDetailFragment;->m:J

    const-string v1, "status_tag"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ActivityDetailFragment;->n:J

    const-string v1, "list_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ActivityDetailFragment;->o:J

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Ljava/util/HashSet;

    if-eqz p1, :cond_55

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    :goto_44
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityDetailFragment;->a(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityDetailFragment;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_4d
    new-instance v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    goto :goto_44

    :cond_55
    new-instance v1, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v1}, Lcom/twitter/android/util/FriendshipCache;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a2

    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->l:I

    packed-switch v0, :pswitch_data_e2

    :pswitch_69
    goto :goto_44

    :pswitch_6a
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aT:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_44

    :pswitch_78
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aV:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_44

    :pswitch_86
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aX:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_44

    :pswitch_94
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aZ:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_44

    :cond_a2
    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->l:I

    packed-switch v0, :pswitch_data_f2

    :pswitch_a7
    goto :goto_44

    :pswitch_a8
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aS:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_44

    :pswitch_b6
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aU:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_44

    :pswitch_c4
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aW:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_44

    :pswitch_d3
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aY:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_44

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_69
        :pswitch_69
        :pswitch_94
        :pswitch_78
        :pswitch_86
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_a7
        :pswitch_a7
        :pswitch_d3
        :pswitch_b6
        :pswitch_c4
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v2

    packed-switch p1, :pswitch_data_aa

    :cond_c
    move-object v0, v4

    :goto_d
    return-object v0

    :pswitch_e
    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v4, Lcom/twitter/android/provider/ab;->m:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/bd;->a:[Ljava/lang/String;

    const-string v4, "tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/android/ActivityDetailFragment;->m:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "_id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_32
    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v4, Lcom/twitter/android/provider/ab;->n:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/bd;->a:[Ljava/lang/String;

    const-string v4, "tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/android/ActivityDetailFragment;->m:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "_id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_56
    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->l:I

    packed-switch v0, :pswitch_data_b6

    :pswitch_5b
    move-object v2, v4

    :goto_5c
    if-eqz v2, :cond_c

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    const-string v4, "tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/android/ActivityDetailFragment;->n:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "_id ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_78
    sget-object v0, Lcom/twitter/android/provider/z;->q:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5c

    :pswitch_83
    sget-object v0, Lcom/twitter/android/provider/z;->r:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_5c

    :pswitch_8e
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v5, Lcom/twitter/android/provider/q;->b:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/twitter/android/ActivityDetailFragment;->o:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/bl;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_e
        :pswitch_32
        :pswitch_56
        :pswitch_8e
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_78
        :pswitch_5b
        :pswitch_5b
        :pswitch_83
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityDetailFragment;->b(ILcom/twitter/android/util/w;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityDetailFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ActivityDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->x:Lcom/twitter/android/gm;

    invoke-virtual {v0, v1}, Lcom/twitter/android/gm;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_f
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->y:Lcom/twitter/android/gm;

    invoke-virtual {v0, v1}, Lcom/twitter/android/gm;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_15
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->z:Lcom/twitter/android/gc;

    invoke-virtual {v0, v1}, Lcom/twitter/android/gc;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    :pswitch_1b
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->A:Lcom/twitter/android/bj;

    invoke-virtual {v0, v1}, Lcom/twitter/android/bj;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityDetailFragment;->a(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_12
    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->b([J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_12
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    return-void
.end method
