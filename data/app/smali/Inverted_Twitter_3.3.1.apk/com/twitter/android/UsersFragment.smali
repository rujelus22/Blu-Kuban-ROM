.class public Lcom/twitter/android/UsersFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/cj;
.implements Lcom/twitter/android/ff;
.implements Lcom/twitter/android/widget/an;


# instance fields
.field private A:Ljava/lang/String;

.field l:J

.field m:Lcom/twitter/android/api/PromotedContent;

.field n:J

.field o:Ljava/util/ArrayList;

.field p:Ljava/util/HashSet;

.field q:Lcom/twitter/android/util/FriendshipCache;

.field r:Lcom/twitter/android/gs;

.field s:Ljava/lang/String;

.field t:Z

.field private final u:Ljava/util/HashSet;

.field private v:Landroid/net/Uri;

.field private w:I

.field private x:[J

.field private y:Z

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/UsersFragment;->t:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->u:Ljava/util/HashSet;

    return-void
.end method

.method private g(I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/UsersFragment;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v0, :pswitch_data_9a

    :pswitch_e
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->h(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JII)Ljava/lang/String;

    move-result-object v1

    :goto_1b
    invoke-virtual {p0, p1}, Lcom/twitter/android/UsersFragment;->b(I)V

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1, p1}, Lcom/twitter/android/UsersFragment;->a(Ljava/lang/String;I)V

    goto :goto_8

    :pswitch_24
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-wide v1, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->h(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(JII)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :pswitch_31
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->i(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :pswitch_3c
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget v1, p0, Lcom/twitter/android/UsersFragment;->w:I

    iget-wide v2, p0, Lcom/twitter/android/UsersFragment;->h:J

    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->n:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->h(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->a(IJJI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :pswitch_4d
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget v1, p0, Lcom/twitter/android/UsersFragment;->w:I

    iget-wide v2, p0, Lcom/twitter/android/UsersFragment;->h:J

    iget-wide v4, p0, Lcom/twitter/android/UsersFragment;->n:J

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->h(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->a(IJJI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :pswitch_5e
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->h(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/twitter/android/client/b;->a(ZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :pswitch_69
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_1b

    :pswitch_74
    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-direct {p0, p1}, Lcom/twitter/android/UsersFragment;->i(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/client/b;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :pswitch_8b
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->x:[J

    iget v4, p0, Lcom/twitter/android/UsersFragment;->w:I

    iget-wide v5, p0, Lcom/twitter/android/UsersFragment;->n:J

    move-object v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->a([Ljava/lang/String;[Ljava/lang/String;[JIJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_31
        :pswitch_74
        :pswitch_3c
        :pswitch_4d
        :pswitch_3c
        :pswitch_69
        :pswitch_e
        :pswitch_5e
        :pswitch_e
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method private h(I)I
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
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

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

.method private i(I)I
    .registers 5

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_30

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
    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1

    :cond_2f
    :pswitch_2f
    return v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_19
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/UsersFragment;->t:Z

    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->b:Z

    if-eqz v0, :cond_16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_16

    invoke-direct {p0, v2}, Lcom/twitter/android/UsersFragment;->g(I)V

    :cond_16
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 16

    const/4 v4, 0x7

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v12, v0, :cond_ba

    if-nez p2, :cond_16

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    invoke-interface {v0, v1}, Lcom/twitter/android/gs;->c(I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ac

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v6

    :goto_39
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    packed-switch v6, :pswitch_data_e0

    :goto_52
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v0, v1

    :goto_57
    if-ge v0, v8, :cond_75

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v10

    if-eqz v10, :cond_66

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :pswitch_69
    const-string v0, "+1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    :pswitch_6f
    const/16 v0, 0x2b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_84
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_8c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/b;->a([Ljava/lang/String;[Ljava/lang/String;[JIJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lcom/twitter/android/UsersFragment;->a(Ljava/lang/String;I)V

    goto/16 :goto_15

    :cond_ac
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    invoke-interface {v0, v1}, Lcom/twitter/android/gs;->c(I)V

    :cond_b5
    invoke-virtual {p0, v11}, Lcom/twitter/android/UsersFragment;->c(I)V

    goto/16 :goto_15

    :cond_ba
    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c9

    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    if-ne v0, v4, :cond_ce

    :cond_c9
    invoke-direct {p0, v11}, Lcom/twitter/android/UsersFragment;->g(I)V

    goto/16 :goto_15

    :cond_ce
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/gs;->c(I)V

    :cond_db
    invoke-virtual {p0, v11}, Lcom/twitter/android/UsersFragment;->c(I)V

    goto/16 :goto_15

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_69
        :pswitch_6f
    .end packed-switch
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Lcom/twitter/android/api/PromotedContent;

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->u:Ljava/util/HashSet;

    iget-object v1, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    :cond_18
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13

    const-wide/16 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_18

    add-int/lit8 v0, v0, -0x1

    if-gt p3, v0, :cond_18

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersFragment;->startActivity(Landroid/content/Intent;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_34

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    if-le p3, v0, :cond_34

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_17

    :cond_34
    cmp-long v0, p4, v5

    if-lez v0, :cond_17

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    iget v2, p0, Lcom/twitter/android/UsersFragment;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v1, p4, p5}, Lcom/twitter/android/util/FriendshipCache;->d(J)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7a

    const-string v2, "friendship"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_5e
    :goto_5e
    check-cast p2, Lcom/twitter/android/widget/UserView;

    invoke-virtual {p2}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    const-string v2, "imp"

    iget-object v1, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_75
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/UsersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17

    :cond_7a
    const/4 v1, 0x2

    iget v2, p0, Lcom/twitter/android/UsersFragment;->w:I

    if-ne v1, v2, :cond_5e

    const-string v1, "friendship"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5e
.end method

.method final a(Lcom/twitter/android/gs;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/UsersFragment;->r:Lcom/twitter/android/gs;

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 8

    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v0, :pswitch_data_e4

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->a()Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->p:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v0}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->c(J)V

    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->y:Z

    if-eqz v0, :cond_6b

    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v0, :pswitch_data_ea

    :goto_32
    :pswitch_32
    return-void

    :pswitch_33
    iput-wide p2, p0, Lcom/twitter/android/UsersFragment;->l:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersFragment;->f(I)V

    goto :goto_32

    :cond_3a
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_24

    :pswitch_41
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->as:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_32

    :pswitch_4f
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->av:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_32

    :pswitch_5d
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ax:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_32

    :cond_6b
    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v0, :pswitch_data_f6

    goto :goto_32

    :pswitch_71
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aH:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_32

    :cond_7f
    if-eqz v0, :cond_a6

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/twitter/android/client/b;->a(JZLjava/lang/String;)Ljava/lang/String;

    :goto_89
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/util/FriendshipCache;->b(J)V

    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->y:Z

    if-eqz v0, :cond_ce

    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v0, :pswitch_data_fc

    :pswitch_97
    goto :goto_32

    :pswitch_98
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aw:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_32

    :cond_a6
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->p:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :pswitch_b0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ar:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_32

    :pswitch_bf
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->au:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_32

    :cond_ce
    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v0, :pswitch_data_108

    goto/16 :goto_32

    :pswitch_d5
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aG:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_32

    :pswitch_data_e4
    .packed-switch 0x4
        :pswitch_33
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x6
        :pswitch_5d
        :pswitch_41
        :pswitch_32
        :pswitch_4f
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x7
        :pswitch_71
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x6
        :pswitch_98
        :pswitch_b0
        :pswitch_97
        :pswitch_bf
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x7
        :pswitch_d5
    .end packed-switch
.end method

.method public final a_()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/UsersFragment;->g(I)V

    return-void
.end method

.method protected final e(I)Landroid/app/Dialog;
    .registers 8

    const v5, 0x7f0b00d7

    const v4, 0x7f0b00d6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_5e

    :goto_a
    return-object v0

    :pswitch_b
    new-instance v1, Lcom/twitter/android/gq;

    invoke-direct {v1, p0}, Lcom/twitter/android/gq;-><init>(Lcom/twitter/android/UsersFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    :pswitch_34
    new-instance v1, Lcom/twitter/android/gr;

    invoke-direct {v1, p0}, Lcom/twitter/android/gr;-><init>(Lcom/twitter/android/UsersFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_34
    .end packed-switch
.end method

.method protected final k()V
    .registers 1

    return-void
.end method

.method public final l()Lcom/twitter/android/util/FriendshipCache;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    return-object v0
.end method

.method final m()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_71

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->i()Z

    move-result v5

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    sget-object v4, Lcom/twitter/android/provider/bd;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "LOWER(username) ASC"

    :goto_21
    const/4 v2, 0x0

    iget v7, p0, Lcom/twitter/android/UsersFragment;->w:I

    packed-switch v7, :pswitch_data_184

    :pswitch_27
    sget-object v7, Lcom/twitter/android/provider/ab;->h:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    :cond_31
    move v11, v2

    move-object v2, v0

    move v0, v11

    :goto_34
    iput-object v4, p0, Lcom/twitter/android/UsersFragment;->z:[Ljava/lang/String;

    iput-object v2, p0, Lcom/twitter/android/UsersFragment;->A:Ljava/lang/String;

    if-eqz v5, :cond_181

    const-string v2, "follow"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_181

    const v0, 0x7f02003c

    move v5, v0

    :goto_47
    const/16 v0, 0x9

    iget v2, p0, Lcom/twitter/android/UsersFragment;->w:I

    if-ne v0, v2, :cond_15c

    new-instance v0, Lcom/twitter/android/ed;

    const/4 v2, 0x2

    iget v4, p0, Lcom/twitter/android/UsersFragment;->j:I

    if-eqz v4, :cond_159

    const/4 v4, 0x1

    :goto_55
    iget-object v7, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    const-string v8, "follow_all_title"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "follow_all_subtitle"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/ed;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/ed;->a(Lcom/twitter/android/cj;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/ed;->a(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/twitter/android/gt;

    invoke-direct {v0, p0}, Lcom/twitter/android/gt;-><init>(Lcom/twitter/android/UsersFragment;)V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->d:Lcom/twitter/android/client/g;

    return-void

    :cond_80
    const-string v0, "_id ASC"

    goto :goto_21

    :pswitch_83
    sget-object v7, Lcom/twitter/android/provider/ab;->f:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_34

    :pswitch_91
    sget-object v7, Lcom/twitter/android/provider/ab;->g:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_34

    :pswitch_9f
    sget-object v7, Lcom/twitter/android/provider/ab;->e:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_34

    :pswitch_ad
    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->n:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_c7

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->h:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_c7

    sget-object v7, Lcom/twitter/android/provider/ab;->c:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    :cond_c7
    if-eqz v5, :cond_31

    iget-wide v7, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_31

    const v2, 0x7f02012c

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_db
    sget-object v7, Lcom/twitter/android/provider/ab;->l:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_ea
    sget-object v7, Lcom/twitter/android/provider/ab;->b:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_f9
    sget-object v7, Lcom/twitter/android/provider/ab;->i:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_108
    sget-object v0, Lcom/twitter/android/provider/ac;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    sget-object v4, Lcom/twitter/android/provider/bd;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_114
    sget-object v7, Lcom/twitter/android/provider/ab;->m:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_123
    sget-object v7, Lcom/twitter/android/provider/ab;->n:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_132
    sget-object v7, Lcom/twitter/android/provider/ab;->d:Landroid/net/Uri;

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_13b
    sget-object v7, Lcom/twitter/android/provider/ab;->o:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :pswitch_14a
    sget-object v7, Lcom/twitter/android/provider/ab;->p:Landroid/net/Uri;

    iget-wide v8, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_34

    :cond_159
    const/4 v4, 0x0

    goto/16 :goto_55

    :cond_15c
    new-instance v0, Lcom/twitter/android/gm;

    const/4 v2, 0x2

    iget v4, p0, Lcom/twitter/android/UsersFragment;->j:I

    if-eqz v4, :cond_17f

    const/4 v4, 0x1

    :goto_164
    iget-object v7, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    const-string v8, "follow_all_title"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "follow_all_subtitle"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/gm;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;ZILcom/twitter/android/widget/an;Lcom/twitter/android/util/FriendshipCache;II)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/gm;->a(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    goto/16 :goto_71

    :cond_17f
    const/4 v4, 0x0

    goto :goto_164

    :cond_181
    move v5, v0

    goto/16 :goto_47

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_83
        :pswitch_91
        :pswitch_9f
        :pswitch_132
        :pswitch_ad
        :pswitch_ea
        :pswitch_db
        :pswitch_f9
        :pswitch_114
        :pswitch_108
        :pswitch_27
        :pswitch_13b
        :pswitch_14a
        :pswitch_123
    .end packed-switch
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

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/android/util/FriendshipCache;->b(JI)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_5

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    goto :goto_4

    :pswitch_d
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    :cond_1d
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/twitter/android/util/FriendshipCache;->b(JI)V

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->p:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :pswitch_data_4a
    .packed-switch 0x7f070059
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/UsersFragment;->w:I

    const-string v1, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/UsersFragment;->n:J

    const-string v1, "user_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_27

    array-length v2, v1

    if-lez v2, :cond_27

    iput-object v1, p0, Lcom/twitter/android/UsersFragment;->x:[J

    :cond_27
    const-string v1, "onboarding"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/UsersFragment;->y:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/UsersFragment;->p:Ljava/util/HashSet;

    if-eqz p1, :cond_82

    const-string v0, "state_dialog_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/UsersFragment;->l:J

    const-string v0, "state_dialog_pc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/PromotedContent;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->m:Lcom/twitter/android/api/PromotedContent;

    const-string v0, "state_checked_users"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->o:Ljava/util/ArrayList;

    const-string v0, "state_user_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->x:[J

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    :goto_6d
    const-string v0, "state_search_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->s:Ljava/lang/String;

    :goto_75
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/UsersFragment;->a(ILcom/twitter/android/util/w;)V

    return-void

    :cond_7a
    new-instance v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    goto :goto_6d

    :cond_82
    const-string v1, "friendship_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "friendship_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    :goto_94
    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    sparse-switch v0, :sswitch_data_100

    goto :goto_75

    :sswitch_9a
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->g:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_75

    :cond_a8
    new-instance v0, Lcom/twitter/android/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/android/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    goto :goto_94

    :sswitch_b0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->h:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_75

    :sswitch_be
    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->y:Z

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aq:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_75

    :cond_d0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aR:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_75

    :sswitch_de
    iget-boolean v0, p0, Lcom/twitter/android/UsersFragment;->y:Z

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->at:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_75

    :cond_f0
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->aF:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto/16 :goto_75

    nop

    :sswitch_data_100
    .sparse-switch
        0x0 -> :sswitch_9a
        0x1 -> :sswitch_b0
        0x7 -> :sswitch_de
        0x9 -> :sswitch_be
    .end sparse-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 14

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    if-ne v7, p1, :cond_28

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v10

    const-string v4, "mimetype"

    aput-object v4, v3, v7

    const-string v4, "data1 NOT NULL AND (mimetype=? OR mimetype=?)"

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v5, v10

    const-string v8, "vnd.android.cursor.item/email_v2"

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-object v0

    :cond_28
    iget-wide v0, p0, Lcom/twitter/android/UsersFragment;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_69

    const-string v6, "type=? AND tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    iget-wide v0, p0, Lcom/twitter/android/UsersFragment;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    move-object v4, v6

    :goto_45
    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session_owner_id"

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v6, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/UsersFragment;->z:[Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/UsersFragment;->A:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_69
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->x:[J

    if-eqz v0, :cond_9f

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->x:[J

    array-length v2, v1

    new-array v5, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "user_id IN (?"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide v8, v1, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    move v0, v7

    :goto_82
    if-ge v0, v2, :cond_94

    const-string v4, ", ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v1, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_94
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_45

    :cond_9f
    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    sparse-switch v0, :sswitch_data_d2

    move-object v4, v6

    move-object v5, v6

    goto :goto_45

    :sswitch_a7
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v6, "friendship IS NULL OR friendship NOT IN (1,3,9,10,11) AND user_id!=?"

    new-array v5, v7, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/twitter/android/UsersFragment;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    move-object v4, v6

    goto :goto_45

    :cond_bd
    move-object v4, v6

    move-object v5, v6

    goto :goto_45

    :sswitch_c0
    const-string v6, "type=? AND tag=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->s:Ljava/lang/String;

    aput-object v0, v5, v7

    move-object v4, v6

    goto/16 :goto_45

    :sswitch_data_d2
    .sparse-switch
        0x3 -> :sswitch_c0
        0x7 -> :sswitch_a7
        0x9 -> :sswitch_a7
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/UsersFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/UsersFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    const/4 v1, 0x3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->v:Landroid/net/Uri;

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/twitter/android/UsersFragment;->w:I

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_18

    :cond_14
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->s:Ljava/lang/String;

    if-eqz v0, :cond_1f

    :cond_18
    invoke-virtual {p0, v1}, Lcom/twitter/android/UsersFragment;->b(I)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->g()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, v1}, Lcom/twitter/android/UsersFragment;->g(I)V

    goto :goto_1e

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/twitter/android/UsersFragment;->c(I)V

    goto :goto_1e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_dialog_user"

    iget-wide v1, p0, Lcom/twitter/android/UsersFragment;->l:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->m:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_15

    const-string v0, "state_dialog_pc"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->m:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_15
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    const-string v0, "state_checked_users"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_20
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->x:[J

    if-eqz v0, :cond_2b

    const-string v0, "state_user_ids"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->x:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_2b
    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->q:Lcom/twitter/android/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3a
    const-string v0, "state_search_id"

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->p:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/twitter/android/util/x;->b(Ljava/util/Collection;)[J

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/client/b;->b([J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/UsersFragment;->p:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_12
    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/UsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "browse_categories"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/UsersFragment;->i:Landroid/widget/ListView;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/SULActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "onboarding"

    iget-boolean v4, p0, Lcom/twitter/android/UsersFragment;->y:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_35
    return-void
.end method
