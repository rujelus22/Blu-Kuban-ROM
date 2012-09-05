.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "Qzone.java"


# instance fields
.field getPhotoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 32
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone$1;-><init>(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->getPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->sendThisLinkToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->sendThisLinkToBrowser(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActorPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 184
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_18

    .line 173
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 161
    :pswitch_7
    const v0, 0x7f020032

    goto :goto_6

    .line 164
    :pswitch_b
    const v0, 0x7f020018

    goto :goto_6

    .line 167
    :pswitch_f
    const v0, 0x7f020019

    goto :goto_6

    .line 170
    :pswitch_13
    const v0, 0x7f020017

    goto :goto_6

    .line 158
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
    .line 29
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->getPhotoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isSupport(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    packed-switch p1, :pswitch_data_2e

    move v0, v1

    .line 151
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 74
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 77
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 80
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 83
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 86
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 89
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 98
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 101
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 104
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 110
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 116
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 122
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 125
    goto :goto_6

    :pswitch_21
    move v0, v1

    .line 128
    goto :goto_6

    :pswitch_23
    move v0, v1

    .line 131
    goto :goto_6

    :pswitch_25
    move v0, v1

    .line 134
    goto :goto_6

    :pswitch_27
    move v0, v1

    .line 137
    goto :goto_6

    :pswitch_29
    move v0, v1

    .line 140
    goto :goto_6

    :pswitch_2b
    move v0, v1

    .line 143
    goto :goto_6

    .line 68
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_f
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_11
        :pswitch_6
        :pswitch_6
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_6
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
    .end packed-switch
.end method
