.class public Lcom/sec/android/app/sns/account/SnsAccountMgr;
.super Ljava/lang/Object;
.source "SnsAccountMgr.java"


# static fields
.field private static mNeedToCheckSIM:Z


# instance fields
.field private final DISPLAY_NAME:Ljava/lang/String;

.field private final PEOPLE_ID:Ljava/lang/String;

.field private final PROFILE_PHOTO_URL:Ljava/lang/String;

.field private final SESSION_VALIDITY:Ljava/lang/String;

.field private mAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sns/account/SnsAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mNeedToCheckSIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "PeopleID_"

    iput-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->PEOPLE_ID:Ljava/lang/String;

    .line 63
    const-string v0, "DisplayName_"

    iput-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->DISPLAY_NAME:Ljava/lang/String;

    .line 65
    const-string v0, "ProfilePhotoURL_"

    iput-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->PROFILE_PHOTO_URL:Ljava/lang/String;

    .line 67
    const-string v0, "SessionValidity_"

    iput-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->SESSION_VALIDITY:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAppContext:Landroid/content/Context;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    .line 95
    return-void
.end method


# virtual methods
.method public addAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 9
    .parameter "snsSp"
    .parameter "userID"
    .parameter "displayName"
    .parameter "profilePhotoUrl"
    .parameter "sessionValidity"

    .prologue
    .line 107
    new-instance v0, Lcom/sec/android/app/sns/account/SnsAccount;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/sec/android/app/sns/account/SnsAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    .local v0, account:Lcom/sec/android/app/sns/account/SnsAccount;
    iget-object v1, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;
    .registers 4
    .parameter "snsSp"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sns/account/SnsAccount;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;
    .registers 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 389
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public hasAccount(I)Z
    .registers 4
    .parameter "snsSp"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasValidSNSAccount()Z
    .registers 7

    .prologue
    .line 170
    sget-object v0, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_2b

    aget v3, v0, v1

    .line 171
    .local v3, spType:I
    iget-object v4, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sns/account/SnsAccount;

    invoke-virtual {v4}, Lcom/sec/android/app/sns/account/SnsAccount;->getSessionValidity()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 172
    const/4 v4, 0x1

    .line 176
    .end local v3           #spType:I
    :goto_27
    return v4

    .line 170
    .restart local v3       #spType:I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 176
    .end local v3           #spType:I
    :cond_2b
    const/4 v4, 0x0

    goto :goto_27
.end method

