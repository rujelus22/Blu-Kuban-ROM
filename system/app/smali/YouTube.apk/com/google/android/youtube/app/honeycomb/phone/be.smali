.class final Lcom/google/android/youtube/app/honeycomb/phone/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/c;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;Lcom/google/android/youtube/app/adapter/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/be;->b:Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/be;->a:Lcom/google/android/youtube/app/adapter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/be;->a:Lcom/google/android/youtube/app/adapter/c;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 74
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/be;->b:Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/google/android/youtube/app/honeycomb/phone/bf;->a:[I

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    .line 92
    :goto_1b
    return-void

    .line 77
    :pswitch_1c
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v2, 0x7f080034

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;I)V

    goto :goto_1b

    .line 80
    :pswitch_25
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v2, 0x7f080035

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;I)V

    goto :goto_1b

    .line 83
    :pswitch_2e
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;Z)V

    goto :goto_1b

    .line 86
    :pswitch_35
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/a;->b(Ljava/lang/String;)V

    goto :goto_1b

    .line 89
    :pswitch_3b
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v2, 0x7f080036

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;I)V

    goto :goto_1b

    .line 75
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_25
        :pswitch_2e
        :pswitch_35
        :pswitch_3b
    .end packed-switch
.end method
