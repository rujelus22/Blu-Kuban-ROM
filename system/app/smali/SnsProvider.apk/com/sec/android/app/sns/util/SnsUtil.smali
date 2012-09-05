.class public final Lcom/sec/android/app/sns/util/SnsUtil;
.super Ljava/lang/Object;
.source "SnsUtil.java"


# static fields
.field public static mbIsLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sns/util/SnsUtil;->mbIsLoggable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsAddedAccount(Landroid/content/Context;I)Z
    .registers 5
    .parameter "context"
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 532
    .local v0, am:Landroid/accounts/AccountManager;
    sget-object v2, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 533
    .local v1, loginAccount:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_11

    .line 534
    const/4 v2, 0x1

    .line 535
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static IsAddedAccount(Lcom/sec/android/app/sns/account/SnsAccountMgr;)Z
    .registers 3
    .parameter "AccountMgr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 546
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 547
    const/4 v1, 0x1

    .line 549
    :goto_d
    return v1

    .line 545
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static IsIncludeOwner(Ljava/util/Map;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, actorList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 561
    .local v0, actorIDList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "owner"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 562
    const/4 v1, 0x1

    .line 564
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private static appendByteToHexString(Ljava/lang/StringBuffer;B)V
    .registers 5
    .parameter "outString"
    .parameter "inByte"

    .prologue
    .line 76
    const-string v0, "0123456789abcdef"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789abcdef"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 4
    .parameter "inBytes"

    .prologue
    .line 95
    if-eqz p0, :cond_5

    array-length v2, p0

    if-gtz v2, :cond_7

    .line 96
    :cond_5
    const/4 v2, 0x0

    .line 103
    :goto_6
    return-object v2

    .line 98
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 99
    .local v1, outStringBuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, p0

    if-ge v0, v2, :cond_1b

    .line 100
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/sec/android/app/sns/util/SnsUtil;->appendByteToHexString(Ljava/lang/StringBuffer;B)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 103
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public static checkICCID(Landroid/content/Context;I)Z
    .registers 10
    .parameter "context"
    .parameter "sp"

    .prologue
    const/4 v4, 0x0

    .line 388
    invoke-static {p0}, Lcom/sec/android/app/sns/util/SnsUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, ICCID_Cur:Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 392
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v3

    .line 393
    .local v3, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 396
    .local v0, ICCIDPref:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCID_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, ICCID_Pref:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 399
    if-nez v1, :cond_36

    if-eqz v2, :cond_68

    .line 400
    :cond_36
    const-string v5, "SNS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkICCID() : KEY = [ICCID_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] - check ICCID_Cur = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / ICCID_Pref = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_68
    if-eqz v2, :cond_73

    if-eqz v1, :cond_73

    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_73

    .line 417
    .end local v0           #ICCIDPref:Landroid/content/SharedPreferences;
    .end local v2           #ICCID_Pref:Ljava/lang/String;
    .end local v3           #sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    :cond_72
    :goto_72
    return v4

    .line 410
    .restart local v0       #ICCIDPref:Landroid/content/SharedPreferences;
    .restart local v2       #ICCID_Pref:Ljava/lang/String;
    .restart local v3       #sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    :cond_73
    if-nez v2, :cond_77

    if-nez v1, :cond_72

    .line 414
    :cond_77
    const/4 v4, 0x1

    goto :goto_72

    .line 416
    .end local v0           #ICCIDPref:Landroid/content/SharedPreferences;
    .end local v2           #ICCID_Pref:Ljava/lang/String;
    .end local v3           #sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    :cond_79
    const-string v5, "SNS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkICCID() : SpType = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is not supported!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method

.method public static checkTargetType(IILjava/lang/String;)Z
    .registers 10
    .parameter "spType"
    .parameter "reqType"
    .parameter "targetType"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 629
    packed-switch p1, :pswitch_data_260

    .line 740
    :pswitch_8
    const-string v0, "SNS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnsUtil :: checkAppId() - reqType = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not support !!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 742
    :cond_27
    :goto_27
    return v0

    .line 631
    :pswitch_28
    sparse-switch p0, :sswitch_data_26c

    .line 652
    :cond_2b
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 669
    :pswitch_a2
    sparse-switch p0, :sswitch_data_27a

    .line 696
    :cond_a5
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 713
    :pswitch_11c
    sparse-switch p0, :sswitch_data_28c

    :cond_11f
    move v0, v1

    .line 736
    goto/16 :goto_27

    .line 633
    :sswitch_122
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 641
    :sswitch_155
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 646
    :sswitch_169
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_27

    .line 671
    :sswitch_18b
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 677
    :sswitch_1ab
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 685
    :sswitch_1de
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 690
    :sswitch_1f2
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    goto/16 :goto_27

    .line 715
    :sswitch_214
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 721
    :sswitch_21e
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 725
    :sswitch_228
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 730
    :sswitch_23c
    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    goto/16 :goto_27

    .line 629
    nop

    :pswitch_data_260
    .packed-switch 0x7
        :pswitch_11c
        :pswitch_8
        :pswitch_28
        :pswitch_a2
    .end packed-switch

    .line 631
    :sswitch_data_26c
    .sparse-switch
        0x1 -> :sswitch_122
        0x8 -> :sswitch_155
        0xf -> :sswitch_169
    .end sparse-switch

    .line 669
    :sswitch_data_27a
    .sparse-switch
        0x0 -> :sswitch_18b
        0x1 -> :sswitch_1ab
        0x8 -> :sswitch_1de
        0xf -> :sswitch_1f2
    .end sparse-switch

    .line 713
    :sswitch_data_28c
    .sparse-switch
        0x0 -> :sswitch_214
        0x2 -> :sswitch_21e
        0x6 -> :sswitch_23c
        0x8 -> :sswitch_21e
        0xd -> :sswitch_228
        0xe -> :sswitch_21e
    .end sparse-switch
.end method

.method public static extractPortNumber(Ljava/lang/String;)I
    .registers 7
    .parameter "url"

    .prologue
    const/4 v5, -0x1

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, portNum:I
    const/4 v0, 0x0

    .line 271
    .local v0, contentPos:I
    const-string v4, "://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_12

    .line 272
    const-string v4, "://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 275
    :cond_12
    const/4 v3, -0x1

    .line 276
    .local v3, portStartPos:I
    const/16 v4, 0x3a

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v5, :cond_2e

    .line 277
    add-int/lit8 v3, v3, 0x1

    .line 279
    const/4 v1, -0x1

    .line 280
    .local v1, portEndPos:I
    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v5, :cond_2f

    .line 281
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 287
    .end local v1           #portEndPos:I
    :cond_2e
    :goto_2e
    return v2

    .line 283
    .restart local v1       #portEndPos:I
    :cond_2f
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2e
.end method

.method public static getActivityHistory(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "activityType"

    .prologue
    .line 758
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v1

    .line 759
    .local v1, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 762
    .local v0, ActivityPref:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/sec/android/app/sns/type/SnsActivityType;->getActorCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getApplicationKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, appKey:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_15

    .line 331
    :cond_13
    const-string v0, "debugkey"

    .line 333
    .end local v0           #appKey:Ljava/lang/String;
    :cond_15
    return-object v0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 344
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 346
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 348
    .local v0, MCCMNC:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_25

    .line 351
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 352
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_24
    :goto_24
    return-object v0

    .line 354
    :cond_25
    const-string v2, "SNS"

    const-string v3, "SnsUtil : getDeviceInfo() - SIM state is not ready!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public static getICCID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 361
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 363
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 365
    .local v0, ICCID:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 366
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_f
    return-object v0
.end method

.method public static getIsFirstActRetrieveAfterPhotoUpload(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 832
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v1

    .line 833
    .local v1, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 836
    .local v0, ActivityPref:Landroid/content/SharedPreferences;
    const-string v2, "IsPhotoUpload"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static getPersistKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .parameter "context"

    .prologue
    .line 298
    const-string v1, "PersistKeyCode"

    .line 300
    .local v1, PERSIST_KEY_CODE:Ljava/lang/String;
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 302
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, IMEI:Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v6

    .line 305
    .local v6, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 308
    .local v4, persisKeyPref:Landroid/content/SharedPreferences;
    const-string v8, "PersistKeyCode"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, persistKeyCode:Ljava/lang/String;
    if-nez v5, :cond_5c

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 311
    .local v3, millisecond:Ljava/lang/Long;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ANDROID_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f040001

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 315
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "PersistKeyCode"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #millisecond:Ljava/lang/Long;
    :cond_5c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/sns/util/SnsUtil;->getSHA1DigestHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getSHA1DigestHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "srcString"

    .prologue
    .line 117
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 118
    .local v0, digestSHA1:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_16

    move-result-object v2

    .line 125
    .local v2, outBytes:[B
    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .end local v0           #digestSHA1:Ljava/security/MessageDigest;
    .end local v2           #outBytes:[B
    :goto_15
    return-object v3

    .line 120
    :catch_16
    move-exception v1

    .line 121
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 122
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public static getSpTypeBySpName(Ljava/lang/String;)I
    .registers 3
    .parameter "spName"

    .prologue
    .line 252
    if-eqz p0, :cond_16

    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget-object v1, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 254
    sget-object v1, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 257
    .end local v0           #i:I
    :goto_12
    return v0

    .line 253
    .restart local v0       #i:I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 257
    .end local v0           #i:I
    :cond_16
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public static initDebugKey(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 475
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v2

    .line 476
    .local v2, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, DebugKeyPref:Landroid/content/SharedPreferences;
    const-string v3, "debug_key"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/sns/util/SnsUtil;->mbIsLoggable:Z

    .line 481
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.sns.action.DEBUG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v1, intent:Landroid/content/Intent;
    sget-boolean v3, Lcom/sec/android/app/sns/util/SnsUtil;->mbIsLoggable:Z

    if-eqz v3, :cond_27

    .line 484
    const-string v3, "DebugMode"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    :goto_23
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    return-void

    .line 486
    :cond_27
    const-string v3, "DebugMode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_23
.end method

.method public static invokeAssertion(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 438
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTENTIONALLY OCCURRED EXCEPTION !!! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1f
    const-string v0, "SNS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeAssertion() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method

.method public static isAuthReqType(I)Z
    .registers 3
    .parameter "reqType"

    .prologue
    const/4 v0, 0x1

    .line 517
    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    if-eqz p0, :cond_f

    if-eq p0, v0, :cond_f

    const/16 v1, 0x29

    if-ne p0, v1, :cond_10

    .line 522
    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isLoggable()Z
    .registers 1

    .prologue
    .line 493
    sget-boolean v0, Lcom/sec/android/app/sns/util/SnsUtil;->mbIsLoggable:Z

    return v0
.end method

.method public static isOAuthSpType(I)Z
    .registers 3
    .parameter "spType"

    .prologue
    .line 508
    const/16 v0, 0xc

    .local v0, sp:I
    :goto_2
    const/16 v1, 0xf

    if-gt v0, v1, :cond_d

    .line 509
    if-ne v0, p0, :cond_a

    .line 510
    const/4 v1, 0x1

    .line 513
    :goto_9
    return v1

    .line 508
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 513
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static isSupportedSpType(I)Z
    .registers 6
    .parameter "spType"

    .prologue
    .line 498
    sget-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_f

    aget v3, v0, v1

    .line 499
    .local v3, sp:I
    if-ne v3, p0, :cond_c

    .line 500
    const/4 v4, 0x1

    .line 503
    .end local v3           #sp:I
    :goto_b
    return v4

    .line 498
    .restart local v3       #sp:I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 503
    .end local v3           #sp:I
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method

.method public static isValidFriendList(Ljava/util/Map;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, friendList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 576
    .local v2, isValid:Z
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_11

    .line 577
    const-string v5, "SNS"

    const-string v6, "SnsUtil : isValidFriendList() - FRIEND ID must have only MAX 5 ids!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 594
    .end local v2           #isValid:Z
    .local v3, isValid:I
    :goto_10
    return v3

    .line 582
    .end local v3           #isValid:I
    .restart local v2       #isValid:Z
    :cond_11
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 583
    .local v0, hmKeys:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    array-length v5, v0

    if-ge v1, v5, :cond_50

    .line 584
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 586
    .local v4, key:I
    invoke-static {v4}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 587
    const-string v5, "SNS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SnsUtil : isValidFriendList() - spType = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is invalid!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 588
    .restart local v3       #isValid:I
    goto :goto_10

    .line 583
    .end local v3           #isValid:I
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 592
    .end local v4           #key:I
    :cond_50
    const/4 v2, 0x1

    move v3, v2

    .line 594
    .restart local v3       #isValid:I
    goto :goto_10
.end method

.method public static resetICCID(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 423
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v6

    .line 424
    .local v6, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    .local v0, ICCIDPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 426
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v5, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_16
    if-ge v3, v4, :cond_35

    aget v7, v1, v3

    .line 428
    .local v7, sp:I
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 429
    const-string v8, "ICCID_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 433
    .end local v7           #sp:I
    :cond_35
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    return-void
.end method

.method public static setActivityHistory(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .parameter "context"
    .parameter "actorCode"
    .parameter "activityType"

    .prologue
    .line 748
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v2

    .line 749
    .local v2, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 752
    .local v0, ActivityPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 753
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Lcom/sec/android/app/sns/type/SnsActivityType;->getActorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    return-void
.end method

.method public static setDebugKey(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "checkKey"

    .prologue
    .line 451
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v3

    .line 452
    .local v3, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    .local v0, DebugKeyPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 456
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "debug_key"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    sput-boolean p1, Lcom/sec/android/app/sns/util/SnsUtil;->mbIsLoggable:Z

    .line 462
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.sns.action.DEBUG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, intent:Landroid/content/Intent;
    sget-boolean v4, Lcom/sec/android/app/sns/util/SnsUtil;->mbIsLoggable:Z

    if-eqz v4, :cond_2c

    .line 465
    const-string v4, "DebugMode"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    :goto_28
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    return-void

    .line 467
    :cond_2c
    const-string v4, "DebugMode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_28
.end method

.method public static setICCID(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "sp"
    .parameter "iccid"

    .prologue
    .line 373
    invoke-static {p1}, Lcom/sec/android/app/sns/util/SnsUtil;->isSupportedSpType(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 374
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v2

    .line 375
    .local v2, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 378
    .local v0, ICCIDPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 379
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICCID_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    .end local v0           #ICCIDPref:Landroid/content/SharedPreferences;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    .end local p2
    :goto_2c
    return-object p2

    .restart local p2
    :cond_2d
    const/4 p2, 0x0

    goto :goto_2c
.end method

.method public static setIsFirstActRetrieveAfterPhotoUpload(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "bPhotoUpload"

    .prologue
    .line 822
    invoke-static {p0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v2

    .line 823
    .local v2, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 826
    .local v0, ActivityPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 827
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "IsPhotoUpload"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 828
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 829
    return-void
.end method
