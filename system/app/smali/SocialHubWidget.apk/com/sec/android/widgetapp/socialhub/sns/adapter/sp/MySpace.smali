.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/MySpace;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "MySpace.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 133
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_18

    .line 123
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 111
    :pswitch_7
    const v0, 0x7f020030

    goto :goto_6

    .line 114
    :pswitch_b
    const v0, 0x7f020011

    goto :goto_6

    .line 117
    :pswitch_f
    const v0, 0x7f020012

    goto :goto_6

    .line 120
    :pswitch_13
    const v0, 0x7f020010

    goto :goto_6

    .line 108
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    packed-switch p1, :pswitch_data_22

    move v0, v1

    .line 102
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 37
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 40
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 49
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 52
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 55
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 61
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 67
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 73
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 82
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 85
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 88
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 91
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 97
    goto :goto_6

    .line 19
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_11
        :pswitch_6
        :pswitch_13
        :pswitch_6
        :pswitch_15
        :pswitch_6
        :pswitch_6
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_6
        :pswitch_1f
        :pswitch_6
    .end packed-switch
.end method
