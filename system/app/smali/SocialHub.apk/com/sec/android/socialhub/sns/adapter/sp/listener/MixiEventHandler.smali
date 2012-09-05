.class public Lcom/sec/android/socialhub/sns/adapter/sp/listener/MixiEventHandler;
.super Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.source "MixiEventHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mMessageClickListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method