.method public readAccountInfo()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v12

    .line 224
    .local v12, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    invoke-virtual {v12, v13}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 227
    .local v6, accountInfoPref:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 228
    .local v2, peopleID:Ljava/lang/String;
    const/4 v3, 0x0

    .line 229
    .local v3, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 230
    .local v4, profilePhotoURL:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v10, sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 233
    .local v11, sessionValidity:Z
    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .local v7, arr$:[I
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_19
    if-ge v8, v9, :cond_86

    aget v1, v7, v8

    .line 234
    .local v1, sp:I
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v10, v13, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, "PeopleID_"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_83

    .line 241
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v10, v13, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 242
    const-string v0, "DisplayName_"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v10, v13, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 247
    const-string v0, "ProfilePhotoURL_"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v10, v13, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 252
    const-string v0, "SessionValidity_"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 256
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->addAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 233
    :cond_83
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 259
    .end local v1           #sp:I
    :cond_86
    return-void
.end method

.method public removeAccount(I)V
    .registers 4
    .parameter "snsSp"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public removeAllAccounts()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 128
    return-void
.end method

.method public validateAllAccounts(I)V
    .registers 23
    .parameter "validityCheckMask"

    .prologue
    .line 262
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v16, logBuf:Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    .line 264
    .local v11, bNormalCheckRequired:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 266
    .local v20, systemAccountMgr:Landroid/accounts/AccountManager;
    if-lez p1, :cond_1c2

    .line 268
    const/4 v12, 0x0

    .line 269
    .local v12, bSessionValidity:Z
    const/4 v10, 0x0

    .line 270
    .local v10, bHasAccount:Z
    const/16 v19, 0x0

    .line 271
    .local v19, systemAccount:[Landroid/accounts/Account;
    const/16 v18, 0x0

    .line 273
    .local v18, snsAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    sget-boolean v2, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mNeedToCheckSIM:Z

    if-eqz v2, :cond_80

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_80

    .line 275
    sget-object v9, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .local v9, arr$:[I
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_22
    if-ge v14, v15, :cond_80

    aget v3, v9, v14

    .line 276
    .local v3, spType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/app/sns/util/SnsUtil;->checkICCID(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 277
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 278
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    .line 280
    .local v8, account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v8, :cond_61

    .line 281
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 283
    .local v1, retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    const/4 v11, 0x0

    .line 287
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 290
    .end local v1           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_61
    const-string v2, "initSessionAndAccount() : ICCID Checked : AccountInfo["

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v2, "] set session INVALID."

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v2, "SNS"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v8           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_7d
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 298
    .end local v3           #spType:I
    .end local v9           #arr$:[I
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_80
    sget-object v9, Lcom/sec/android/app/sns/type/SnsSpType;->SUPPORTED_LIST:[I

    .restart local v9       #arr$:[I
    array-length v15, v9

    .restart local v15       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_84
    if-ge v14, v15, :cond_1bf

    aget v3, v9, v14

    .line 300
    .restart local v3       #spType:I
    sget-object v2, Lcom/sec/android/app/sns/type/SnsAccountType;->ACCOUNT_TYPE:[Ljava/lang/String;

    aget-object v2, v2, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v19

    .line 302
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v18

    .line 303
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->hasAccount(I)Z

    move-result v10

    .line 305
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 307
    if-eqz v18, :cond_1bc

    .line 308
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sns/account/SnsAccount;->getSessionValidity()Z

    move-result v12

    .line 313
    :goto_ae
    sget-boolean v2, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mNeedToCheckSIM:Z

    if-eqz v2, :cond_100

    .line 314
    if-nez v10, :cond_b9

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_100

    .line 315
    :cond_b9
    const-string v2, "##### validateAllAccounts : SpType = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    sget-object v2, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v2, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v2, ", bHasAccount = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    const-string v2, ", bSessionValidity = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    const-string v2, ", systemAccountLength = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    move-object/from16 v0, v19

    array-length v2, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string v2, " #####"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v2, "SNS"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_100
    if-eqz v11, :cond_16b

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_16b

    .line 334
    if-eqz v10, :cond_16b

    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_16b

    .line 336
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "##### validateAllAccounts : Need to send a Logout request for [SP = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string v2, "] #####"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, "SNS"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v2, Lcom/sec/android/app/sns/request/SnsRequestFactory;

    invoke-direct {v2}, Lcom/sec/android/app/sns/request/SnsRequestFactory;-><init>()V

    const/4 v4, -0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v3, v5}, Lcom/sec/android/app/sns/request/SnsRequestFactory;->newAuthLogout(III)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v17

    .line 349
    .local v17, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getHandler()Landroid/os/Handler;

    move-result-object v13

    .line 351
    .local v13, handler:Landroid/os/Handler;
    const/4 v2, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sns/util/SnsUtil;->setICCID(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->removeAccount(I)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 360
    .end local v13           #handler:Landroid/os/Handler;
    .end local v17           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_16b
    if-eqz v11, :cond_1b8

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1b8

    .line 365
    if-nez v10, :cond_1b8

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_1b8

    .line 366
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 367
    const-string v2, "##### validateAllAccounts : Need to send a Retry-Login broadcast for [SP = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string v2, "] #####"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, "SNS"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v1, Lcom/sec/android/app/sns/result/SnsResultData;

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 374
    .restart local v1       #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    .end local v1           #retryLoginCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_1b8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_84

    .line 310
    :cond_1bc
    const/4 v12, 0x0

    goto/16 :goto_ae

    .line 382
    .end local v3           #spType:I
    :cond_1bf
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mNeedToCheckSIM:Z

    .line 385
    .end local v9           #arr$:[I
    .end local v10           #bHasAccount:Z
    .end local v12           #bSessionValidity:Z
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #snsAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v19           #systemAccount:[Landroid/accounts/Account;
    :cond_1c2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 386
    return-void
.end method

.method public writeAccountInfo()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 184
    iget-object v7, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;

    move-result-object v6

    .line 185
    .local v6, sharedPref:Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;
    invoke-virtual {v6, v9}, Lcom/sec/android/app/sns/sharedpreference/SnsSharedPreferences;->getSharedPreference(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, accountInfoPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 189
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/sec/android/app/sns/account/SnsAccountMgr;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 193
    .local v5, servicProviderTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 194
    .local v2, i:I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 195
    const-string v7, "PeopleID_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 200
    const-string v7, "DisplayName_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 205
    const-string v7, "ProfilePhotoURL_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 210
    const-string v7, "SessionValidity_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sns/account/SnsAccount;->getSessionValidity()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_21

    .line 215
    .end local v2           #i:I
    :cond_ab
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method
