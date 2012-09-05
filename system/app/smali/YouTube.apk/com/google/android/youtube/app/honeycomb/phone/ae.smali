.class final Lcom/google/android/youtube/app/honeycomb/phone/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/a/a;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;Lcom/google/android/youtube/app/a/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ae;->b:Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ae;->a:Lcom/google/android/youtube/app/a/a;

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
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ae;->a:Lcom/google/android/youtube/app/a/a;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ae;->b:Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/MySubscriptionsActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v1

    .line 77
    sget-object v2, Lcom/google/android/youtube/app/honeycomb/phone/af;->a:[I

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    .line 94
    :goto_1b
    return-void

    .line 79
    :pswitch_1c
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f09002b

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_1b

    .line 82
    :pswitch_27
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f09002c

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_1b

    .line 85
    :pswitch_32
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/o;->a(Landroid/net/Uri;Z)V

    goto :goto_1b

    .line 88
    :pswitch_39
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/o;->b(Ljava/lang/String;)V

    goto :goto_1b

    .line 91
    :pswitch_3f
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f09002d

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_1b

    .line 77
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_27
        :pswitch_32
        :pswitch_39
        :pswitch_3f
    .end packed-switch
.end method
