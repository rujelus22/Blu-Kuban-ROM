.class public final Lcom/twitter/android/cf;
.super Lcom/twitter/android/j;


# instance fields
.field private final i:[I

.field private final j:[I

.field private final k:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V
    .registers 6

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/j;-><init>(Landroid/content/Context;ILcom/twitter/android/client/b;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/twitter/android/cf;->i:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/twitter/android/cf;->j:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/twitter/android/cf;->k:[I

    return-void

    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x87t 0x1t 0xbt 0x7ft
        0x88t 0x1t 0xbt 0x7ft
        0x89t 0x1t 0xbt 0x7ft
        0x8at 0x1t 0xbt 0x7ft
        0x8at 0x1t 0xbt 0x7ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x82t 0x1t 0xbt 0x7ft
        0x83t 0x1t 0xbt 0x7ft
        0x84t 0x1t 0xbt 0x7ft
        0x85t 0x1t 0xbt 0x7ft
        0x86t 0x1t 0xbt 0x7ft
    .end array-data

    :array_3a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8bt 0x1t 0xbt 0x7ft
        0x8ct 0x1t 0xbt 0x7ft
        0x8dt 0x1t 0xbt 0x7ft
        0x8et 0x1t 0xbt 0x7ft
        0x8ft 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method private a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;II)V
    .registers 20

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/twitter/android/cg;

    iget-object v1, v9, Lcom/twitter/android/cg;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, v9, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Landroid/content/res/Resources;[ILjava/util/ArrayList;III)V

    invoke-static/range {p7 .. p7}, Lcom/twitter/android/cf;->a(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x0

    :goto_25
    if-nez v1, :cond_42

    iget-object v1, v9, Lcom/twitter/android/cg;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2e
    iput-object p5, v9, Lcom/twitter/android/cg;->e:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/twitter/android/cg;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, v9, Lcom/twitter/android/cg;->g:Lcom/twitter/android/provider/ActivityDataList;

    return-void

    :cond_38
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataStatus;

    goto :goto_25

    :cond_42
    iget-object v2, v1, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    invoke-virtual {v1}, Lcom/twitter/android/provider/ActivityDataStatus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v2, v1}, Lcom/twitter/android/cf;->a(Lcom/twitter/android/cg;Lcom/twitter/android/provider/ActivityDataUser;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method private a(Lcom/twitter/android/cg;Lcom/twitter/android/provider/ActivityDataUser;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p1, Lcom/twitter/android/cg;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/twitter/android/cg;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p2}, Lcom/twitter/android/cf;->a(Landroid/widget/ImageView;Lcom/twitter/android/provider/ActivityDataUser;)V

    iget-object v0, p1, Lcom/twitter/android/cg;->j:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_30

    iget-object v0, p1, Lcom/twitter/android/cg;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/twitter/android/cg;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p1, Lcom/twitter/android/cg;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/twitter/android/cg;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/twitter/android/provider/ActivityDataUser;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 10

    const/4 v5, 0x1

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/ActivityDetailActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "event_type"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "user_tag"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    packed-switch v0, :pswitch_data_82

    :pswitch_26
    const/4 v0, 0x0

    :goto_27
    return-object v0

    :pswitch_28
    const-string v0, "title_res_id"

    const v2, 0x7f0b0174

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_30
    move-object v0, v1

    goto :goto_27

    :pswitch_32
    const-string v0, "title_res_id"

    const v4, 0x7f0b0175

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "status_tag"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_30

    :pswitch_41
    const-string v0, "title_res_id"

    const v4, 0x7f0b0176

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "status_tag"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_30

    :pswitch_50
    const-string v0, "title_res_id"

    const v2, 0x7f0b002b

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_id"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    iget-object v0, v0, Lcom/twitter/android/l;->g:Lcom/twitter/android/provider/ActivityDataList;

    iget-wide v4, v0, Lcom/twitter/android/provider/ActivityDataList;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_30

    :pswitch_69
    const-string v0, "title_res_id"

    const v2, 0x7f0b002d

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "list_id"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    iget-object v0, v0, Lcom/twitter/android/l;->g:Lcom/twitter/android/provider/ActivityDataList;

    iget-wide v4, v0, Lcom/twitter/android/provider/ActivityDataList;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_30

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_32
        :pswitch_26
        :pswitch_26
        :pswitch_41
        :pswitch_28
        :pswitch_69
        :pswitch_50
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/util/v;Ljava/util/HashMap;)V
    .registers 7

    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/v;->h:I

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/twitter/android/cf;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/l;

    check-cast v0, Lcom/twitter/android/cg;

    iget-object v2, v0, Lcom/twitter/android/cg;->d:Landroid/view/ViewGroup;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_26

    invoke-static {v2, p2}, Lcom/twitter/android/cf;->a(Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    :cond_26
    iget-object v2, v0, Lcom/twitter/android/cg;->h:Landroid/view/View;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/twitter/android/cg;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    iget-object v0, v0, Lcom/twitter/android/cg;->i:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/twitter/android/cf;->a(Landroid/widget/ImageView;Ljava/util/HashMap;)V

    goto :goto_b

    :cond_38
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 14

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_228

    :goto_8
    :pswitch_8
    check-cast p1, Lcom/twitter/android/widget/CardRowView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/cf;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/widget/CardRowView;->a(II)V

    return-void

    :pswitch_16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/twitter/android/cg;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iget-object v0, v8, Lcom/twitter/android/cg;->a:Landroid/widget/ImageView;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v8, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/cf;->i:[I

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Landroid/content/res/Resources;[ILjava/util/ArrayList;III)V

    const/4 v0, 0x1

    if-le v6, v0, :cond_57

    iget-object v0, v8, Lcom/twitter/android/cg;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v9}, Lcom/twitter/android/cf;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    :goto_4e
    iput-object v9, v8, Lcom/twitter/android/cg;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/twitter/android/cg;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/twitter/android/cg;->g:Lcom/twitter/android/provider/ActivityDataList;

    goto :goto_8

    :cond_57
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    const/4 v1, 0x0

    invoke-direct {p0, v8, v0, v1}, Lcom/twitter/android/cf;->a(Lcom/twitter/android/cg;Lcom/twitter/android/provider/ActivityDataUser;Ljava/lang/String;)V

    goto :goto_4e

    :pswitch_63
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cg;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, p3, v2}, Lcom/twitter/android/cf;->c(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1}, Lcom/twitter/android/cf;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_b2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_7f
    invoke-static {v4}, Lcom/twitter/android/cf;->a(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_bb

    const/4 v1, 0x0

    :goto_86
    iget-object v4, v0, Lcom/twitter/android/cg;->a:Landroid/widget/ImageView;

    const v5, 0x7f020092

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v2, :cond_9a

    iget-object v4, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    if-eqz v4, :cond_9a

    if-eqz v1, :cond_9a

    iget-object v4, v1, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    if-nez v4, :cond_c3

    :cond_9a
    iget-object v2, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    :goto_a1
    iget-object v2, v0, Lcom/twitter/android/cg;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/twitter/android/cg;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/twitter/android/cg;->f:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/twitter/android/cg;->g:Lcom/twitter/android/provider/ActivityDataList;

    goto/16 :goto_8

    :cond_b2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    move-object v2, v1

    goto :goto_7f

    :cond_bb
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataList;

    goto :goto_86

    :cond_c3
    iget-object v4, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const v5, 0x7f0b0190

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v6, v7

    const/4 v2, 0x1

    iget-object v7, v1, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/cf;->d:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, v4, v2, v3}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_a1

    :pswitch_df
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cg;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, p3, v2}, Lcom/twitter/android/cf;->c(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x2

    invoke-virtual {p0, p3, v2}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v1}, Lcom/twitter/android/cf;->a(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_13d

    const/4 v1, 0x0

    move-object v2, v1

    :goto_100
    invoke-static {v3}, Lcom/twitter/android/cf;->a(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_146

    const/4 v1, 0x0

    move-object v3, v1

    :goto_108
    invoke-static {v5}, Lcom/twitter/android/cf;->a(Ljava/util/ArrayList;)I

    move-result v1

    iget-object v6, v0, Lcom/twitter/android/cg;->a:Landroid/widget/ImageView;

    const v7, 0x7f020092

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v2, :cond_120

    iget-object v6, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    if-eqz v6, :cond_120

    if-eqz v3, :cond_120

    iget-object v6, v3, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    if-nez v6, :cond_14f

    :cond_120
    iget-object v1, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    :goto_127
    const/4 v1, 0x6

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1d3

    iget-object v1, v0, Lcom/twitter/android/cg;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v5}, Lcom/twitter/android/cf;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    :goto_134
    iput-object v5, v0, Lcom/twitter/android/cg;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/twitter/android/cg;->f:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/twitter/android/cg;->g:Lcom/twitter/android/provider/ActivityDataList;

    goto/16 :goto_8

    :cond_13d
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    move-object v2, v1

    goto :goto_100

    :cond_146
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataList;

    move-object v3, v1

    goto :goto_108

    :cond_14f
    packed-switch v1, :pswitch_data_23a

    iget-object v1, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const v6, 0x7f0b0193

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v7, v8

    const/4 v2, 0x1

    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x2

    iget-object v8, v3, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/cf;->d:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, v1, v2, v4}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_127

    :pswitch_17a
    iget-object v1, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_127

    :pswitch_182
    iget-object v1, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const v6, 0x7f0b0191

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-object v8, v3, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/twitter/android/cf;->d:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, v1, v2, v4}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto :goto_127

    :pswitch_19e
    iget-object v6, v0, Lcom/twitter/android/cg;->b:Landroid/widget/TextView;

    const v7, 0x7f0b0192

    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v2, v8, v1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v8, v2

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    iget-object v1, v1, Lcom/twitter/android/provider/ActivityDataUser;->name:Ljava/lang/String;

    aput-object v1, v8, v2

    const/4 v1, 0x3

    iget-object v2, v3, Lcom/twitter/android/provider/ActivityDataList;->name:Ljava/lang/String;

    aput-object v2, v8, v1

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/cf;->d:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0, v6, v1, v2}, Lcom/twitter/android/cf;->a(Landroid/widget/TextView;Ljava/lang/String;[Landroid/text/style/StyleSpan;)V

    goto/16 :goto_127

    :cond_1d3
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/provider/ActivityDataUser;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/cf;->a(Lcom/twitter/android/cg;Lcom/twitter/android/provider/ActivityDataUser;Ljava/lang/String;)V

    goto/16 :goto_134

    :pswitch_1e0
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v3, 0x7f02008c

    iget-object v4, p0, Lcom/twitter/android/cf;->j:[I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/cf;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v9, v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/cf;->a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;II)V

    goto/16 :goto_8

    :pswitch_203
    const/16 v0, 0x9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v3, 0x7f020095

    iget-object v4, p0, Lcom/twitter/android/cf;->k:[I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/cf;->a(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v0, 0x3

    invoke-virtual {p0, p3, v0}, Lcom/twitter/android/cf;->b(Landroid/database/Cursor;I)Ljava/util/ArrayList;

    move-result-object v7

    add-int/lit8 v9, v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/cf;->a(Landroid/view/View;Landroid/content/Context;I[ILjava/util/ArrayList;ILjava/util/ArrayList;II)V

    goto/16 :goto_8

    nop

    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_1e0
        :pswitch_8
        :pswitch_8
        :pswitch_203
        :pswitch_16
        :pswitch_df
        :pswitch_63
    .end packed-switch

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_17a
        :pswitch_182
        :pswitch_19e
    .end packed-switch
.end method

.method public final getItemViewType(I)I
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/twitter/android/cf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_1c

    move v0, v1

    :goto_f
    return v0

    :pswitch_10
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v1, :cond_19

    const/4 v0, 0x0

    goto :goto_f

    :cond_19
    move v0, v1

    goto :goto_f

    nop

    :pswitch_data_1c
    .packed-switch 0x5
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
    .registers 9

    const v4, 0x7f030005

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_44

    invoke-virtual {v0, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/cg;

    invoke-direct {v1, v0}, Lcom/twitter/android/cg;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/cf;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    return-object v0

    :pswitch_22
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v1, v3, :cond_3e

    const v1, 0x7f030004

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_30
    new-instance v1, Lcom/twitter/android/cg;

    invoke-direct {v1, v0}, Lcom/twitter/android/cg;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/cf;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3e
    invoke-virtual {v0, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_30

    nop

    :pswitch_data_44
    .packed-switch 0x5
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method
