.class final Lcom/google/android/youtube/app/honeycomb/tablet/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/a/s;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/tablet/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/n;Lcom/google/android/youtube/app/a/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->b:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->a:Lcom/google/android/youtube/app/a/s;

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
    .line 469
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->a:Lcom/google/android/youtube/app/a/s;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/a/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 470
    sget-object v1, Lcom/google/android/youtube/app/honeycomb/tablet/u;->a:[I

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 487
    :goto_15
    return-void

    .line 472
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->b:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f09002b

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_15

    .line 475
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->b:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f09002c

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_15

    .line 478
    :pswitch_34
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->b:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/o;->a(Landroid/net/Uri;Z)V

    goto :goto_15

    .line 481
    :pswitch_3f
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->b:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/o;->b(Ljava/lang/String;)V

    goto :goto_15

    .line 484
    :pswitch_49
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/t;->b:Lcom/google/android/youtube/app/honeycomb/tablet/n;

    iget-object v1, v1, Lcom/google/android/youtube/app/honeycomb/tablet/n;->d:Lcom/google/android/youtube/app/o;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    const v3, 0x7f09002d

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->editUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_15

    .line 470
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_16
        :pswitch_25
        :pswitch_34
        :pswitch_3f
        :pswitch_49
    .end packed-switch
.end method
