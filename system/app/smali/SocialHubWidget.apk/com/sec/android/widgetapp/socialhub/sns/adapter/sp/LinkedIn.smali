.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/LinkedIn;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "LinkedIn.java"


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
    .line 136
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
    const v0, 0x7f02002e

    goto :goto_6

    .line 116
    :pswitch_b
    const v0, 0x7f02000b

    goto :goto_6

    .line 119
    :pswitch_f
    const v0, 0x7f02000c

    goto :goto_6

    .line 122
    :pswitch_13
    const v0, 0x7f02000a

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    packed-switch p1, :pswitch_data_30

    move v0, v1

    .line 104
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 27
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 30
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 33
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 36
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 39
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 42
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 45
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 51
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 54
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 57
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 63
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 69
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 72
    goto :goto_6

    :pswitch_21
    move v0, v1

    .line 75
    goto :goto_6

    :pswitch_23
    move v0, v1

    .line 78
    goto :goto_6

    :pswitch_25
    move v0, v1

    .line 81
    goto :goto_6

    :pswitch_27
    move v0, v1

    .line 84
    goto :goto_6

    :pswitch_29
    move v0, v1

    .line 87
    goto :goto_6

    :pswitch_2b
    move v0, v1

    .line 90
    goto :goto_6

    :pswitch_2d
    move v0, v1

    .line 99
    goto :goto_6

    .line 21
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_f
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_11
        :pswitch_13
        :pswitch_6
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_6
        :pswitch_1b
        :pswitch_6
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_25
        :pswitch_27
        :pswitch_29
        :pswitch_2b
        :pswitch_6
        :pswitch_6
        :pswitch_2d
        :pswitch_6
    .end packed-switch
.end method
