.class public Lcom/sec/android/socialhub/unifiedinbox/account/isp/JapanISP;
.super Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;
.source "JapanISP.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;-><init>()V

    return-void
.end method


# virtual methods
.method protected addIMSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 15
    .parameter "context"
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 27
    .local v10, locale:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f08002f

    const v6, 0x7f020081

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 38
    .local v0, msn:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const v6, 0x7f08002d

    const v7, 0x7f020075

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 49
    .local v1, gtalk:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const v7, 0x7f08002e

    const v8, 0x7f02009c

    const/4 v9, 0x3

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 61
    .local v2, yahoo:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v3, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 62
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v3, v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 63
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v3, v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 65
    if-eqz p2, :cond_4a

    .line 67
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_4a
    return-void
.end method
