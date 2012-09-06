.class public Lcom/twitter/android/TimelineFragment;
.super Lcom/twitter/android/TweetListFragment;

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/ff;


# instance fields
.field private l:Landroid/net/Uri;

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    return-void
.end method

.method private a(IJ)V
    .registers 22

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_6
    return-void

    :cond_7
    packed-switch p1, :pswitch_data_12c

    const/16 v7, 0x28

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/TimelineFragment;->o:I

    packed-switch v3, :pswitch_data_136

    :pswitch_17
    goto :goto_6

    :pswitch_18
    invoke-virtual {v2}, Lcom/twitter/android/client/b;->c()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->z()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/b;->a(Landroid/location/LocationListener;)V

    :cond_29
    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v3

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/client/b;->a(JJI)Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_14e

    :goto_38
    :pswitch_38
    move-object v2, v3

    :goto_39
    invoke-direct/range {p0 .. p3}, Lcom/twitter/android/TimelineFragment;->b(IJ)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;I)V

    goto :goto_6

    :pswitch_44
    const/16 v7, 0x64

    goto :goto_c

    :pswitch_47
    const/4 v7, 0x0

    goto :goto_c

    :pswitch_49
    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->C:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    move-object v2, v3

    goto :goto_39

    :pswitch_54
    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->A:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    move-object v2, v3

    goto :goto_39

    :pswitch_5f
    invoke-virtual {v2}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->B:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_38

    :pswitch_69
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->o:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :pswitch_81
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/twitter/android/TimelineFragment;->h:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v5

    div-int/lit8 v5, v5, 0x14

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/android/client/b;->a(JI)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :pswitch_96
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->o:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :pswitch_ae
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->o:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    :pswitch_c7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->o:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    :pswitch_e0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->o:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    :pswitch_f9
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->o:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/b;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    :pswitch_112
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/twitter/android/TimelineFragment;->h:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/twitter/android/TimelineFragment;->q:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->g(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v15

    move-object v8, v2

    move/from16 v17, v7

    invoke-virtual/range {v8 .. v17}, Lcom/twitter/android/client/b;->a(JJJJI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_39

    nop

    :pswitch_data_12c
    .packed-switch 0x2
        :pswitch_44
        :pswitch_47
        :pswitch_44
    .end packed-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_18
        :pswitch_69
        :pswitch_81
        :pswitch_96
        :pswitch_17
        :pswitch_ae
        :pswitch_c7
        :pswitch_e0
        :pswitch_f9
        :pswitch_112
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_49
        :pswitch_54
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_5f
    .end packed-switch
.end method

.method private b(IJ)V
    .registers 6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_16

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/gc;->a(J)V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :goto_15
    return-void

    :cond_16
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-nez v0, :cond_1d

    packed-switch p1, :pswitch_data_34

    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->b(I)V

    goto :goto_15

    :pswitch_21
    const-string v0, "home:refresh"

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_27
    const-string v0, "home:first_tweet_api"

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_2d
    const-string v0, "home:first_tweet_cache"

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Ljava/lang/String;)V

    goto :goto_1d

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_21
        :pswitch_27
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method private g(I)J
    .registers 11

    const/16 v8, 0x17

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->o:I

    packed-switch p1, :pswitch_data_5c

    :pswitch_9
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

    :pswitch_1e
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_27

    :cond_26
    :goto_26
    :pswitch_26
    return-wide v2

    :cond_27
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    move-wide v0, v2

    :cond_2e
    const/16 v6, 0x13

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_54

    const/16 v6, 0x11

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_54

    const/16 v6, 0x1f

    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_54

    cmp-long v0, v0, v2

    if-eqz v0, :cond_50

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_26

    :cond_50
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_54
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_26

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1e
        :pswitch_26
        :pswitch_1e
        :pswitch_9
        :pswitch_26
    .end packed-switch
.end method

.method private i(I)J
    .registers 9

    const/16 v6, 0x17

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/twitter/android/TimelineFragment;->o:I

    packed-switch p1, :pswitch_data_62

    :pswitch_9
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

    :pswitch_1e
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_2c
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v2, v4, :cond_42

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_42

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_41
    :goto_41
    :pswitch_41
    return-wide v0

    :cond_42
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_41

    :pswitch_49
    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_41

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->m:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/TimelineFragment;->m:I

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_41

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_9
        :pswitch_49
    .end packed-switch
.end method

.method private l()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-ne v1, v0, :cond_1c

    iget-boolean v1, p0, Lcom/twitter/android/TimelineFragment;->r:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .registers 5

    iget-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->b:Z

    if-eqz v0, :cond_1a

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    :cond_1a
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 9

    const-wide/16 v2, 0x0

    const/4 v1, 0x5

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/TimelineFragment;->c(I)V

    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    iput-boolean v5, p0, Lcom/twitter/android/TimelineFragment;->r:Z

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-ne v0, v1, :cond_2d

    :cond_1f
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    :cond_2d
    new-instance v0, Lcom/twitter/android/widget/f;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->p:J

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->n:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/widget/f;Z)V

    goto :goto_16
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_22

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    iput v1, p0, Lcom/twitter/android/TimelineFragment;->m:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tw"

    new-instance v3, Lcom/twitter/android/provider/m;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_22
