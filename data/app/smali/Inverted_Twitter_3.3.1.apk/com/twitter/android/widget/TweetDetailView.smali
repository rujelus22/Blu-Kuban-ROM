.class public Lcom/twitter/android/widget/TweetDetailView;
.super Lcom/twitter/android/widget/CardRowView;


# static fields
.field private static final e:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Lcom/twitter/android/provider/m;

.field b:Lcom/twitter/android/widget/ad;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/widget/TweetDetailView;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetDetailView;->a()V

    return-void
.end method

.method private a(ILcom/twitter/android/api/TweetMedia;)Landroid/view/ViewGroup;
    .registers 12

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    const v3, 0x7f0700b6

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p2, Lcom/twitter/android/api/TweetMedia;->authorUser:Lcom/twitter/android/api/TweetMedia$User;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_81

    new-array v3, v6, [Landroid/text/style/StyleSpan;

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b01cb

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/twitter/android/api/TweetMedia$User;->fullName:Ljava/lang/String;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x22

    invoke-static {v3, v2, v4}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_58
    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p2, Lcom/twitter/android/api/TweetMedia;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6c
    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p2, Lcom/twitter/android/api/TweetMedia;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_80
    return-object v0

    :cond_81
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_58

    :cond_85
    iget-object v2, p2, Lcom/twitter/android/api/TweetMedia;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6c

    :cond_8e
    iget-object v2, p2, Lcom/twitter/android/api/TweetMedia;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_80
.end method

.method private a()V
    .registers 4

    sget-object v0, Lcom/twitter/android/widget/TweetDetailView;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/TweetMedia;Lcom/twitter/android/client/b;)V
    .registers 11

    const v7, 0x7f0a001c

    const v6, 0x7f020133

    const v4, 0x7f07001f

    const/4 v5, 0x0

    if-nez p1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget v0, p1, Lcom/twitter/android/api/TweetMedia;->type:I

    packed-switch v0, :pswitch_data_130

    goto :goto_c

    :pswitch_13
    iget v0, p2, Lcom/twitter/android/client/b;->g:F

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/TweetMedia;->a(F)Lcom/twitter/android/api/m;

    move-result-object v1

    iget-object v2, v1, Lcom/twitter/android/api/m;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_5e

    const v0, 0x7f030033

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(ILcom/twitter/android/api/TweetMedia;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/OverlayImageView;

    iget v4, v1, Lcom/twitter/android/api/m;->b:I

    iget v1, v1, Lcom/twitter/android/api/m;->c:I

    invoke-virtual {v0, v4, v1}, Lcom/twitter/android/widget/OverlayImageView;->a(II)V

    new-instance v1, Lcom/twitter/android/widget/ae;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/widget/ae;-><init>(Lcom/twitter/android/widget/TweetDetailView;Lcom/twitter/android/api/TweetMedia;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/view/ViewGroup;

    :goto_4b
    invoke-virtual {p2, v2}, Lcom/twitter/android/client/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_65

    const v2, 0x7f02012e

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/OverlayImageView;->a(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/OverlayImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_5e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/OverlayImageView;

    goto :goto_4b

    :cond_65
    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Lcom/twitter/android/widget/OverlayImageView;->setBackgroundResource(I)V

    goto :goto_c

    :pswitch_6f
    iget v0, p2, Lcom/twitter/android/client/b;->g:F

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/TweetMedia;->a(F)Lcom/twitter/android/api/m;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_ba

    const v0, 0x7f030034

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(ILcom/twitter/android/api/TweetMedia;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/OverlayImageView;

    iget v3, v1, Lcom/twitter/android/api/m;->b:I

    iget v4, v1, Lcom/twitter/android/api/m;->c:I

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/widget/OverlayImageView;->a(II)V

    new-instance v3, Lcom/twitter/android/widget/af;

    invoke-direct {v3, p0, p1}, Lcom/twitter/android/widget/af;-><init>(Lcom/twitter/android/widget/TweetDetailView;Lcom/twitter/android/api/TweetMedia;)V

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/view/ViewGroup;

    :goto_9f
    iget-object v1, v1, Lcom/twitter/android/api/m;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/OverlayImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v6}, Lcom/twitter/android/widget/OverlayImageView;->a(I)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/OverlayImageView;->setBackgroundResource(I)V

    goto/16 :goto_c

    :cond_ba
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/OverlayImageView;

    goto :goto_9f

    :cond_c1
    invoke-virtual {p2, v1}, Lcom/twitter/android/client/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_d2

    invoke-virtual {v0, v6}, Lcom/twitter/android/widget/OverlayImageView;->a(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/OverlayImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    :cond_d2
    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Lcom/twitter/android/widget/OverlayImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Lcom/twitter/android/widget/OverlayImageView;->setBackgroundResource(I)V

    goto/16 :goto_c

    :pswitch_dd
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/view/ViewGroup;

    iget v1, p2, Lcom/twitter/android/client/b;->g:F

    invoke-virtual {p1, v1}, Lcom/twitter/android/api/TweetMedia;->a(F)Lcom/twitter/android/api/m;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/android/api/m;->a:Ljava/lang/String;

    if-nez v0, :cond_129

    const v0, 0x7f030051

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/widget/TweetDetailView;->a(ILcom/twitter/android/api/TweetMedia;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_125

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_101
    iget-object v3, p1, Lcom/twitter/android/api/TweetMedia;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_111

    new-instance v3, Lcom/twitter/android/widget/ag;

    invoke-direct {v3, p0, p1}, Lcom/twitter/android/widget/ag;-><init>(Lcom/twitter/android/widget/TweetDetailView;Lcom/twitter/android/api/TweetMedia;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_111
    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/twitter/android/widget/TweetDetailView;->m:Landroid/view/ViewGroup;

    :goto_118
    if-eqz v0, :cond_c

    invoke-virtual {p2, v1}, Lcom/twitter/android/client/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_c

    :cond_125
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_101

    :cond_129
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_118

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_13
        :pswitch_6f
        :pswitch_dd
    .end packed-switch
.end method

.method public final a(Lcom/twitter/android/client/b;)V
    .registers 6

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/android/provider/m;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget v0, v1, Lcom/twitter/android/provider/m;->t:I

    iget-wide v2, v1, Lcom/twitter/android/provider/m;->n:J

    iget-object v1, v1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/ImageView;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public final a(Lcom/twitter/android/provider/m;Lcom/twitter/android/client/b;Lcom/twitter/android/widget/ad;Lcom/twitter/android/api/TweetEntities;)V
    .registers 14

    const v8, 0x7f0b00f2

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/twitter/android/widget/TweetDetailView;->a:Lcom/twitter/android/provider/m;

    iput-object p3, p0, Lcom/twitter/android/widget/TweetDetailView;->b:Lcom/twitter/android/widget/ad;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->r:Z

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Landroid/widget/TextView;

    const v2, 0x7f0b0040

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2c
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p4, p3}, Lcom/twitter/android/widget/ah;->a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Lcom/twitter/android/api/TweetEntities;Lcom/twitter/android/widget/ad;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/twitter/android/provider/m;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/twitter/android/provider/m;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->h()Z

    move-result v2

    if-eqz v2, :cond_be

    const v2, 0x7f02009a

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_6e
    invoke-virtual {p0, p2}, Lcom/twitter/android/widget/TweetDetailView;->a(Lcom/twitter/android/client/b;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/ImageView;

    iget-wide v2, p1, Lcom/twitter/android/provider/m;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->B:Z

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/ImageView;

    const v2, 0x7f02012d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8d
    sget-object v1, Lcom/twitter/android/widget/TweetDetailView;->e:Ljava/text/SimpleDateFormat;

    iget-wide v2, p1, Lcom/twitter/android/provider/m;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/android/provider/m;->D:Lcom/twitter/android/api/u;

    if-eqz v2, :cond_f7

    iget-object v3, v2, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    if-eqz v3, :cond_f7

    iget-object v3, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Landroid/widget/TextView;

    const v4, 0x7f0b004d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    iget-object v1, v2, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b6
    return-void

    :cond_b7
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2c

    :cond_be
    invoke-virtual {p1}, Lcom/twitter/android/provider/m;->g()Z

    move-result v2

    if-eqz v2, :cond_db

    const v2, 0x7f02009d

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/twitter/android/provider/m;->f:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6e

    :cond_db
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6e

    :cond_df
    iget-boolean v1, p1, Lcom/twitter/android/provider/m;->m:Z

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/ImageView;

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8d

    :cond_f1
    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8d

    :cond_f7
    iget-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6
.end method

.method protected onFinishInflate()V
    .registers 3

    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->l:Landroid/widget/ImageView;

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->h:Landroid/widget/TextView;

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->g:Landroid/widget/TextView;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->c:Landroid/widget/ImageView;

    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Landroid/widget/TextView;

    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->i:Landroid/widget/TextView;

    const v0, 0x7f0700b8

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Landroid/widget/TextView;

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->k:Landroid/widget/RelativeLayout;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetDetailView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/TweetDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetDetailView;->d:Landroid/widget/Button;

    return-void
.end method
