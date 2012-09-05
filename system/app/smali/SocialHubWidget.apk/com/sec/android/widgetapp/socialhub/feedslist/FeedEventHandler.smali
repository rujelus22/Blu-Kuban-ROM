.class public abstract Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.super Ljava/lang/Object;
.source "FeedEventHandler.java"

# interfaces
.implements Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;


# static fields
.field protected static mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

.field protected static mContext:Landroid/content/Context;

.field private static mDialog:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;


# instance fields
.field mActorPhotoClickListner:Landroid/view/View$OnClickListener;

.field public mEventHandler:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

.field mFeedTextListener:Landroid/view/View$OnClickListener;

.field mPhotoClickListener:Landroid/view/View$OnClickListener;

.field mVideoClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$1;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mVideoClickListner:Landroid/view/View$OnClickListener;

    .line 116
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$2;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mFeedTextListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$3;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mActorPhotoClickListner:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$4;-><init>(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mEventHandler:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    .line 46
    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mDialog:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 50
    sput-object p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    .line 52
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mDialog:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    .line 53
    return-void
.end method


# virtual methods
.method public getActorPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mActorPhotoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getDrawable(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 78
    const/4 v0, -0x1

    .line 80
    .local v0, res:I
    packed-switch p1, :pswitch_data_a

    .line 86
    :goto_4
    return v0

    .line 83
    :pswitch_5
    const v0, 0x7f02003b

    goto :goto_4

    .line 80
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public getFeedTextListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mFeedTextListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPhotoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mPhotoClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getVideoClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mVideoClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected sendThisLinkToBrowser(Ljava/lang/String;)V
    .registers 5
    .parameter "urlLink"

    .prologue
    .line 214
    if-nez p1, :cond_3

    .line 220
    :goto_2
    return-void

    .line 217
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
