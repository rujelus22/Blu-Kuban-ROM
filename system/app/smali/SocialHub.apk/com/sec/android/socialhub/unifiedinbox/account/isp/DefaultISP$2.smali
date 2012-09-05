.class Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;
.super Ljava/lang/Object;
.source "DefaultISP.java"

# interfaces
.implements Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAccount(Landroid/content/Context;I)V
    .registers 12
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 284
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_28

    .line 286
    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 288
    .local v8, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;>;"
    if-eqz v8, :cond_28

    .line 290
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    .line 292
    .local v5, activity:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;
    if-eqz v5, :cond_28

    .line 309
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    new-instance v6, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2$1;

    invoke-direct {v6, p0, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;)V

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 332
    .end local v5           #activity:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;
    .end local v8           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;>;"
    :cond_28
    return-void
.end method
