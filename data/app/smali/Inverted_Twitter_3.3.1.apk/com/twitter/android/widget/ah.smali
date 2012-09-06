.class public final Lcom/twitter/android/widget/ah;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/widget/ad;)V
    .registers 15

    const/16 v9, 0x21

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-nez p4, :cond_3e

    move v0, v1

    :goto_11
    sget-object v2, Lcom/twitter/android/util/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_17
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v6, v3, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Lcom/twitter/android/widget/a;

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7, p4}, Lcom/twitter/android/widget/a;-><init>(ILjava/lang/String;Lcom/twitter/android/widget/ad;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v6, v3, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_17

    :cond_3e
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_11

    :cond_46
    if-eqz p3, :cond_54

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_54
    sget-object v0, Lcom/twitter/android/util/k;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_5a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_bb

    new-instance v2, Lcom/twitter/android/api/TweetEntities$Url;

    invoke-direct {v2}, Lcom/twitter/android/api/TweetEntities$Url;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/android/api/TweetEntities$Url;->url:Ljava/lang/String;

    new-instance v3, Lcom/twitter/android/widget/b;

    invoke-direct {v3, v1, p4, v2}, Lcom/twitter/android/widget/b;-><init>(ILcom/twitter/android/widget/ad;Lcom/twitter/android/api/TweetEntities$Url;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5a

    :cond_7c
    const/4 v3, 0x0

    iget-object v0, p3, Lcom/twitter/android/api/TweetEntities;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_83
    :goto_83
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities$Url;

    iget v2, v0, Lcom/twitter/android/api/TweetEntities$Url;->start:I

    sub-int v6, v2, v3

    iget v2, v0, Lcom/twitter/android/api/TweetEntities$Url;->end:I

    sub-int/2addr v2, v3

    if-ltz v6, :cond_83

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-gt v2, v7, :cond_83

    iget-object v7, v0, Lcom/twitter/android/api/TweetEntities$Url;->displayUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b2

    invoke-virtual {v4, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v7, v2, v7

    sub-int/2addr v2, v7

    add-int/2addr v3, v7

    :cond_b2
    new-instance v7, Lcom/twitter/android/widget/b;

    invoke-direct {v7, v1, p4, v0}, Lcom/twitter/android/widget/b;-><init>(ILcom/twitter/android/widget/ad;Lcom/twitter/android/api/TweetEntities$Url;)V

    invoke-virtual {v4, v7, v6, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_83

    :cond_bb
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Lcom/twitter/android/client/Session;Lcom/twitter/android/provider/m;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .registers 16

    const v4, 0x7f020083

    const/16 v11, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v5, v3

    :goto_c
    if-ge v5, v6, :cond_99

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-wide v7, p1, Lcom/twitter/android/provider/m;->q:J

    invoke-virtual {p0}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_2d

    move v1, v2

    :goto_1f
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_9a

    :goto_26
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_c

    :cond_2d
    move v1, v3

    goto :goto_1f

    :sswitch_2f
    if-eqz v1, :cond_40

    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v1, :cond_3c

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_26

    :cond_3c
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_26

    :cond_40
    iget-wide v7, p1, Lcom/twitter/android/provider/m;->E:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_58

    move v1, v4

    :goto_49
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->m:Z

    if-nez v1, :cond_5c

    move v1, v2

    :goto_54
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_26

    :cond_58
    const v1, 0x7f02007f

    goto :goto_49

    :cond_5c
    move v1, v3

    goto :goto_54

    :sswitch_5e
    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->l:Z

    if-eqz v1, :cond_69

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_26

    :cond_69
    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_26

    :sswitch_70
    if-nez v1, :cond_76

    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->m:Z

    if-nez v1, :cond_7b

    :cond_76
    move v1, v2

    :goto_77
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_26

    :cond_7b
    move v1, v3

    goto :goto_77

    :sswitch_7d
    if-eqz v1, :cond_87

    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->r:Z

    if-nez v1, :cond_87

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_26

    :cond_87
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_26

    :sswitch_8b
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->j()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_26

    :cond_95
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_26

    :cond_99
    return-void

    :sswitch_data_9a
    .sparse-switch
        0x7f07001b -> :sswitch_2f
        0x7f07001c -> :sswitch_5e
        0x7f07001d -> :sswitch_70
        0x7f07001e -> :sswitch_7d
        0x7f0700b2 -> :sswitch_8b
    .end sparse-switch
.end method
