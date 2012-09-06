.class public Lcom/twitter/android/MediaPlayerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/twitter/android/widget/m;


# instance fields
.field private a:Lcom/twitter/android/widget/MediaPlayerView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/twitter/android/client/b;

.field private h:Lcom/twitter/android/br;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/MediaPlayerActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/MediaPlayerActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->setContentView(I)V

    new-instance v0, Lcom/twitter/android/br;

    invoke-direct {v0, p0}, Lcom/twitter/android/br;-><init>(Lcom/twitter/android/MediaPlayerActivity;)V

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->h:Lcom/twitter/android/br;

    invoke-static {p0}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:Lcom/twitter/android/client/b;

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->h:Lcom/twitter/android/br;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/g;)V

    invoke-virtual {p0}, Lcom/twitter/android/MediaPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/MediaPlayerView;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;->a(Landroid/net/Uri;)V

    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->b:Landroid/widget/ProgressBar;

    const-string v0, "image_url"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->g:Lcom/twitter/android/client/b;

    iget-object v3, p0, Lcom/twitter/android/MediaPlayerActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/twitter/android/client/b;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6f
    const-string v0, "t"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "a"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v1, :cond_7f

    if-eqz v3, :cond_d7

    :cond_7f
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/twitter/android/MediaPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9f

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "t"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9f
    if-eqz v3, :cond_d0

    new-array v1, v5, [Landroid/text/style/StyleSpan;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v3, v1, v6

    const v3, 0x7f0b01cb

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "a"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/twitter/android/MediaPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    invoke-static {v1, v2, v3}, Lcom/twitter/android/util/x;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d0
    iput-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/MediaPlayerView;->a(Lcom/twitter/android/widget/m;)V

    :cond_d7
    if-eqz p1, :cond_e1

    const-string v0, "seek"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:I

    :cond_e1
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/MediaPlayerView;->a()V

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->g:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/MediaPlayerActivity;->h:Lcom/twitter/android/br;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/client/g;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/MediaPlayerView;->pause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    iget v1, p0, Lcom/twitter/android/MediaPlayerActivity;->f:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/MediaPlayerView;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:I

    :cond_11
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/MediaPlayerActivity;->a:Lcom/twitter/android/widget/MediaPlayerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/MediaPlayerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/MediaPlayerActivity;->f:I

    const-string v1, "seek"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
