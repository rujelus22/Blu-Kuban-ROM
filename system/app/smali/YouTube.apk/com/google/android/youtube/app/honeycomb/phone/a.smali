.class public final Lcom/google/android/youtube/app/honeycomb/phone/a;
.super Lcom/google/android/youtube/app/honeycomb/phone/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field private b:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private c:Lcom/google/android/youtube/core/model/UserAuth;

.field private d:Lcom/google/android/youtube/core/b/ae;

.field private e:Lcom/google/android/youtube/core/b/ag;

.field private f:Lcom/google/android/youtube/core/d;

.field private g:Lcom/google/android/youtube/app/ui/StackButton;

.field private h:Lcom/google/android/youtube/app/ui/StackButton;

.field private i:Lcom/google/android/youtube/app/ui/StackButton;

.field private j:Lcom/google/android/youtube/app/ui/StackButton;

.field private k:Lcom/google/android/youtube/app/ui/StackButton;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/p;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/a;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->m()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/a;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Landroid/widget/TextView;

    const-string v1, "%1$,d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p1, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->o:Landroid/widget/TextView;

    const-string v1, "%1$,d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    new-instance v3, Lcom/google/android/youtube/app/honeycomb/phone/d;

    invoke-direct {v3, p0, v5}, Lcom/google/android/youtube/app/honeycomb/phone/d;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->m()V

    goto :goto_49
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/d;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/d;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/a;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/app/ui/StackButton;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method

.method private l()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->n()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 87
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    :cond_10
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_160

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    .line 96
    :goto_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b016b

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b016d

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b016f

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b0170

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v2, 0x7f0b016e

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/StackButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/StackButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/StackButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/StackButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/StackButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->p:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(I)V

    .line 99
    return-void

    .line 93
    :cond_160
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->q:Landroid/view/View;

    goto/16 :goto_25
.end method

.method private m()V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->p:Landroid/widget/ImageView;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->l()V

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->c:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_c

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->c:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 82
    :cond_c
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f12

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 121
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->c:Lcom/google/android/youtube/core/model/UserAuth;

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/c;

    invoke-direct {v2, p0, v6}, Lcom/google/android/youtube/app/honeycomb/phone/c;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    new-instance v1, Lcom/google/android/youtube/app/ui/cg;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/cg;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/l;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    new-instance v1, Lcom/google/android/youtube/app/ui/cg;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/cg;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/b/ae;->d(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/l;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    new-instance v1, Lcom/google/android/youtube/app/ui/cg;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/cg;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/b/ae;->b(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/l;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    new-instance v1, Lcom/google/android/youtube/app/ui/cg;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/cg;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/b/ae;->c(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/l;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/b;

    invoke-direct {v1, p0, v6}, Lcom/google/android/youtube/app/honeycomb/phone/b;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;B)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/b/ae;->e(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/l;)V

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/b/ae;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/b/ag;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/d;

    .line 74
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->l()V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 113
    return-void
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 237
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_e

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->d()V

    .line 254
    :cond_d
    :goto_d
    return-void

    .line 245
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_1c

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->e()V

    goto :goto_d

    .line 247
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_2a

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->f()V

    goto :goto_d

    .line 249
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_38

    .line 250
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->g()V

    goto :goto_d

    .line 251
    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_d

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->h()V

    goto :goto_d
.end method
