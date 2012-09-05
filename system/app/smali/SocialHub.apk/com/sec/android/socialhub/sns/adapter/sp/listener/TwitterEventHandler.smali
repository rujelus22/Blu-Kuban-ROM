.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "TwitterEventHandler.java"


# instance fields
.field mRetweetListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    .line 37
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->mRetweetListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getFeedClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeedTextClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRetweetListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/TwitterEventHandler;->mRetweetListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method
