.class public Lcom/twitter/android/widget/StoryView;
.super Lcom/twitter/android/widget/CardRowView;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/twitter/android/widget/UserView;

.field public j:Lcom/twitter/android/api/TwitterStory;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:I

.field public r:I

.field private s:I

.field private t:[Landroid/text/style/StyleSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/StoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f01000b

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/StoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ec;->StoryView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/StoryView;->s:I

    new-array v1, v4, [Landroid/text/style/StyleSpan;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->t:[Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V
    .registers 12

    const/4 v2, 0x0

    if-eqz p2, :cond_4b

    invoke-virtual {p2}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    iget-object v3, v0, Lcom/twitter/android/api/TwitterStory$SocialProof;->users:[Lcom/twitter/android/api/TwitterStory$User;

    if-eqz v3, :cond_4b

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4b

    array-length v4, v3

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v2

    :goto_1a
    const/4 v0, 0x3

    if-ge v1, v0, :cond_4b

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-ge v1, v4, :cond_45

    aget-object v5, v3, v1

    const/4 v6, 0x2

    iget-wide v7, v5, Lcom/twitter/android/api/TwitterStory$User;->userId:J

    iget-object v5, v5, Lcom/twitter/android/api/TwitterStory$User;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8, v5}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3e

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_37
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_3e
    const v5, 0x7f0200e8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_37

    :cond_45
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3a

    :cond_4b
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/b;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {p1, v0}, Lcom/twitter/android/client/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_15

    const v0, 0x7f020019

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14
.end method

.method public final a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;I)V

    return-void
.end method

.method public final a(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;I)V
    .registers 15

    const v10, 0x7f0b01c8

    const/16 v9, 0x22

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v8, 0x0

    iget v0, p2, Lcom/twitter/android/api/TwitterStory;->type:I

    packed-switch v0, :pswitch_data_1c2

    :goto_e
    iget v0, p2, Lcom/twitter/android/api/TwitterStory;->type:I

    iput v0, p0, Lcom/twitter/android/widget/StoryView;->k:I

    iput-object p2, p0, Lcom/twitter/android/widget/StoryView;->j:Lcom/twitter/android/api/TwitterStory;

    iget v0, p2, Lcom/twitter/android/api/TwitterStory;->identifier:I

    iput v0, p0, Lcom/twitter/android/widget/StoryView;->r:I

    return-void

    :pswitch_19
    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    if-eqz v0, :cond_97

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->displayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->o:Ljava/lang/String;

    :cond_3f
    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->media:Ljava/util/ArrayList;

    if-eqz v1, :cond_a6

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->media:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a6

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->media:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/TwitterStory$Media;

    if-eqz v1, :cond_a0

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5e
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_ca

    iget-object v1, p2, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    iget-object v2, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/twitter/android/widget/StoryView;->n:Ljava/lang/String;

    iget-object v2, v1, Lcom/twitter/android/api/TwitterStory$SocialProof;->topFollowingName:Ljava/lang/String;

    if-nez v2, :cond_ac

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    const v2, 0x7f0b01c7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_90
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/StoryView;->b(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V

    :cond_93
    :goto_93
    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->m:Ljava/lang/String;

    :cond_97
    iget v0, p0, Lcom/twitter/android/widget/StoryView;->s:I

    iput v0, p0, Lcom/twitter/android/widget/StoryView;->q:I

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;)V

    goto/16 :goto_e

    :cond_a0
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5e

    :cond_a6
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5e

    :cond_ac
    iget-object v3, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/widget/StoryView;->t:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Lcom/twitter/android/widget/StoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0004

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$SocialProof;->users:[Lcom/twitter/android/api/TwitterStory$User;

    array-length v1, v1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v9}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_90

    :cond_ca
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/widget/StoryView;->t:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Lcom/twitter/android/widget/StoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v3, v10, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f5
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_93

    :pswitch_ff
    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->event:Lcom/twitter/android/api/TwitterStory$EventResponse;

    if-eqz v0, :cond_135

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->urls:Lcom/twitter/android/api/TwitterStory$EventUrl;

    if-eqz v1, :cond_11f

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->urls:Lcom/twitter/android/api/TwitterStory$EventUrl;

    iget-object v2, v2, Lcom/twitter/android/api/TwitterStory$EventUrl;->displayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->urls:Lcom/twitter/android/api/TwitterStory$EventUrl;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$EventUrl;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->o:Ljava/lang/String;

    :cond_11f
    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->media:Lcom/twitter/android/api/TwitterStory$Media;

    if-eqz v1, :cond_13e

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->media:Lcom/twitter/android/api/TwitterStory$Media;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12e
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$EventResponse;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_135
    iget v0, p0, Lcom/twitter/android/widget/StoryView;->s:I

    iput v0, p0, Lcom/twitter/android/widget/StoryView;->q:I

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;)V

    goto/16 :goto_e

    :cond_13e
    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12e

    :pswitch_144
    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$User;

    iget-wide v1, v0, Lcom/twitter/android/api/TwitterStory$User;->userId:J

    iput-wide v1, p0, Lcom/twitter/android/widget/StoryView;->p:J

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$User;->profileImageUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    iget-wide v2, v0, Lcom/twitter/android/api/TwitterStory$User;->userId:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/widget/UserView;->a(J)V

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    iget-object v2, v0, Lcom/twitter/android/api/TwitterStory$User;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/twitter/android/api/TwitterStory$User;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    iget-boolean v2, v0, Lcom/twitter/android/api/TwitterStory$User;->verified:Z

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/UserView;->c(Z)V

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    iget-boolean v0, v0, Lcom/twitter/android/api/TwitterStory$User;->isProtected:Z

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/UserView;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/StoryView;->b(Lcom/twitter/android/client/b;)V

    goto/16 :goto_e

    :pswitch_179
    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    if-eqz v0, :cond_193

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_193

    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$Media;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Media;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    :cond_193
    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->t:[Landroid/text/style/StyleSpan;

    invoke-virtual {p0}, Lcom/twitter/android/widget/StoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v4, v4, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v2, v10, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->n:Ljava/lang/String;

    iput p3, p0, Lcom/twitter/android/widget/StoryView;->q:I

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/StoryView;->a(Lcom/twitter/android/client/b;)V

    goto/16 :goto_e

    nop

    :pswitch_data_1c2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_179
        :pswitch_144
        :pswitch_ff
    .end packed-switch
.end method

.method public final b(Lcom/twitter/android/client/b;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/twitter/android/widget/StoryView;->p:J

    iget-object v3, p0, Lcom/twitter/android/widget/StoryView;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :cond_16
    iget-object v0, p0, Lcom/twitter/android/widget/StoryView;->j:Lcom/twitter/android/api/TwitterStory;

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/StoryView;->b(Lcom/twitter/android/client/b;Lcom/twitter/android/api/TwitterStory;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    const v3, 0x7f0700a3

    invoke-super {p0}, Lcom/twitter/android/widget/CardRowView;->onFinishInflate()V

    iget v0, p0, Lcom/twitter/android/widget/StoryView;->s:I

    if-lez v0, :cond_1d

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/widget/StoryView;->s:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/twitter/android/widget/StoryView;->s:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->a:Landroid/widget/ImageView;

    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->b:Landroid/widget/TextView;

    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->c:Landroid/widget/TextView;

    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->d:Landroid/widget/TextView;

    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->e:Landroid/widget/TextView;

    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->i:Lcom/twitter/android/widget/UserView;

    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->h:Landroid/widget/TextView;

    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/StoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/StoryView;->g:Landroid/widget/TextView;

    return-void
.end method