.end method

.method public final a(Lcom/twitter/android/api/ac;)V
    .registers 4

    iget-wide v0, p1, Lcom/twitter/android/api/ac;->a:J

    invoke-super {p0, v0, v1}, Lcom/twitter/android/TweetListFragment;->b(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->a(Z)V

    return-void
.end method

.method protected final a(Lcom/twitter/android/widget/f;)V
    .registers 8

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    sparse-switch v0, :sswitch_data_4e

    :goto_5
    return-void

    :sswitch_6
    new-instance v1, Lcom/twitter/android/client/a;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeline"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/twitter/android/client/a;->a()Lcom/twitter/android/client/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweet_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/twitter/android/widget/f;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;J)Lcom/twitter/android/client/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "off_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/twitter/android/widget/f;->c:I

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;I)Lcom/twitter/android/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/a;->c()Z

    goto :goto_5

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_6
        0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final a(Lcom/twitter/android/widget/f;Z)V
    .registers 7

    iget-wide v0, p1, Lcom/twitter/android/widget/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TimelineFragment;->a(J)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-gt v0, v1, :cond_16

    if-nez p2, :cond_1d

    :cond_16
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->i:Landroid/widget/ListView;

    iget v2, p1, Lcom/twitter/android/widget/f;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1d
    return-void
.end method

.method protected final a(Z)V
    .registers 8

    const/4 v5, 0x5

    const-wide/16 v3, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Z)V

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    packed-switch v0, :pswitch_data_f2

    :pswitch_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid status type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/twitter/android/TimelineFragment;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    sget-object v0, Lcom/twitter/android/provider/z;->i:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    if-eqz v0, :cond_ed

    if-eqz p1, :cond_ce

    invoke-direct {p0, v5, v3, v4}, Lcom/twitter/android/TimelineFragment;->b(IJ)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->h()Z

    :cond_38
    :goto_38
    return-void

    :pswitch_39
    sget-object v0, Lcom/twitter/android/provider/y;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_44
    sget-object v0, Lcom/twitter/android/provider/z;->j:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_4f
    sget-object v0, Lcom/twitter/android/provider/z;->h:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_5a
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "include_rts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/twitter/android/provider/z;->m:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :cond_72
    sget-object v0, Lcom/twitter/android/provider/z;->g:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_7d
    sget-object v0, Lcom/twitter/android/provider/z;->f:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_88
    sget-object v0, Lcom/twitter/android/provider/z;->e:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_93
    sget-object v0, Lcom/twitter/android/provider/z;->d:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto :goto_2c

    :pswitch_9e
    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->h:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2c

    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->q:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2c

    sget-object v0, Lcom/twitter/android/provider/z;->c:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto/16 :goto_2c

    :pswitch_b6
    sget-object v0, Lcom/twitter/android/provider/z;->q:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto/16 :goto_2c

    :pswitch_c2
    sget-object v0, Lcom/twitter/android/provider/z;->r:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    goto/16 :goto_2c

    :cond_ce
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_de

    invoke-direct {p0, v5, v3, v4}, Lcom/twitter/android/TimelineFragment;->b(IJ)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->g()V

    goto/16 :goto_38

    :cond_de
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3, v4}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->r:Z

    goto/16 :goto_38

    :cond_ed
    invoke-virtual {p0, v5}, Lcom/twitter/android/TimelineFragment;->c(I)V

    goto/16 :goto_38

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_22
        :pswitch_39
        :pswitch_44
        :pswitch_4f
        :pswitch_b
        :pswitch_5a
        :pswitch_7d
        :pswitch_88
        :pswitch_93
        :pswitch_9e
        :pswitch_b
        :pswitch_b
        :pswitch_b6
        :pswitch_b
        :pswitch_c2
    .end packed-switch
.end method

.method protected final a_()V
    .registers 4

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    return-void
.end method

