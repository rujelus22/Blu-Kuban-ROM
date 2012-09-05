.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/LinkedInEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "LinkedInEventHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getReplyClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mFeedClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method
