.class public Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;
.super Ljava/lang/Object;
.source "DefaultISP.java"

# interfaces
.implements Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;


# instance fields
.field protected mEASPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

.field protected mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

.field public mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 280
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$2;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEASPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 335
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP$3;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    return-void
.end method


# virtual methods
.method protected addEmailList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 18
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
    .line 166
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const/4 v13, 0x0

    .line 168
    .local v13, isPremium:Z
    move-object/from16 v0, p3

    instance-of v6, v0, Ljava/lang/Boolean;

    if-eqz v6, :cond_d

    .line 170
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 173
    :cond_d
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const v6, 0x7f08002c

    const v7, 0x7f020077

    const/4 v8, 0x2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 184
    .local v1, msn:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Lcom/sec/android/socialhub/util/SocialHubUtil;->isGermanModel()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a3

    const v7, 0x7f0800c1

    :goto_2d
    const v8, 0x7f020074

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 195
    .local v2, gmail:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const v8, 0x7f08002b

    const v9, 0x7f02009e

    const/4 v10, 0x3

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 206
    .local v3, yahoo:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const v9, 0x7f08003d

    const v10, 0x7f02006f

    const/16 v11, 0xa

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 217
    .local v4, eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-eqz v13, :cond_a7

    const v10, 0x7f08007b

    :goto_60
    const v11, 0x7f020087

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 228
    .local v5, other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v6, v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 229
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v6, v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 230
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v6, v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 231
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v6, v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 232
    iget-object v6, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEASPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v6, v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 234
    if-eqz p2, :cond_a2

    .line 236
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v6, 0x1

    if-ne v13, v6, :cond_ab

    .line 239
    const-string v6, "DefaultISP"

    const-string v7, "addEmailList()"

    const-string v8, "it\'s premium email!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_9d
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_a2
    return-void

    .line 184
    .end local v2           #gmail:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v3           #yahoo:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v4           #eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v5           #other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :cond_a3
    const v7, 0x7f08002a

    goto :goto_2d

    .line 217
    .restart local v2       #gmail:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .restart local v3       #yahoo:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .restart local v4       #eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :cond_a7
    const v10, 0x7f08008b

    goto :goto_60

    .line 246
    .restart local v5       #other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :cond_ab
    const-string v6, "DefaultISP"

    const-string v7, "addEmailList()"

    const-string v8, "it\'s basic email!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d
.end method

.method protected addIMSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 16
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
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 114
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const v5, 0x7f08002f

    const v6, 0x7f020081

    const/4 v7, 0x2

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 125
    .local v0, msn:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const v8, 0x7f08002d

    const v9, 0x7f020075

    move v4, v1

    move v5, v1

    move v6, v2

    move v7, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 136
    .local v3, gtalk:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const v9, 0x7f08002e

    const v10, 0x7f02009c

    const/4 v11, 0x3

    move v5, v1

    move v6, v1

    move v7, v2

    move v8, v2

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 148
    .local v4, yahoo:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 149
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v1, v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 150
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v1, v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 152
    if-eqz p2, :cond_47

    .line 154
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_47
    return-void
.end method

.method protected addSnsSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 12
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
    .line 77
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const/4 v4, 0x0

    .line 79
    .local v4, mAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;>;"
    instance-of v7, p3, Ljava/util/HashMap;

    if-eqz v7, :cond_8

    move-object v4, p3

    .line 81
    check-cast v4, Ljava/util/HashMap;

    .line 83
    :cond_8
    const/4 v3, 0x1

    .line 85
    .local v3, is_first:Z
    invoke-static {}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getRegisteredSPList()Ljava/util/Set;

    move-result-object v5

    .line 87
    .local v5, spList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 89
    .local v6, spType:Ljava/lang/Integer;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 91
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 93
    .local v0, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v0, :cond_11

    .line 95
    invoke-interface {v0, p1, v3}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getAddAccountPage(Landroid/content/Context;Z)Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    move-result-object v1

    .line 97
    .local v1, add_spType:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    if-eqz v1, :cond_11

    .line 99
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v3, 0x0

    goto :goto_11

    .line 105
    .end local v0           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v1           #add_spType:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .end local v6           #spType:Ljava/lang/Integer;
    :cond_3c
    return-void
.end method

.method public addSpList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 6
    .parameter "context"
    .parameter "type"
    .parameter
    .parameter "ext1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const-string v0, "2_Email"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "3_SevenEmail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57
    :cond_10
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->addEmailList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 67
    :cond_13
    :goto_13
    return-void

    .line 59
    :cond_14
    const-string v0, "4_SevenIM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->addIMSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_13

    .line 63
    :cond_20
    const-string v0, "5_SNS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->addSnsSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_13
.end method
