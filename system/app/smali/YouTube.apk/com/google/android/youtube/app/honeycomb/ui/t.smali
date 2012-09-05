.class final Lcom/google/android/youtube/app/honeycomb/ui/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/q;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/q;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 266
    check-cast p1, [Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v2, v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a(Lcom/google/android/youtube/app/honeycomb/ui/q;Landroid/net/Uri;)Lcom/google/android/youtube/app/honeycomb/ui/w;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/ui/q;->f(Lcom/google/android/youtube/app/honeycomb/ui/q;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_27
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->f(Lcom/google/android/youtube/app/honeycomb/ui/q;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 15
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 266
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "nothing to upload"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->g(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1c
    return-void

    :cond_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v1, v3

    move v5, v6

    :goto_23
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/w;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->a(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_49

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->b(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_49

    move v7, v8

    :goto_3c
    or-int/2addr v5, v7

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->c(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long v0, v1, v11

    move-wide v1, v0

    goto :goto_23

    :cond_49
    move v7, v6

    goto :goto_3c

    :cond_4b
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/w;

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v7}, Lcom/google/android/youtube/app/honeycomb/ui/q;->h(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_66

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v7}, Lcom/google/android/youtube/app/honeycomb/ui/q;->h(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->d(Lcom/google/android/youtube/app/honeycomb/ui/w;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_66
    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v7}, Lcom/google/android/youtube/app/honeycomb/ui/q;->i(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_8b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_db

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->e(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_cd

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v7}, Lcom/google/android/youtube/app/honeycomb/ui/q;->i(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->e(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->k(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_b3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_fe

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->k(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->k(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v3}, Lcom/google/android/youtube/app/honeycomb/ui/q;->g(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->l(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->l(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v5, :cond_108

    :goto_c3
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_c6
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->e(Lcom/google/android/youtube/app/honeycomb/ui/q;)V

    goto/16 :goto_1c

    :cond_cd
    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v7}, Lcom/google/android/youtube/app/honeycomb/ui/q;->i(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/w;->f(Lcom/google/android/youtube/app/honeycomb/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    :cond_db
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->i(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v7}, Lcom/google/android/youtube/app/honeycomb/ui/q;->j(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0109

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v6

    invoke-virtual {v7, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    :cond_fe
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/t;->a:Lcom/google/android/youtube/app/honeycomb/ui/q;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->k(Lcom/google/android/youtube/app/honeycomb/ui/q;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b3

    :cond_108
    move v6, v9

    goto :goto_c3
.end method
