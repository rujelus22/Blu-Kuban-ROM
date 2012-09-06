.class final Lcom/dropbox/android/activity/auth/a;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/auth/DropboxAuth;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f0d00cb

    const v6, 0x7f020043

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1be

    .line 161
    :cond_f
    :goto_f
    return-void

    .line 92
    :pswitch_10
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->b(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->c(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->d(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->e(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090183

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v3}, Lcom/dropbox/android/activity/auth/DropboxAuth;->f(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/x;

    move-result-object v3

    iget-object v3, v3, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (<a href=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;

    move-result-object v0

    iget-boolean v0, v0, Ldbxyzptlk/p/u;->a:Z

    if-eqz v0, :cond_e0

    .line 103
    const v0, 0x7f09017e

    .line 104
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->h(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020057

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->i(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v3}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;

    move-result-object v3

    iget-object v3, v3, Ldbxyzptlk/p/u;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_97
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->j(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v3}, Lcom/dropbox/android/activity/auth/DropboxAuth;->e(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v4}, Lcom/dropbox/android/activity/auth/DropboxAuth;->g(Lcom/dropbox/android/activity/auth/DropboxAuth;)Ldbxyzptlk/p/u;

    move-result-object v4

    iget-object v4, v4, Ldbxyzptlk/p/u;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->k(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->l(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_fc

    .line 120
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->m(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->l(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_f

    .line 107
    :cond_e0
    const v0, 0x7f09017d

    .line 108
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->h(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->i(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_97

    .line 121
    :cond_fc
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->n(Lcom/dropbox/android/activity/auth/DropboxAuth;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->m(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_f

    .line 127
    :pswitch_10f
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 129
    const v1, 0x7f0d00ca

    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 131
    iget-object v1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->l(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_168

    iget-object v1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->n(Lcom/dropbox/android/activity/auth/DropboxAuth;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 133
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v3}, Lcom/dropbox/android/activity/auth/DropboxAuth;->l(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 135
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 141
    :goto_158
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 142
    iget-object v1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->m(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_f

    .line 138
    :cond_168
    iget-object v1, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/auth/DropboxAuth;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_158

    .line 145
    :pswitch_176
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->c(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->b(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 150
    :pswitch_193
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->b(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->c(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->a(Lcom/dropbox/android/activity/auth/DropboxAuth;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 155
    :pswitch_1b0
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->o(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    goto/16 :goto_f

    .line 158
    :pswitch_1b7
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/a;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->p(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    goto/16 :goto_f

    .line 90
    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_10
        :pswitch_193
        :pswitch_176
        :pswitch_1b0
        :pswitch_1b7
        :pswitch_10f
    .end packed-switch
.end method
