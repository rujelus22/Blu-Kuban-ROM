.class public final Lcom/twitter/android/cl;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/twitter/android/widget/an;


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/client/b;

.field private final c:[Landroid/text/style/StyleSpan;

.field private final d:I

.field private e:Lcom/twitter/android/widget/StoryView;

.field private f:Ljava/util/ArrayList;

.field private g:Lcom/twitter/android/api/y;

.field private h:Lcom/twitter/android/api/TwitterStory;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Lcom/twitter/android/widget/an;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/b;IZZLcom/twitter/android/widget/an;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iput-object p2, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    new-array v0, v3, [Landroid/text/style/StyleSpan;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/twitter/android/cl;->c:[Landroid/text/style/StyleSpan;

    iput p3, p0, Lcom/twitter/android/cl;->d:I

    iput-boolean p4, p0, Lcom/twitter/android/cl;->j:Z

    iput-boolean p5, p0, Lcom/twitter/android/cl;->k:Z

    iput-object p6, p0, Lcom/twitter/android/cl;->l:Lcom/twitter/android/widget/an;

    iput v2, p0, Lcom/twitter/android/cl;->m:I

    return-void
.end method

.method private a(Lcom/twitter/android/widget/StoryView;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/twitter/android/cl;->j:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/twitter/android/widget/StoryView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/twitter/android/widget/StoryView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p1, Lcom/twitter/android/widget/StoryView;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    iget-object v1, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/StoryView;->b(Lcom/twitter/android/client/b;)V

    :cond_b
    return-void
.end method

.method final a(I)V
    .registers 4

    iget v0, p0, Lcom/twitter/android/cl;->m:I

    if-eq v0, p1, :cond_1c

    iput p1, p0, Lcom/twitter/android/cl;->m:I

    iget-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    iget-object v0, v0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    iget-object v1, v0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    :cond_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method final a(Lcom/twitter/android/api/TwitterStory;Lcom/twitter/android/api/y;Ljava/util/ArrayList;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    iput-object p2, p0, Lcom/twitter/android/cl;->g:Lcom/twitter/android/api/y;

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iput v1, p0, Lcom/twitter/android/cl;->m:I

    :goto_b
    invoke-virtual {p0}, Lcom/twitter/android/cl;->notifyDataSetChanged()V

    return-void

    :cond_f
    if-eqz p1, :cond_3d

    iput-object p1, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    iget v0, p1, Lcom/twitter/android/api/TwitterStory;->type:I

    packed-switch v0, :pswitch_data_58

    goto :goto_b

    :pswitch_19
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iput v1, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_b

    :pswitch_1f
    const/4 v0, 0x3

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iget-object v0, p1, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$User;

    iget v0, v0, Lcom/twitter/android/api/TwitterStory$User;->friendship:I

    iput v0, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_b

    :pswitch_31
    const/4 v0, 0x4

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iput v1, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_b

    :pswitch_37
    const/4 v0, 0x5

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iput v1, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_b

    :cond_3d
    if-eqz p3, :cond_4c

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    iput-object p3, p0, Lcom/twitter/android/cl;->f:Ljava/util/ArrayList;

    iput v1, p0, Lcom/twitter/android/cl;->i:I

    iput v1, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_b

    :cond_4c
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/cl;->i:I

    iput-object v2, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    iput-object v2, p0, Lcom/twitter/android/cl;->f:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/twitter/android/cl;->g:Lcom/twitter/android/api/y;

    iput v1, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_b

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_19
        :pswitch_31
        :pswitch_1f
        :pswitch_37
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/widget/UserView;J)V
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/twitter/android/widget/UserView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/twitter/android/cl;->m:I

    invoke-static {v0, v1}, Lcom/twitter/android/provider/ad;->b(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/cl;->m:I

    :goto_f
    iget-object v0, p0, Lcom/twitter/android/cl;->l:Lcom/twitter/android/widget/an;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/android/widget/an;->a(Lcom/twitter/android/widget/UserView;J)V

    return-void

    :cond_15
    iget v0, p0, Lcom/twitter/android/cl;->m:I

    invoke-static {v0, v1}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/cl;->m:I

    goto :goto_f
.end method

.method final a(Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;)V

    :cond_11
    return-void
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/cl;->m:I

    return v0
.end method

.method public final getCount()I
    .registers 3

    iget v0, p0, Lcom/twitter/android/cl;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    iget v0, p0, Lcom/twitter/android/cl;->i:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    const v11, 0x7f070085

    const/16 v10, 0x22

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_10

    iget v0, p0, Lcom/twitter/android/cl;->i:I

    packed-switch v0, :pswitch_data_1be

    :cond_10
    move-object v1, p2

    :goto_11
    iget v0, p0, Lcom/twitter/android/cl;->i:I

    packed-switch v0, :pswitch_data_1ce

    :cond_16
    :goto_16
    return-object v1

    :pswitch_17
    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iput-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    goto :goto_11

    :pswitch_2a
    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004c

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iput-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    goto :goto_11

    :pswitch_3d
    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004f

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/android/widget/StoryView;

    iget-boolean v0, p0, Lcom/twitter/android/cl;->k:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, v6, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/widget/UserView;->a(ILcom/twitter/android/widget/an;)V

    const v1, 0x7f02003d

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/widget/UserView;->a(IIIII)V

    :cond_6e
    iput-object v6, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    move-object v1, v6

    goto :goto_11

    :pswitch_72
    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004e

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iput-object v0, p0, Lcom/twitter/android/cl;->e:Lcom/twitter/android/widget/StoryView;

    goto :goto_11

    :pswitch_85
    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030044

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_11

    :pswitch_94
    iget-object v0, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_aa
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iget-object v2, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V

    iget-object v2, v0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0b01a3

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/cl;->a(Lcom/twitter/android/widget/StoryView;I)V

    goto/16 :goto_16

    :pswitch_c1
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iget-object v2, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V

    iget-object v2, v0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0b01a4

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/cl;->a(Lcom/twitter/android/widget/StoryView;I)V

    goto/16 :goto_16

    :pswitch_d8
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iget-object v2, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v0, v2, v4}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V

    const v2, 0x7f0b01a5

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/cl;->a(Lcom/twitter/android/widget/StoryView;I)V

    iget-object v0, v0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    iget v2, p0, Lcom/twitter/android/cl;->m:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f1

    move v3, v7

    :cond_f1
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    goto/16 :goto_16

    :pswitch_f6
    move-object v0, v1

    check-cast v0, Lcom/twitter/android/widget/StoryView;

    iget-object v2, p0, Lcom/twitter/android/cl;->b:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    iget v5, p0, Lcom/twitter/android/cl;->d:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;I)V

    iget-object v2, p0, Lcom/twitter/android/cl;->h:Lcom/twitter/android/api/TwitterStory;

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory$Data;->status:Lcom/twitter/android/api/TwitterStory$Status;

    iget-object v4, v0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/twitter/android/widget/StoryView;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/widget/StoryView;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/cl;->c:[Landroid/text/style/StyleSpan;

    iget-object v5, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    const v6, 0x7f0b0173

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/twitter/android/api/TwitterStory$Status;->name:Ljava/lang/String;

    aput-object v9, v8, v3

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory$Status;->content:Ljava/lang/String;

    aput-object v2, v8, v7

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v10}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :pswitch_133
    iget-object v2, p0, Lcom/twitter/android/cl;->g:Lcom/twitter/android/api/y;

    const v0, 0x7f070097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v2, Lcom/twitter/android/api/y;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/twitter/android/api/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_162

    iget-object v2, v2, Lcom/twitter/android/api/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    aget v6, v2, v3

    aget v2, v2, v7

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_162
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :pswitch_167
    iget-object v4, p0, Lcom/twitter/android/cl;->f:Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    :goto_175
    if-ge v2, v6, :cond_19f

    add-int/lit8 v0, v6, -0x1

    if-ne v2, v0, :cond_188

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_184
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_175

    :cond_188
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    const v9, 0x7f0b0165

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_184

    :cond_19f
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/cl;->c:[Landroid/text/style/StyleSpan;

    iget-object v4, p0, Lcom/twitter/android/cl;->a:Landroid/content/Context;

    const v6, 0x7f0b01c5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    nop

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_94
        :pswitch_85
        :pswitch_2a
        :pswitch_3d
        :pswitch_72
        :pswitch_17
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_167
        :pswitch_133
        :pswitch_aa
        :pswitch_d8
        :pswitch_f6
        :pswitch_c1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method
