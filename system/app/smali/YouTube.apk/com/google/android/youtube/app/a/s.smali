.class public final Lcom/google/android/youtube/app/a/s;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/s;->g:Landroid/graphics/Bitmap;

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/s;->b:Landroid/view/LayoutInflater;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/s;->c:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/s;->e:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/a/s;->d:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 63
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/s;->notifyDataSetChanged()V

    .line 87
    :cond_10
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    check-cast p1, Lcom/google/android/youtube/core/model/Subscription;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/s;->notifyDataSetChanged()V

    .line 80
    :cond_14
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_19

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->d:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/youtube/app/a/s;->notifyDataSetChanged()V

    .line 73
    :cond_1c
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 91
    if-nez p2, :cond_12

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04004a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 94
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/u;

    .line 95
    if-nez v1, :cond_1eb

    .line 96
    new-instance v1, Lcom/google/android/youtube/app/a/u;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/a/u;-><init>(Landroid/view/View;)V

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 101
    :goto_23
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    sget-object v1, Lcom/google/android/youtube/app/a/t;->a:[I

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1ee

    .line 127
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 130
    :goto_36
    iget-object v3, v2, Lcom/google/android/youtube/app/a/u;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 133
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/UserProfile;

    .line 134
    if-eqz v1, :cond_141

    .line 135
    iget-object v3, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->b:Landroid/widget/TextView;

    if-eqz v4, :cond_7b

    .line 137
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v6, 0x7f0a013e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_7b
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_a0

    .line 142
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v6, 0x7f0a013c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_a0
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->d:Landroid/widget/TextView;

    if-eqz v4, :cond_c5

    .line 147
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v6, 0x7f0a0140

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v1, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_c5
    iget-object v3, v2, Lcom/google/android/youtube/app/a/u;->g:Landroid/widget/ImageView;

    if-eqz v3, :cond_e0

    .line 152
    iget-object v3, p0, Lcom/google/android/youtube/app/a/s;->g:Landroid/graphics/Bitmap;

    .line 153
    iget-object v4, v1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v4, :cond_1e8

    .line 154
    iget-object v4, p0, Lcom/google/android/youtube/app/a/s;->d:Ljava/util/Map;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 155
    if-eqz v1, :cond_1e8

    .line 159
    :goto_db
    iget-object v3, v2, Lcom/google/android/youtube/app/a/u;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_e0
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->e:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 164
    if-eqz v1, :cond_1d0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1d0

    .line 165
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_11d

    .line 167
    sget-object v4, Lcom/google/android/youtube/app/a/t;->a:[I

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v0

    aget v0, v4, v0

    sparse-switch v0, :sswitch_data_1fc

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v4, 0x7f0a00d9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_112
    iget-object v4, v2, Lcom/google/android/youtube/app/a/u;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->e:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_11d
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_141

    .line 182
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_1c5

    .line 183
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->f:Landroid/widget/TextView;

    const v4, 0x7f0a0139

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_13b
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_141
    :goto_141
    return-object p2

    .line 105
    :pswitch_142
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v3, 0x7f0a0137

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_36

    .line 108
    :pswitch_155
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v3, 0x7f0a0136

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_36

    .line 112
    :pswitch_168
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const-string v3, "[4]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 113
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v3, v2, Lcom/google/android/youtube/app/a/u;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_36

    .line 116
    :cond_181
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v3, 0x7f0a0138

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_36

    .line 120
    :pswitch_194
    iget-object v1, p0, Lcom/google/android/youtube/app/a/s;->a:Landroid/content/Context;

    const v3, 0x7f0a0135

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_36

    .line 123
    :pswitch_1a7
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    goto/16 :goto_36

    .line 169
    :sswitch_1ab
    const v0, 0x7f0c0008

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_112

    .line 172
    :sswitch_1b8
    const v0, 0x7f0c0007

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_112

    .line 186
    :cond_1c5
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13b

    .line 191
    :cond_1d0
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1db

    .line 192
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :cond_1db
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_141

    .line 195
    iget-object v0, v2, Lcom/google/android/youtube/app/a/u;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_141

    :cond_1e8
    move-object v1, v3

    goto/16 :goto_db

    :cond_1eb
    move-object v2, v1

    goto/16 :goto_23

    .line 103
    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_142
        :pswitch_155
        :pswitch_168
        :pswitch_194
        :pswitch_1a7
    .end packed-switch

    .line 167
    :sswitch_data_1fc
    .sparse-switch
        0x1 -> :sswitch_1ab
        0x5 -> :sswitch_1b8
    .end sparse-switch
.end method
