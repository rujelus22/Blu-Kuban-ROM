.class public Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;
.super Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;
.source "LatinISP.java"


# instance fields
.field protected mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;-><init>()V

    .line 127
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    return-void
.end method


# virtual methods
.method protected addEmailList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 19
    .parameter "context"
    .parameter
    .parameter "obj"
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
    .line 31
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const v6, 0x7f08011d

    const v7, 0x7f02006b

    const/16 v8, 0xb

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 42
    .local v1, itelcel:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const v7, 0x7f08011e

    const v8, 0x7f02006b

    const/16 v9, 0xc

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 53
    .local v2, icomcel:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const v8, 0x7f08011c

    const v9, 0x7f02006b

    const/16 v10, 0xd

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 64
    .local v3, iclaro:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getSalesCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ZTA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    const/4 v6, 0x0

    :goto_43
    const/4 v7, 0x1

    const/4 v8, 0x1

    const v9, 0x7f08011b

    const v10, 0x7f02009b

    const/16 v11, 0xe

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 75
    .local v4, uol:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7f08003d

    const v11, 0x7f02006f

    const/16 v12, 0xa

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 86
    .local v5, eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v6, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const v11, 0x7f08007b

    const v12, 0x7f020087

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 97
    .local v6, other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v7, v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 98
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v7, v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 99
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v7, v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 100
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v7, v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 101
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/LatinISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v7, v6, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 102
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEASPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v7, v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 104
    if-eqz p2, :cond_c0

    .line 106
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getSalesCode()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, salesCode:Ljava/lang/String;
    const-string v7, "ZTA CHL PET CTI CTU CTP TCE COM PGU PER NPC NEN HME PCT CDR CJM CPA ECO UWA CRC"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/sec/android/socialhub/feature/FeatureFactory;->isOperator(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 109
    const-string v7, "TCE"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 110
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_a5
    :goto_a5
    const-string v7, "Brazil"

    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 119
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_b6
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v14           #salesCode:Ljava/lang/String;
    :cond_c0
    return-void

    .line 64
    .end local v4           #uol:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v5           #eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v6           #other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :cond_c1
    const/4 v6, 0x1

    goto :goto_43

    .line 111
    .restart local v4       #uol:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .restart local v5       #eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .restart local v6       #other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .restart local v14       #salesCode:Ljava/lang/String;
    :cond_c3
    const-string v7, "COM"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 114
    :cond_d1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5
.end method

.method protected addIMSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 4
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
    .line 24
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->addIMSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 25
    return-void
.end method
