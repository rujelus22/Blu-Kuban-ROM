.class final Lcom/google/android/youtube/app/honeycomb/phone/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->i(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    if-eqz v0, :cond_15

    .line 233
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    .line 257
    :cond_14
    :goto_14
    return-void

    .line 236
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->j(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_25

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "REMOTE"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 238
    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->k(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_35

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "ACCOUNT"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 240
    :cond_35
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->l(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_45

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "THE_FEED"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 242
    :cond_45
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->m(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_55

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "CHANNEL_STORE"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 244
    :cond_55
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->n(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_65

    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "RECOMMENDED_GUIDE_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 246
    :cond_65
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->o(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_75

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "TRENDING_GUIDE_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 248
    :cond_75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->p(Lcom/google/android/youtube/app/honeycomb/phone/t;)I

    move-result v0

    if-ne p3, v0, :cond_85

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const-string v1, "LIVE_GUIDE_ITEM"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto :goto_14

    .line 250
    :cond_85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->b(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_14

    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->b(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/ba;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 253
    if-eqz v0, :cond_14

    .line 254
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    goto/16 :goto_14
.end method
