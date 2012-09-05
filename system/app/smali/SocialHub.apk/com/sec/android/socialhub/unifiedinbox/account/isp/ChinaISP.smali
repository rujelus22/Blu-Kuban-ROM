.class public Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;
.super Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;
.source "ChinaISP.java"


# instance fields
.field private mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;-><init>()V

    .line 154
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    return-void
.end method


# virtual methods
.method protected addEmailList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 20
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
    .line 44
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const v6, 0x7f080040

    const v7, 0x7f020067

    const/4 v8, 0x4

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 55
    .local v1, com163:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const v7, 0x7f080041

    const v8, 0x7f020066

    const/4 v9, 0x5

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 66
    .local v2, com126:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const v8, 0x7f080042

    const v9, 0x7f020096

    const/4 v10, 0x6

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 77
    .local v3, sohu:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const v9, 0x7f080043

    const v10, 0x7f020095

    const/4 v11, 0x7

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 88
    .local v4, sina:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7f080044

    const v11, 0x7f02008b

    const/16 v12, 0x8

    invoke-direct/range {v5 .. v12}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 99
    .local v5, qq:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v6, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const v11, 0x7f080045

    const v12, 0x7f020068

    const/16 v13, 0x9

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 110
    .local v6, com263:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v7, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const v12, 0x7f08003d

    const v13, 0x7f02006f

    const/16 v14, 0xa

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 121
    .local v7, eas:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    new-instance v8, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const v13, 0x7f08007b

    const v14, 0x7f020087

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 132
    .local v8, other:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 133
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 134
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v3, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 135
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v4, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 136
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v5, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 137
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v6, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 138
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/ChinaISP;->mEmailPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v8, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 139
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mEASPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v9, v7, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 141
    if-eqz p2, :cond_dd

    .line 143
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_dd
    return-void
.end method

.method protected addIMSpList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 12
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
    const/4 v2, 0x1

    .line 21
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v1, 0x0

    const v5, 0x7f08002f

    const v6, 0x7f020081

    const/4 v7, 0x2

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 32
    .local v0, msn:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/isp/DefaultISP;->mIMPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 34
    if-eqz p2, :cond_19

    .line 36
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_19
    return-void
.end method
