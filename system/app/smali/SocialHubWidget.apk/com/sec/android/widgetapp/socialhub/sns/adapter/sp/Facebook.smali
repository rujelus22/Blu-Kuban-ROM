.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Facebook;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "Facebook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 135
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_18

    .line 125
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 113
    :pswitch_7
    const v0, 0x7f02002c

    goto :goto_6

    .line 116
    :pswitch_b
    const v0, 0x7f020005

    goto :goto_6

    .line 119
    :pswitch_f
    const v0, 0x7f020006

    goto :goto_6

    .line 122
    :pswitch_13
    const v0, 0x7f020004

    goto :goto_6

    .line 110
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 20
    packed-switch p1, :pswitch_data_14

    move v0, v1

    .line 103
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 29
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 41
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 50
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 62
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 68
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 98
    goto :goto_6

    .line 20
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_6
        :pswitch_f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method
