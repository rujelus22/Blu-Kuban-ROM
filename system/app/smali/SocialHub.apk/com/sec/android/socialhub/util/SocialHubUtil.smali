.class public Lcom/sec/android/socialhub/util/SocialHubUtil;
.super Ljava/lang/Object;
.source "SocialHubUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "SocialHubUtil"

    sput-object v0, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static AccountVaildCheck(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Landroid/content/Context;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 930
    .line 931
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v2

    .line 933
    if-nez p0, :cond_28

    move v0, v1

    .line 968
    :cond_d
    :goto_d
    sget-object v1, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v2, "AccountVaildCheck()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return v0

    .line 939
    :cond_28
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 941
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "0_All"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "1_Messaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 944
    :cond_40
    sget-object v0, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v2, "AccountVaildCheck()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account type : All or Messaging"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_d

    .line 946
    :cond_64
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "2_Email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 948
    const-string v3, "2_Email"

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v2

    if-nez v2, :cond_a4

    .line 949
    :goto_80
    sget-object v1, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v2, "AccountVaildCheck()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account type : Email"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_a4
    move v0, v1

    .line 948
    goto :goto_80

    .line 951
    :cond_a6
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "3_SevenEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 953
    const-string v3, "3_SevenEmail"

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v2

    if-nez v2, :cond_e6

    .line 954
    :goto_c2
    sget-object v1, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v2, "AccountVaildCheck()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account type : SevenEmail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_e6
    move v0, v1

    .line 953
    goto :goto_c2

    .line 956
    :cond_e8
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "4_SevenIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 958
    const-string v3, "4_SevenIM"

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v2

    if-nez v2, :cond_128

    .line 959
    :goto_104
    sget-object v1, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v2, "AccountVaildCheck()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account type : IM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_128
    move v0, v1

    .line 958
    goto :goto_104

    .line 961
    :cond_12a
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "5_SNS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 963
    const-string v3, "5_SNS"

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v2

    if-nez v2, :cond_16a

    .line 964
    :goto_146
    sget-object v1, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v2, "AccountVaildCheck()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account type : SNS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_16a
    move v0, v1

    .line 963
    goto :goto_146
.end method

.method public static LanguageSize(Ljava/lang/String;)I
    .registers 4
    .parameter "locale"

    .prologue
    .line 840
    sget-object v0, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System locale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 842
    const/4 v0, 0x1

    .line 914
    :goto_21
    return v0

    .line 843
    :cond_22
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 844
    const/4 v0, 0x2

    goto :goto_21

    .line 845
    :cond_2c
    const-string v0, "bg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 846
    const/4 v0, 0x3

    goto :goto_21

    .line 847
    :cond_36
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 848
    const/4 v0, 0x4

    goto :goto_21

    .line 849
    :cond_40
    const-string v0, "ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 850
    const/4 v0, 0x5

    goto :goto_21

    .line 851
    :cond_4a
    const-string v0, "el"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 852
    const/4 v0, 0x6

    goto :goto_21

    .line 853
    :cond_54
    const-string v0, "uk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 854
    const/4 v0, 0x7

    goto :goto_21

    .line 855
    :cond_5e
    const-string v0, "lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 856
    const/16 v0, 0x8

    goto :goto_21

    .line 857
    :cond_69
    const-string v0, "hu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 858
    const/16 v0, 0x9

    goto :goto_21

    .line 859
    :cond_74
    const-string v0, "cs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 860
    const/16 v0, 0xa

    goto :goto_21

    .line 861
    :cond_7f
    const-string v0, "es"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 862
    const/16 v0, 0xb

    goto :goto_21

    .line 863
    :cond_8a
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 864
    const/16 v0, 0xc

    goto :goto_21

    .line 865
    :cond_95
    const-string v0, "it"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 866
    const/16 v0, 0xd

    goto :goto_21

    .line 867
    :cond_a0
    const-string v0, "sk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 868
    const/16 v0, 0xe

    goto/16 :goto_21

    .line 869
    :cond_ac
    const-string v0, "et"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 870
    const/16 v0, 0xf

    goto/16 :goto_21

    .line 871
    :cond_b8
    const-string v0, "tr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 872
    const/16 v0, 0x10

    goto/16 :goto_21

    .line 873
    :cond_c4
    const-string v0, "sr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 874
    const/16 v0, 0x11

    goto/16 :goto_21

    .line 875
    :cond_d0
    const-string v0, "nl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 876
    const/16 v0, 0x12

    goto/16 :goto_21

    .line 877
    :cond_dc
    const-string v0, "hr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 878
    const/16 v0, 0x13

    goto/16 :goto_21

    .line 879
    :cond_e8
    const-string v0, "fi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 880
    const/16 v0, 0x14

    goto/16 :goto_21

    .line 881
    :cond_f4
    const-string v0, "da"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 882
    const/16 v0, 0x15

    goto/16 :goto_21

    .line 883
    :cond_100
    const-string v0, "is"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 884
    const/16 v0, 0x16

    goto/16 :goto_21

    .line 885
    :cond_10c
    const-string v0, "ga"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 886
    const/16 v0, 0x17

    goto/16 :goto_21

    .line 887
    :cond_118
    const-string v0, "kk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 888
    const/16 v0, 0x18

    goto/16 :goto_21

    .line 889
    :cond_124
    const-string v0, "lv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 890
    const/16 v0, 0x19

    goto/16 :goto_21

    .line 891
    :cond_130
    const-string v0, "mk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 892
    const/16 v0, 0x1a

    goto/16 :goto_21

    .line 893
    :cond_13c
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    .line 894
    const/16 v0, 0x1b

    goto/16 :goto_21

    .line 895
    :cond_148
    const-string v0, "pl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 896
    const/16 v0, 0x1c

    goto/16 :goto_21

    .line 897
    :cond_154
    const-string v0, "sl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 898
    const/16 v0, 0x1d

    goto/16 :goto_21

    .line 899
    :cond_160
    const-string v0, "sv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 900
    const/16 v0, 0x1e

    goto/16 :goto_21

    .line 901
    :cond_16c
    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 902
    const/16 v0, 0x1f

    goto/16 :goto_21

    .line 903
    :cond_178
    const-string v0, "vi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 904
    const/16 v0, 0x20

    goto/16 :goto_21

    .line 905
    :cond_184
    const-string v0, "th"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 906
    const/16 v0, 0x21

    goto/16 :goto_21

    .line 907
    :cond_190
    const-string v0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 908
    const/16 v0, 0x22

    goto/16 :goto_21

    .line 909
    :cond_19c
    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 910
    const/16 v0, 0x23

    goto/16 :goto_21

    .line 911
    :cond_1a8
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 912
    const/16 v0, 0x24

    goto/16 :goto_21

    .line 914
    :cond_1b4
    const/4 v0, 0x0

    goto/16 :goto_21
.end method

.method public static checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;Z)Ljava/util/HashMap;
    .registers 12
    .parameter "context"
    .parameter "service"
    .parameter "toast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v4, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 575
    .local v0, account_count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_7
    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_6e

    .line 577
    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {p0, v5}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->hasSnsAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 579
    add-int/lit8 v0, v0, 0x1

    .line 581
    invoke-virtual {p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v5

    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->isLoggedin(I)I

    move-result v3

    .line 582
    .local v3, login:I
    if-eqz v3, :cond_58

    .line 584
    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v5, v5, v2

    invoke-static {p0, v5}, Lcom/sec/android/socialhub/util/SocialHubUtil;->sendRetryLoginBroadCast(Landroid/content/Context;I)Z

    .line 592
    :goto_2d
    sget-object v5, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v6, "checkSession()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", login_status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v3           #login:I
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 588
    .restart local v3       #login:I
    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "owner"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 596
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #login:I
    :cond_6e
    if-nez v0, :cond_71

    .line 598
    const/4 v4, 0x0

    .line 601
    :cond_71
    return-object v4
.end method

.method public static checkSession(Landroid/content/Context;Lcom/sec/android/app/sns/ISnsService;IZ)Z
    .registers 11
    .parameter "context"
    .parameter "service"
    .parameter "sp"
    .parameter "toast"

    .prologue
    .line 615
    const/4 v0, 0x1

    .line 617
    .local v0, bCanLoad:Z
    const/4 v2, 0x0

    .line 621
    .local v2, login:I
    :try_start_2
    invoke-interface {p1, p2}, Lcom/sec/android/app/sns/ISnsService;->isLoggedIn(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_42

    move-result v2

    .line 628
    :goto_6
    if-eqz v2, :cond_1d

    .line 630
    const/4 v0, 0x0

    .line 632
    invoke-static {p0, p2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->sendRetryLoginBroadCast(Landroid/content/Context;I)Z

    .line 634
    if-eqz p3, :cond_1d

    .line 635
    const v3, 0x7f0800a4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 637
    :cond_1d
    sget-object v3, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v4, "checkSession()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", login_status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return v0

    .line 623
    :catch_42
    move-exception v1

    .line 625
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public static checkSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;IZ)Z
    .registers 10
    .parameter "context"
    .parameter "service"
    .parameter "sp"
    .parameter "toast"

    .prologue
    .line 652
    const/4 v0, 0x1

    .line 654
    .local v0, bCanLoad:Z
    invoke-virtual {p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->isLoggedin(I)I

    move-result v1

    .line 656
    .local v1, login:I
    if-eqz v1, :cond_20

    .line 658
    const/4 v0, 0x0

    .line 660
    invoke-static {p0, p2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->sendRetryLoginBroadCast(Landroid/content/Context;I)Z

    .line 662
    if-eqz p3, :cond_20

    .line 663
    const v2, 0x7f0800a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 665
    :cond_20
    sget-object v2, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v3, "checkSession()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", login_status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return v0
.end method

.method public static copyClipboard(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6
    .parameter "context"
    .parameter "str"
    .parameter "bToastShow"

    .prologue
    .line 372
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 373
    .local v0, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 375
    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    .line 376
    const v1, 0x7f080060

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 377
    :cond_19
    return-void
.end method

.method public static dismissClipboardPopup(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 86
    const-string v1, "clipboardEx"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 87
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 88
    return-void
.end method

.method public static editIMAccount(Landroid/content/Context;I)V
    .registers 8
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 444
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.im.action.SOCIALHUB_APP_IM_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "intentType"

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v2, "id_array"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v2, "action"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 454
    .end local v1           #intent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 450
    :catch_27
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public static getImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .parameter "ctx"
    .parameter "contentUri"

    .prologue
    const/4 v10, 0x0

    .line 210
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 212
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 213
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 217
    .local v9, ret:Ljava/lang/String;
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    if-nez v7, :cond_3e

    .line 221
    sget-object v0, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v1, "getImagePathFromUri()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor is null. uri - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_52

    .line 236
    if-eqz v7, :cond_3c

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    move-object v0, v10

    .line 242
    :goto_3d
    return-object v0

    .line 225
    :cond_3e
    :try_start_3e
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 228
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_52

    move-result-object v9

    .line 236
    if-eqz v7, :cond_50

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6           #column_index:I
    :cond_50
    :goto_50
    move-object v0, v9

    .line 242
    goto :goto_3d

    .line 230
    :catch_52
    move-exception v8

    .line 232
    .local v8, e:Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5c

    .line 236
    if-eqz v7, :cond_50

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_50

    .line 236
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_5c
    move-exception v0

    if-eqz v7, :cond_62

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_62
    throw v0
.end method

.method public static getMentionedArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v6, redundent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 716
    .local v5, length:I
    const/4 v1, 0x1

    .line 718
    .local v1, bIsFirst:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_b
    if-ge v3, v5, :cond_8b

    .line 720
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_23

    .line 722
    if-nez v1, :cond_26

    .line 724
    if-lez v3, :cond_26

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_26

    .line 718
    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 729
    :cond_26
    const/4 v1, 0x0

    .line 732
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 733
    .local v2, id:Ljava/lang/StringBuffer;
    add-int/lit8 v3, v3, 0x1

    .line 735
    const/4 v4, 0x0

    .local v4, inner:I
    :goto_31
    const/16 v7, 0xf

    if-ge v4, v7, :cond_39

    .line 737
    add-int v7, v3, v4

    if-lt v7, v5, :cond_5e

    .line 753
    :cond_39
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    .line 756
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "@"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 757
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 759
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 740
    :cond_5e
    add-int v7, v3, v4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 742
    .local v0, _char:C
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6c

    const/16 v7, 0x5a

    if-le v0, v7, :cond_80

    :cond_6c
    const/16 v7, 0x61

    if-lt v0, v7, :cond_74

    const/16 v7, 0x7a

    if-le v0, v7, :cond_80

    :cond_74
    const/16 v7, 0x30

    if-lt v0, v7, :cond_7c

    const/16 v7, 0x39

    if-le v0, v7, :cond_80

    :cond_7c
    const/16 v7, 0x5f

    if-ne v0, v7, :cond_89

    :cond_80
    const/4 v7, 0x1

    :goto_81
    if-eqz v7, :cond_39

    .line 749
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 735
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 742
    :cond_89
    const/4 v7, 0x0

    goto :goto_81

    .line 765
    .end local v0           #_char:C
    .end local v2           #id:Ljava/lang/StringBuffer;
    .end local v4           #inner:I
    :cond_8b
    return-object v6
.end method

.method public static getMentionedID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .registers 10
    .parameter "str"
    .parameter "owner"
    .parameter "actor"

    .prologue
    .line 693
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 695
    .local v2, mention:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getMentionedArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 697
    .local v3, redundent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 699
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 701
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 705
    .end local v1           #id:Ljava/lang/String;
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#F4DC2FE"

    invoke-static {v5, v6}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getStringWithColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 707
    .local v4, ret:Landroid/text/Spanned;
    return-object v4
.end method

.method public static getStringWithColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .registers 5
    .parameter "str"
    .parameter "color"

    .prologue
    .line 494
    const-string v0, "<font color=%s>%s</font>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static getValidSession(Landroid/content/Context;Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;)Ljava/util/ArrayList;
    .registers 10
    .parameter "context"
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_6
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_62

    .line 546
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {p0, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->hasSnsAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 548
    invoke-virtual {p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->isLoggedin(I)I

    move-result v1

    .line 549
    .local v1, login:I
    if-eqz v1, :cond_37

    .line 551
    new-instance v3, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v4, v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;-><init>(IZ)V

    .line 552
    .local v3, sp:Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v4, v4, v0

    invoke-static {p0, v4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->sendRetryLoginBroadCast(Landroid/content/Context;I)Z

    .line 555
    .end local v3           #sp:Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;
    :cond_37
    sget-object v4, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v5, "checkSession()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", login_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v1           #login:I
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 559
    :cond_62
    return-object v2
.end method

.method public static getVideoPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .parameter "ctx"
    .parameter "contentUri"

    .prologue
    .line 282
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 283
    .local v2, proj:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 284
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 288
    .local v9, ret:Ljava/lang/String;
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2e

    .line 292
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 293
    .local v8, index:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_34

    move-result-object v9

    .line 302
    .end local v8           #index:I
    :cond_2e
    if-eqz v6, :cond_33

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_33
    :goto_33
    return-object v9

    .line 296
    :catch_34
    move-exception v7

    .line 298
    .local v7, e:Ljava/lang/Exception;
    :try_start_35
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3e

    .line 302
    if-eqz v6, :cond_33

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 302
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
.end method

.method public static isEASAccounts(Landroid/content/Context;I)Z
    .registers 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v3

    const-string v4, "2_Email"

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 389
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-eqz v0, :cond_23

    .line 391
    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v1

    .line 392
    .local v1, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    if-eqz v1, :cond_19

    .line 394
    iget v3, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_eas:I

    if-lez v3, :cond_18

    .line 395
    const/4 v2, 0x1

    .line 409
    .end local v1           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_18
    :goto_18
    return v2

    .line 401
    .restart local v1       #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_19
    sget-object v3, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v4, "isEASAccounts()"

    const-string v5, "dto is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 406
    .end local v1           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_23
    sget-object v3, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v4, "isEASAccounts()"

    const-string v5, "account is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static isGermanModel()Z
    .registers 2

    .prologue
    .line 463
    const-string v0, "DBT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "DTO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "DTR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "EPL"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "EPR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "VD2"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "VDR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "VIA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "VID"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "VIT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "XEG"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "XEG"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 477
    :cond_b6
    const/4 v0, 0x1

    .line 480
    :goto_b7
    return v0

    :cond_b8
    const/4 v0, 0x0

    goto :goto_b7
.end method

.method public static isMentioned(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "str"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 770
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 777
    :cond_5
    :goto_5
    return v0

    .line 773
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 775
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static sendRetryLoginBroadCast(Landroid/content/Context;I)Z
    .registers 9
    .parameter "context"
    .parameter "spType"

    .prologue
    .line 673
    sget-object v3, Lcom/sec/android/app/sns/type/SnsIntentAction;->RETRY_LOGIN_ACTIONS:[Ljava/lang/String;

    aget-object v0, v3, p1

    .line 674
    .local v0, action:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v2, intent:Landroid/content/Intent;
    :try_start_9
    const-string v3, "com.sec.android.app.sns.permission.RECEIVE_SNS_BROADCAST"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 679
    sget-object v3, Lcom/sec/android/socialhub/util/SocialHubUtil;->TAG:Ljava/lang/String;

    const-string v4, "sendRetryLoginBroadCast()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke broadcast(), action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_32} :catch_34

    .line 687
    :goto_32
    const/4 v3, 0x1

    return v3

    .line 682
    :catch_34
    move-exception v1

    .line 684
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public static setSearchedTextWithColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V
    .registers 12
    .parameter "context"
    .parameter "text"
    .parameter "sub_str"
    .parameter "colorId"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, before_start:I
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    .line 163
    :cond_d
    return-void

    .line 130
    :cond_e
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 134
    .local v5, str_type:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 136
    .local v3, span:Landroid/text/SpannableString;
    instance-of v6, v5, Landroid/text/SpannableString;

    if-eqz v6, :cond_4f

    move-object v3, v5

    .line 138
    check-cast v3, Landroid/text/SpannableString;

    .line 147
    :goto_22
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    .line 150
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v2, v6

    .line 154
    .local v1, end_pos:I
    if-ltz v2, :cond_d

    .line 157
    move v0, v1

    .line 159
    if-le v1, v2, :cond_4b

    .line 160
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v3, v6, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 161
    :cond_4b
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 142
    .end local v1           #end_pos:I
    .end local v2           #pos:I
    :cond_4f
    new-instance v3, Landroid/text/SpannableString;

    .end local v3           #span:Landroid/text/SpannableString;
    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v3       #span:Landroid/text/SpannableString;
    goto :goto_22
.end method

.method public static signInIMAccount(Landroid/content/Context;I)V
    .registers 6
    .parameter "mContext"
    .parameter "accountId"

    .prologue
    .line 416
    :try_start_0
    const-string v0, "com.tecace.app.ACTION_SIGN_IN"

    .line 417
    .local v0, ACTION_SIGN_IN:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "sign_in_out_accountId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 425
    .end local v0           #ACTION_SIGN_IN:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_f
    return-void

    .line 421
    :catch_10
    move-exception v1

    .line 423
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static signOutIMAccount(Landroid/content/Context;I)V
    .registers 6
    .parameter "mContext"
    .parameter "accountId"

    .prologue
    .line 430
    :try_start_0
    const-string v0, "com.tecace.app.ACTION_SIGN_OUT"

    .line 431
    .local v0, ACTION_SIGN_OUT:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "sign_in_out_accountId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 439
    .end local v0           #ACTION_SIGN_OUT:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_f
    return-void

    .line 435
    :catch_10
    move-exception v1

    .line 437
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static textScaleX(Landroid/widget/TextView;)V
    .registers 3
    .parameter "textview"

    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_c

    .line 927
    :goto_b
    return-void

    .line 922
    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1e

    .line 923
    const v0, 0x3f666666

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_b

    .line 925
    :cond_1e
    const v0, 0x3f4ccccd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_b
.end method
