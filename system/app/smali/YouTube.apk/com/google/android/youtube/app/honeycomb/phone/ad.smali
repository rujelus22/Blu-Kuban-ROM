.class final Lcom/google/android/youtube/app/honeycomb/phone/ad;
.super Lcom/google/android/youtube/app/adapter/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    .line 539
    iget-object v0, p1, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    const v1, 0x7f080023

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/youtube/app/adapter/i;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 540
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->b:Landroid/view/View;

    .line 541
    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->c:Landroid/widget/TextView;

    .line 542
    const v0, 0x7f080065

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 543
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 544
    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 534
    check-cast p2, Lcom/google/android/youtube/core/model/Subscription;

    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/i;->a(ILjava/lang/Object;)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->c:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->l(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->b:Landroid/view/View;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;)Landroid/view/View;

    :cond_33
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->b:Landroid/view/View;

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    check-cast p1, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ad;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->u(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/app/honeycomb/phone/ae;

    invoke-direct {v2, p0, p3}, Lcom/google/android/youtube/app/honeycomb/phone/ae;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/ad;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method
