.class public final Lcom/google/android/youtube/app/adapter/c;
.super Lcom/google/android/youtube/core/a/d;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/d;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/c;->a:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/c;->b:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    if-nez p2, :cond_1b

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/c;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04000a

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/android/youtube/app/adapter/e;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/adapter/e;-><init>(Lcom/google/android/youtube/app/adapter/c;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/e;

    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/e;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/adapter/c;->d(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v1, Lcom/google/android/youtube/app/adapter/e;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/google/android/youtube/app/adapter/d;->a:[I

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_96

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    :goto_3d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :pswitch_41
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/c;->a:Landroid/content/Context;

    const v3, 0x7f0b0185

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :pswitch_51
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    goto :goto_3d

    :pswitch_54
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/c;->a:Landroid/content/Context;

    const v3, 0x7f0b0184

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :pswitch_64
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const-string v3, "[4]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_76
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/c;->a:Landroid/content/Context;

    const v3, 0x7f0b0186

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :pswitch_86
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/c;->a:Landroid/content/Context;

    const v3, 0x7f0b0183

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_41
        :pswitch_51
        :pswitch_54
        :pswitch_64
        :pswitch_86
    .end packed-switch
.end method
