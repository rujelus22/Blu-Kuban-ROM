.class public final Lcom/google/android/youtube/app/a/a;
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
    iput-object p1, p0, Lcom/google/android/youtube/app/a/a;->a:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/a/a;->b:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 34
    if-nez p2, :cond_3c

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/a/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f040006

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v0, Lcom/google/android/youtube/app/a/c;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/a/c;-><init>(Lcom/google/android/youtube/app/a/a;Landroid/view/View;)V

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 41
    :goto_16
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 44
    sget-object v2, Lcom/google/android/youtube/app/a/b;->a:[I

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9a

    .line 67
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 71
    :goto_2b
    iget-object v3, v1, Lcom/google/android/youtube/app/a/c;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/a/a;->d(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v0, v1, Lcom/google/android/youtube/app/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-object p2

    .line 39
    :cond_3c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/c;

    move-object v1, v0

    goto :goto_16

    .line 46
    :pswitch_44
    iget-object v2, p0, Lcom/google/android/youtube/app/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0a0137

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 49
    :pswitch_54
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    goto :goto_2b

    .line 52
    :pswitch_57
    iget-object v2, p0, Lcom/google/android/youtube/app/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0a0136

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 56
    :pswitch_67
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const-string v3, "[4]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 57
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 59
    :cond_79
    iget-object v2, p0, Lcom/google/android/youtube/app/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0a0138

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 63
    :pswitch_89
    iget-object v2, p0, Lcom/google/android/youtube/app/a/a;->a:Landroid/content/Context;

    const v3, 0x7f0a0135

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    .line 44
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_54
        :pswitch_57
        :pswitch_67
        :pswitch_89
    .end packed-switch
.end method
