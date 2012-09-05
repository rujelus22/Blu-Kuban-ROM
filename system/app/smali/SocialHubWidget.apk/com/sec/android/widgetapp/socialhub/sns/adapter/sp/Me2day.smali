.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Me2day;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "Me2day.java"


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
    const v0, 0x7f02003c

    return v0
.end method

.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 156
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 124
    packed-switch p1, :pswitch_data_18

    .line 139
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 127
    :pswitch_7
    const v0, 0x7f02002f

    goto :goto_6

    .line 130
    :pswitch_b
    const v0, 0x7f02000e

    goto :goto_6

    .line 133
    :pswitch_f
    const v0, 0x7f02000f

    goto :goto_6

    .line 136
    :pswitch_13
    const v0, 0x7f02000d

    goto :goto_6

    .line 124
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
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
    packed-switch p1, :pswitch_data_26

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

    .line 43
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 52
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 55
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

    .line 88
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 94
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 97
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 100
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 103
    goto :goto_6

    :pswitch_21
    move v0, v1

    .line 109
    goto :goto_6

    :pswitch_23
    move v0, v1

    .line 112
    goto :goto_6

    .line 34
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_6
        :pswitch_6
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_6
        :pswitch_15
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_17
        :pswitch_6
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_6
        :pswitch_21
        :pswitch_23
        :pswitch_6
    .end packed-switch
.end method
