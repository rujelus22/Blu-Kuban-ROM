.class final Lcom/google/android/youtube/app/honeycomb/tablet/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/bm;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Lcom/google/android/youtube/app/adapter/bm;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->a:Lcom/google/android/youtube/app/adapter/bm;

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
    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->a:Lcom/google/android/youtube/app/adapter/bm;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/bm;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 450
    sget-object v1, Lcom/google/android/youtube/app/honeycomb/tablet/t;->a:[I

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    .line 467
    :goto_15
    return-void

    .line 452
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    const v2, 0x7f080034

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;I)V

    goto :goto_15

    .line 455
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    const v2, 0x7f080036

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;I)V

    goto :goto_15

    .line 458
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    const v2, 0x7f080035

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;I)V

    goto :goto_15

    .line 461
    :pswitch_3d
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;Z)V

    goto :goto_15

    .line 464
    :pswitch_48
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/s;->b:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/a;->b(Ljava/lang/String;)V

    goto :goto_15

    .line 450
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_16
        :pswitch_23
        :pswitch_30
        :pswitch_3d
        :pswitch_48
    .end packed-switch
.end method
