.class public Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;
.super Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.source "RenRen.java"


# instance fields
.field getPhotoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;-><init>()V

    .line 33
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen$1;-><init>(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->getPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->sendThisLinkToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    return-object v0
.end method


# virtual methods
.method public getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    .registers 1

    .prologue
    .line 214
    return-object p0
.end method

.method public getImageResource(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_18

    .line 204
    const v0, 0x7f020013

    :goto_6
    return v0

    .line 192
    :pswitch_7
    const v0, 0x7f020033

    goto :goto_6

    .line 195
    :pswitch_b
    const v0, 0x7f02001b

    goto :goto_6

    .line 198
    :pswitch_f
    const v0, 0x7f02001c

    goto :goto_6

    .line 201
    :pswitch_13
    const v0, 0x7f02001a

    goto :goto_6

    .line 189
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
    .line 30
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->getPhotoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isSupport(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    packed-switch p1, :pswitch_data_24

    move v0, v1

    .line 183
    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    .line 121
    goto :goto_6

    :pswitch_9
    move v0, v1

    .line 130
    goto :goto_6

    :pswitch_b
    move v0, v1

    .line 133
    goto :goto_6

    :pswitch_d
    move v0, v1

    .line 136
    goto :goto_6

    :pswitch_f
    move v0, v1

    .line 142
    goto :goto_6

    :pswitch_11
    move v0, v1

    .line 148
    goto :goto_6

    :pswitch_13
    move v0, v1

    .line 154
    goto :goto_6

    :pswitch_15
    move v0, v1

    .line 157
    goto :goto_6

    :pswitch_17
    move v0, v1

    .line 160
    goto :goto_6

    :pswitch_19
    move v0, v1

    .line 163
    goto :goto_6

    :pswitch_1b
    move v0, v1

    .line 166
    goto :goto_6

    :pswitch_1d
    move v0, v1

    .line 169
    goto :goto_6

    :pswitch_1f
    move v0, v1

    .line 172
    goto :goto_6

    :pswitch_21
    move v0, v1

    .line 175
    goto :goto_6

    .line 100
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_6
        :pswitch_f
        :pswitch_6
        :pswitch_11
        :pswitch_6
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
