.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Twitter;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "Twitter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 141
    return-object p0
.end method

.method public getFeedTextListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_18

    .line 131
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 119
    :pswitch_7
    const v0, 0x7f020034

    goto :goto_6

    .line 122
    :pswitch_b
    const v0, 0x7f020020

    goto :goto_6

    .line 125
    :pswitch_f
    const v0, 0x7f020021

    goto :goto_6

    .line 128
    :pswitch_13
    const v0, 0x7f02001f

    goto :goto_6

    .line 116
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method public isSupport(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    packed-switch p1, :pswitch_data_20

    .line 110
    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    move v0, v1

    .line 33
    goto :goto_5

    :pswitch_8
    move v0, v1

    .line 39
    goto :goto_5

    :pswitch_a
    move v0, v1

    .line 42
    goto :goto_5

    :pswitch_c
    move v0, v1

    .line 48
    goto :goto_5

    :pswitch_e
    move v0, v1

    .line 51
    goto :goto_5

    :pswitch_10
    move v0, v1

    .line 54
    goto :goto_5

    :pswitch_12
    move v0, v1

    .line 66
    goto :goto_5

    :pswitch_14
    move v0, v1

    .line 69
    goto :goto_5

    :pswitch_16
    move v0, v1

    .line 75
    goto :goto_5

    :pswitch_18
    move v0, v1

    .line 78
    goto :goto_5

    :pswitch_1a
    move v0, v1

    .line 84
    goto :goto_5

    :pswitch_1c
    move v0, v1

    .line 99
    goto :goto_5

    :pswitch_1e
    move v0, v1

    .line 108
    goto :goto_5

    .line 27
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_12
        :pswitch_14
        :pswitch_5
        :pswitch_16
        :pswitch_18
        :pswitch_5
        :pswitch_1a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1c
        :pswitch_5
        :pswitch_5
        :pswitch_1e
    .end packed-switch
.end method
