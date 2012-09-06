.class public final Lcom/google/android/youtube/app/adapter/bm;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->e:Landroid/graphics/Bitmap;

    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->b:Landroid/view/LayoutInflater;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->d:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 59
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/bm;->notifyDataSetChanged()V

    .line 76
    :cond_10
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/youtube/core/model/Subscription;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Subscription;->username:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserProfile;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_19

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bm;->d:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/bm;->notifyDataSetChanged()V

    .line 69
    :cond_1c
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/bm;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 80
    if-nez p2, :cond_15

    .line 81
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/bm;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f040085

    invoke-virtual {v1, v2, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    :cond_15
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/bo;

    .line 84
    if-nez v1, :cond_d9

    .line 85
    new-instance v1, Lcom/google/android/youtube/app/adapter/bo;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/app/adapter/bo;-><init>(Landroid/view/View;)V

    .line 86
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :cond_25
    :goto_25
    invoke-virtual {p2, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    sget-object v2, Lcom/google/android/youtube/app/adapter/bn;->a:[I

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_174

    .line 118
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 121
    :goto_37
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 124
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->username:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile;

    .line 125
    if-eqz v0, :cond_d8

    .line 126
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_79

    .line 128
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v5, 0x7f0b018c

    new-array v6, v11, [Ljava/lang/Object;

    iget-wide v7, v0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_79
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_9b

    .line 133
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v5, 0x7f0b018a

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, v0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_9b
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_bd

    .line 138
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v5, 0x7f0b018e

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, v0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_bd
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_d8

    .line 143
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->e:Landroid/graphics/Bitmap;

    .line 144
    iget-object v3, v0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_171

    .line 145
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/bm;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 146
    if-eqz v0, :cond_171

    .line 150
    :goto_d3
    iget-object v1, v1, Lcom/google/android/youtube/app/adapter/bo;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    :cond_d8
    return-object p2

    .line 88
    :cond_d9
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_e2

    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e2
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_ee

    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->b:Landroid/widget/TextView;

    const v3, 0x7f0b018b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_ee
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_fa

    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->c:Landroid/widget/TextView;

    const v3, 0x7f0b0189

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_fa
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_106

    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->d:Landroid/widget/TextView;

    const v3, 0x7f0b018d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_106
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/bo;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_25

    .line 96
    :pswitch_111
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v3, 0x7f0b0185

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    .line 99
    :pswitch_122
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v3, 0x7f0b0184

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    .line 103
    :pswitch_133
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const-string v3, "[4]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 104
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v3, v1, Lcom/google/android/youtube/app/adapter/bo;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_37

    .line 107
    :cond_14b
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v3, 0x7f0b0186

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    .line 111
    :pswitch_15c
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/bm;->a:Landroid/content/Context;

    const v3, 0x7f0b0183

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    .line 114
    :pswitch_16d
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    goto/16 :goto_37

    :cond_171
    move-object v0, v2

    goto/16 :goto_d3

    .line 94
    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_111
        :pswitch_122
        :pswitch_133
        :pswitch_15c
        :pswitch_16d
    .end packed-switch
.end method
