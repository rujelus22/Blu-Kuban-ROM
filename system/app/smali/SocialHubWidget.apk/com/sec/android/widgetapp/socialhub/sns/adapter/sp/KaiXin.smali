.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "KaiXin.java"


# instance fields
.field getPhotoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 36
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin$1;-><init>(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->getPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->sendThisLinkToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    return-object v0
.end method


# virtual methods
.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 200
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 170
    packed-switch p1, :pswitch_data_18

    .line 185
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 173
    :pswitch_7
    const v0, 0x7f02002d

    goto :goto_6

    .line 176
    :pswitch_b
    const v0, 0x7f020008

    goto :goto_6

    .line 179
    :pswitch_f
    const v0, 0x7f020009

    goto :goto_6

    .line 182
    :pswitch_13
    const v0, 0x7f020007

    goto :goto_6

    .line 170
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
    .line 33
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->getPhotoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isSupport(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    packed-switch p1, :pswitch_data_26

    move v0, v1

    .line 164
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 90
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 102
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 111
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 114
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 117
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 123
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 129
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 135
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 138
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 141
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 144
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 147
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 150
    goto :goto_6

    :pswitch_21
    move v0, v1

    .line 153
    goto :goto_6

    :pswitch_23
    move v0, v1

    .line 156
    goto :goto_6

    .line 81
    nop

    :pswitch_data_26
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
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_11
        :pswitch_6
        :pswitch_13
        :pswitch_6
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
