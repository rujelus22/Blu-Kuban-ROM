.class public final Lcom/twitter/android/bq;
.super Lcom/twitter/android/j;


# instance fields
.field private final i:Lcom/twitter/android/widget/am;

.field private final j:Ljava/util/ArrayList;

.field private final k:[I

.field private final l:[I

.field private final m:[I

.field private final n:Lcom/twitter/android/widget/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;Lcom/twitter/android/widget/am;Lcom/twitter/android/widget/ai;)V
    .registers 8

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3}, Lcom/twitter/android/j;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V

    iput-object p4, p0, Lcom/twitter/android/bq;->i:Lcom/twitter/android/widget/am;

    iput-object p5, p0, Lcom/twitter/android/bq;->n:Lcom/twitter/android/widget/ai;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/bq;->j:Ljava/util/ArrayList;

    new-array v0, v1, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/twitter/android/bq;->k:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_36

    iput-object v0, p0, Lcom/twitter/android/bq;->l:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_46

    iput-object v0, p0, Lcom/twitter/android/bq;->m:[I

    return-void

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7at 0x1t 0xbt 0x7ft
        0x7bt 0x1t 0xbt 0x7ft
        0x7ct 0x1t 0xbt 0x7ft
        0x8at 0x1t 0xbt 0x7ft
        0x8at 0x1t 0xbt 0x7ft
    .end array-data

    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x77t 0x1t 0xbt 0x7ft
        0x78t 0x1t 0xbt 0x7ft
        0x79t 0x1t 0xbt 0x7ft
        0x85t 0x1t 0xbt 0x7ft
        0x86t 0x1t 0xbt 0x7ft
    .end array-data

    :array_46
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7dt 0x1t 0xbt 0x7ft
        0x7et 0x1t 0xbt 0x7ft
        0x7ft 0x1t 0xbt 0x7ft
        0x8et 0x1t 0xbt 0x7ft
        0x8ft 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method private a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;IIJ)V
    .registers 23

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/twitter/android/l;

    iget-object v2, v10, Lcom/twitter/android/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v10, Lcom/twitter/android/l;->b:Landroid/widget/TextView;

    move-object v2, p0

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v2 .. v9}, Lcom/twitter/android/bq;->a(Landroid/widget/TextView;Landroid/content/res/Resources;[ILjava/util/ArrayList;III)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p10

    invoke-static {v4, v0, v1}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Lcom/twitter/android/bq;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-lez v2, :cond_4d

    const v2, 0x7f0b0172

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/provider/ActivityDataStatus;

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataStatus;->text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    iget-object v2, v10, Lcom/twitter/android/l;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lcom/twitter/android/l;->d:Landroid/view/ViewGroup;

    move-object/from16 v0, p5

    invoke-virtual {p0, v2, v0}, Lcom/twitter/android/bq;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/twitter/android/l;->e:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    iput-object v0, v10, Lcom/twitter/android/l;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v10, Lcom/twitter/android/l;->g:Lcom/twitter/android/provider/ActivityDataList;

    return-void
.end method

.method private b(Ljava/util/ArrayList;)Lcom/twitter/android/provider/m;
    .registers 7

    invoke-static {p1}, Lcom/twitter/android/bq;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-lez v0, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    :goto_d
    new-instance v1, Lcom/twitter/android/provider/m;

    invoke-direct {v1}, Lcom/twitter/android/provider/m;-><init>()V

    if-eqz v0, :cond_55

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    if-eqz v2, :cond_28

    iget-wide v3, v2, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    iput-wide v3, v1, Lcom/twitter/android/provider/m;->n:J

    iget-object v3, v2, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    iput-object v3, v1, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    iget-object v3, v2, Lcom/twitter/android/provider/ActivityDataUser;->profileImageUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    :cond_28
    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    iput-wide v2, v1, Lcom/twitter/android/provider/m;->s:J

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->createdAt:J

    iput-wide v2, v1, Lcom/twitter/android/provider/m;->h:J

    invoke-virtual {v0}, Lcom/twitter/android/provider/ActivityDataStatus;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->entities:[B

    iput-object v2, v1, Lcom/twitter/android/provider/m;->y:[B

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataStatus;->replyStatusId:J

    iput-wide v2, v1, Lcom/twitter/android/provider/m;->j:J

    iget-boolean v0, v0, Lcom/twitter/android/provider/ActivityDataStatus;->hasPoi:Z

    iput-boolean v0, v1, Lcom/twitter/android/provider/m;->x:Z

    iget-object v0, v1, Lcom/twitter/android/provider/m;->y:[B

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/twitter/android/bq;->i:Lcom/twitter/android/widget/am;

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/am;->b(Lcom/twitter/android/provider/m;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/api/TweetEntities;->b()Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    iput v0, v1, Lcom/twitter/android/provider/m;->G:I

    :cond_55
    return-object v1

    :cond_56
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 11

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_fe

    :cond_b
    :goto_b
    return-object v1

    :pswitch_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    iget-object v0, v0, Lcom/twitter/android/l;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_41

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "user_id"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v3, v0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_3f
    move-object v1, v0

    goto :goto_b

    :cond_41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ActivityDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "event_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_tag"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title_res_id"

    const v2, 0x7f0b01b0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3f

    :cond_68
    move-object v0, v1

    goto :goto_3f

    :pswitch_6a
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/ActivityDetailActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "type"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "event_type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "user_tag"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "status_tag"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    if-ne v6, v2, :cond_99

    const-string v0, "title_res_id"

    const v2, 0x7f0b0175

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    :cond_99
    const-string v0, "title_res_id"

    const v2, 0x7f0b0176

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    :pswitch_a3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    iget-object v0, v0, Lcom/twitter/android/l;->g:Lcom/twitter/android/provider/ActivityDataList;

    if-eqz v0, :cond_b

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ListTabActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "list_id"

    iget-wide v3, v0, Lcom/twitter/android/provider/ActivityDataList;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list_name"

    iget-object v3, v0, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list_fullname"

    iget-object v3, v0, Lcom/twitter/android/provider/ActivityDataList;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "creator_id"

    iget-wide v3, v0, Lcom/twitter/android/provider/ActivityDataList;->creatorUserId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_b

    :pswitch_d6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gb;

    iget-object v0, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->a()Lcom/twitter/android/provider/m;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-wide v2, v0, Lcom/twitter/android/provider/m;->s:J

    iget-object v0, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/android/provider/o;->a(JJ)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto/16 :goto_b

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_d6
        :pswitch_d6
        :pswitch_6a
        :pswitch_c
        :pswitch_a3
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 8

    const/4 v0, 0x1

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/bq;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gb;

    iget-object v0, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    goto :goto_b

    :cond_1d
    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/twitter/android/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    iget-object v3, v0, Lcom/twitter/android/l;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_42
    if-ge v1, v4, :cond_28

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/twitter/android/bq;->a(Landroid/widget/ImageView;Ljava/util/HashMap;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :cond_51
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_14a

    :goto_8
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/bq;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :pswitch_16
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v3, 0x7f02008f

    iget-object v4, p0, Lcom/twitter/android/bq;->k:[I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/bq;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v9, v8

    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/bq;->a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;IIJ)V

    goto :goto_8

    :pswitch_38
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v3, 0x7f02008c

    iget-object v4, p0, Lcom/twitter/android/bq;->l:[I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/bq;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/bq;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v9, v8, -0x1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/bq;->a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;IIJ)V

    goto :goto_8

    :pswitch_5f
    const/16 v0, 0x9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v3, 0x7f020095

    iget-object v4, p0, Lcom/twitter/android/bq;->m:[I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/bq;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x3

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/bq;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v9, v8, -0x1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/twitter/android/bq;->a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;IIJ)V

    goto :goto_8

    :pswitch_87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    iget-object v1, v0, Lcom/twitter/android/l;->a:Landroid/widget/ImageView;

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/twitter/android/bq;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/android/bq;->a(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_df

    const/4 v1, 0x0

    move-object v2, v1

    :goto_a6
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v1}, Lcom/twitter/android/bq;->c(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/bq;->a(Ljava/util/ArrayList;)I

    move-result v5

    if-nez v5, :cond_ea

    const/4 v1, 0x0

    :goto_b2
    if-eqz v2, :cond_ba

    if-eqz v1, :cond_ba

    iget-object v5, v1, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    if-nez v5, :cond_f2

    :cond_ba
    iget-object v2, v0, Lcom/twitter/android/l;->b:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v5, v6}, Lcom/twitter/android/bq;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    :goto_c1
    iget-object v2, v0, Lcom/twitter/android/l;->c:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/twitter/android/util/x;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/twitter/android/l;->d:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v4, v0, Lcom/twitter/android/l;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/twitter/android/l;->f:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/twitter/android/l;->g:Lcom/twitter/android/provider/ActivityDataList;

    goto/16 :goto_8

    :cond_df
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    move-object v2, v1

    goto :goto_a6

    :cond_ea
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataList;

    goto :goto_b2

    :cond_f2
    iget-object v5, v0, Lcom/twitter/android/l;->b:Landroid/widget/TextView;

    const v6, 0x7f0b0180

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-object v8, v1, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/twitter/android/bq;->d:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, v5, v2, v6}, Lcom/twitter/android/bq;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_c1

    :pswitch_10c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gb;

    iget-object v1, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/client/b;

    iget v2, v2, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v0, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    const/4 v1, 0x3

    invoke-virtual {p0, p3, v1}, Lcom/twitter/android/bq;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/bq;->b(Ljava/util/ArrayList;)Lcom/twitter/android/provider/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/m;)V

    goto/16 :goto_8

    :pswitch_12b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/gb;

    iget-object v1, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/client/b;

    iget v2, v2, Lcom/twitter/android/client/b;->f:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(F)V

    iget-object v0, v0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    const/4 v1, 0x2

    invoke-virtual {p0, p3, v1}, Lcom/twitter/android/bq;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/bq;->b(Ljava/util/ArrayList;)Lcom/twitter/android/provider/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/m;)V

    goto/16 :goto_8

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_10c
        :pswitch_12b
        :pswitch_5f
        :pswitch_16
        :pswitch_87
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/bq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :pswitch_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :pswitch_10
    move v0, v1

    goto :goto_f

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_46

    :pswitch_d
    const v1, 0x7f030059

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/gb;

    invoke-direct {v1, v0}, Lcom/twitter/android/gb;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/bq;->i:Lcom/twitter/android/widget/am;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/am;)V

    iget-object v2, v1, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/bq;->n:Lcom/twitter/android/widget/ai;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/ai;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/bq;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2f
    return-object v0

    :pswitch_30
    const v1, 0x7f030006

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/l;

    invoke-direct {v1, v0}, Lcom/twitter/android/l;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_30
        :pswitch_d
        :pswitch_d
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
