.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Mixi;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "Mixi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getActorPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 151
    const v0, 0x7f02003f

    return v0
.end method

.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 157
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    const v0, 0x7f02003f

    .line 124
    packed-switch p1, :pswitch_data_12

    .line 139
    const v0, 0x7f020013

    :goto_9
    :pswitch_9
    return v0

    .line 127
    :pswitch_a
    const v0, 0x7f020042

    goto :goto_9

    .line 133
    :pswitch_e
    const v0, 0x7f020040

    goto :goto_9

    .line 124
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method

.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupport(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    packed-switch p1, :pswitch_data_2e

    move v0, v1

    .line 117
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 40
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 52
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 55
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 61
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 64
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 67
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 70
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 76
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 79
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 82
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 88
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 94
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 97
    goto :goto_6

    :pswitch_21
    move v0, v1

    .line 100
    goto :goto_6

    :pswitch_23
    move v0, v1

    .line 103
    goto :goto_6

    :pswitch_25
    move v0, v1

    .line 106
    goto :goto_6

    :pswitch_27
    move v0, v1

    .line 109
    goto :goto_6

    :pswitch_29
    move v0, v1

    .line 112
    goto :goto_6

    :pswitch_2b
    move v0, v1

    .line 115
    goto :goto_6

    .line 34
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_6
        :pswitch_d
        :pswitch_f
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
    .end packed-switch
.end method