.method public final b(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->b(J)V

    return-void
.end method

.method protected final b_()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->a()V

    :cond_b
    return-void
.end method

.method protected final c()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method protected final c(I)V
    .registers 6

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-nez v0, :cond_7

    packed-switch p1, :pswitch_data_40

    :cond_7
    :goto_7
    packed-switch p1, :pswitch_data_4c

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->c(I)V

    :goto_d
    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    const-string v3, "home:refresh"

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_7

    :pswitch_1a
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    const-string v3, "home:first_tweet_api"

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_7

    :pswitch_26
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->h:J

    const-string v3, "home:first_tweet_cache"

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_7

    :pswitch_32
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->c()V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_d

    nop

    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_e
        :pswitch_1a
        :pswitch_1a
        :pswitch_26
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x6
        :pswitch_32
    .end packed-switch
.end method

.method protected final d_()V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    sparse-switch v0, :sswitch_data_58

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->d_()V

    :goto_9
    return-void

    :sswitch_a
    new-instance v1, Lcom/twitter/android/client/a;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/android/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeline"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/android/client/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweet_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/TimelineFragment;->p:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "off_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/twitter/android/client/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TimelineFragment;->n:I

    new-instance v0, Lcom/twitter/android/widget/f;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->p:J

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->n:I

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/twitter/android/widget/f;-><init>(IJI)V

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/widget/f;Z)V

    goto :goto_9

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_a
        0x5 -> :sswitch_a
    .end sparse-switch
.end method

.method protected final e(I)Landroid/app/Dialog;
    .registers 5

    packed-switch p1, :pswitch_data_38

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->e(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/fg;

    invoke-direct {v1, p0}, Lcom/twitter/android/fg;-><init>(Lcom/twitter/android/TimelineFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0013

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0129

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00d4

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch
.end method

.method protected final h(I)Lcom/twitter/android/provider/m;
    .registers 4

    new-instance v1, Lcom/twitter/android/provider/m;

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/twitter/android/provider/m;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_42

    new-instance v0, Lcom/twitter/android/gc;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-nez v3, :cond_3b

    const/4 v3, 0x1

    :goto_14
    new-instance v4, Lcom/twitter/android/bi;

    iget-object v5, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    iget-object v6, p0, Lcom/twitter/android/TimelineFragment;->g:Lcom/twitter/android/be;

    invoke-direct {v4, v5, v6}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/client/b;Lcom/twitter/android/be;)V

    iget-object v5, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/gc;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/am;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ai;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/gc;->a(Lcom/twitter/android/cj;)V

    if-eqz p1, :cond_40

    const-string v1, "spinning_gap_ids"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_40

    array-length v2, v1

    :goto_31
    if-ge v7, v2, :cond_3d

    aget-wide v3, v1, v7

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/gc;->a(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_3b
    move v3, v7

    goto :goto_14

    :cond_3d
    invoke-virtual {v0}, Lcom/twitter/android/gc;->notifyDataSetChanged()V

    :cond_40
    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    :cond_42
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    :goto_7
    return-void

    :pswitch_8
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->f(I)V

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch 0x7f070089
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/fh;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/fh;-><init>(Lcom/twitter/android/TimelineFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->d:Lcom/twitter/android/client/g;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TimelineFragment;->o:I

    const-string v1, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/TimelineFragment;->q:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/TimelineFragment;->a(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    const-string v4, "tag=?"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    :goto_17
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-ne v0, v6, :cond_3b

    sget-object v3, Lcom/twitter/android/provider/m;->c:[Ljava/lang/String;

    :goto_1d
    new-instance v0, Lcom/twitter/android/u;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/net/Uri;

    iget-object v6, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v6}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/twitter/android/provider/o;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "updated_at DESC, _id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_39
    move-object v5, v4

    goto :goto_17

    :cond_3b
    sget-object v3, Lcom/twitter/android/provider/m;->b:[Ljava/lang/String;

    goto :goto_1d
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-nez v0, :cond_1d

    const v0, 0x7f030054

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1c
    return-object v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_1c
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/TimelineFragment;->b(ILcom/twitter/android/util/w;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onResume()V

    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->a(Z)V

    :cond_f
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "ref_event"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "ref_event"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v4, "ref_event"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_32
    iget v3, p0, Lcom/twitter/android/TimelineFragment;->o:I

    packed-switch v3, :pswitch_data_5a

    :goto_37
    :pswitch_37
    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_32

    :pswitch_3a
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->a:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_37

    :pswitch_42
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->b:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_37

    :pswitch_4a
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->ad:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_37

    :pswitch_52
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->c:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_37

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_42
        :pswitch_52
        :pswitch_37
        :pswitch_37
        :pswitch_4a
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/gc;

    invoke-virtual {v0}, Lcom/twitter/android/gc;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    :cond_37
    const-string v0, "spinning_gap_ids"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_3c
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onStop()V

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->o:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/b;->b(Landroid/location/LocationListener;)V

    :cond_c
    return-void
.end method
