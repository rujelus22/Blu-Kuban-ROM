.class public Lcom/google/android/gsf/loginservice/GLSUser;
.super Ljava/lang/Object;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/GLSUser$1;,
        Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;,
        Lcom/google/android/gsf/loginservice/GLSUser$Status;,
        Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;,
        Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;,
        Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;,
        Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    }
.end annotation


# static fields
.field private static sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

.field private static sWireToStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/loginservice/GLSUser$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private captchaAnswer:Ljava/lang/String;

.field private captchaToken:Ljava/lang/String;

.field public existing:Z

.field mAccount:Landroid/accounts/Account;

.field public mEmail:Ljava/lang/String;

.field mEncryptedPassword:Ljava/lang/String;

.field private mHash:Ljava/lang/String;

.field mMasterToken:Ljava/lang/String;

.field private mUpdatedPassword:Ljava/lang/String;

.field mUseBrowserFlow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sWireToStatus:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 7
    .parameter "email"
    .parameter "existing"

    .prologue
    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    .line 1163
    iput-boolean p2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    .line 1164
    if-eqz p1, :cond_12

    .line 1165
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    .line 1167
    :cond_12
    if-eqz p2, :cond_5a

    .line 1168
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1171
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v3, "oauthAccessToken"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, browserUserData:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3d

    .line 1174
    invoke-direct {p0, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->fixEclairLegacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    :cond_3d
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUseBrowserFlow:Z

    .line 1180
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_5a

    .line 1181
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 1182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1185
    .end local v0           #browserUserData:Ljava/lang/String;
    :cond_5a
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sWireToStatus:Ljava/util/Map;

    return-object v0
.end method

.method private add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1916
    .local p1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1917
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    :cond_e
    return-void
.end method

.method public static addPhoto(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;)V
    .registers 2
    .parameter "session"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1982
    return-void
.end method

.method public static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 2640
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2641
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    .line 2642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2645
    :cond_14
    return-void
.end method

.method private firstSave(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19
    .parameter "browserFlow"
    .parameter "sid"
    .parameter "lsid"
    .parameter "services"
    .parameter "newlyCreatedAccount"

    .prologue
    .line 1435
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1436
    .local v5, extras:Landroid/os/Bundle;
    if-eqz p4, :cond_12

    .line 1437
    sget-object v9, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v9}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    :cond_12
    if-eqz p1, :cond_1e

    .line 1440
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUseBrowserFlow:Z

    .line 1441
    const-string v9, "oauthAccessToken"

    const-string v10, "1"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    :cond_1e
    const-string v9, "flags"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    if-eqz v9, :cond_8d

    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 1445
    .local v8, password:Ljava/lang/String;
    :goto_2e
    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mHash:Ljava/lang/String;

    if-eqz v9, :cond_39

    .line 1446
    const-string v9, "sha1hash"

    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mHash:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_39
    sget-object v9, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v9, v10, v8, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1451
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUpdatedPassword:Ljava/lang/String;

    .line 1454
    if-eqz p2, :cond_61

    if-eqz p3, :cond_61

    .line 1456
    sget-object v9, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v11, "SID"

    invoke-virtual {v9, v10, v11, p2}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    sget-object v9, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v11, "LSID"

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v11, v0}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_61
    sget-object v9, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.server.checkin.CHECKIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    if-eqz p4, :cond_c6

    .line 1464
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1465
    .local v4, bits:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p4, :cond_90

    .line 1466
    const-string v9, ","

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1467
    .local v2, accountServicesArray:[Ljava/lang/String;
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_83
    if-ge v6, v7, :cond_90

    aget-object v1, v3, v6

    .line 1468
    .local v1, accountService:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1467
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 1444
    .end local v1           #accountService:Ljava/lang/String;
    .end local v2           #accountServicesArray:[Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #bits:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #password:Ljava/lang/String;
    :cond_8d
    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    goto :goto_2e

    .line 1472
    .restart local v4       #bits:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8       #password:Ljava/lang/String;
    :cond_90
    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v11, "gmail-ls"

    const-string v9, "mail"

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c7

    const/4 v9, 0x1

    :goto_9d
    invoke-static {v10, v11, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1477
    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v11, "com.android.calendar"

    if-nez p5, :cond_ae

    const-string v9, "cl"

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c9

    :cond_ae
    const/4 v9, 0x1

    :goto_af
    invoke-static {v10, v11, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1481
    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v11, "com.android.contacts"

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v12, "@youtube.com"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    const/4 v9, 0x0

    :goto_c3
    invoke-static {v10, v11, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1486
    .end local v4           #bits:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c6
    return-void

    .line 1472
    .restart local v4       #bits:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c7
    const/4 v9, 0x0

    goto :goto_9d

    .line 1477
    :cond_c9
    const/4 v9, 0x0

    goto :goto_af

    .line 1481
    :cond_cb
    const/4 v9, 0x1

    goto :goto_c3
.end method

.method private fixEclairLegacy(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "browserUserData"

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1195
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1196
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v2, "oauthAccessToken"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v0, "1"

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;
    .registers 4
    .parameter "ctx"
    .parameter "email"

    .prologue
    .line 1114
    const-class v0, Lcom/google/android/gsf/loginservice/GLSUser;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gsf/loginservice/GLSUser;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gsf/loginservice/GLSUser;
    .registers 12
    .parameter "ctx"
    .parameter "email"
    .parameter "temp"

    .prologue
    .line 1125
    const-class v7, Lcom/google/android/gsf/loginservice/GLSUser;

    monitor-enter v7

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    .line 1126
    if-nez p1, :cond_11

    .line 1129
    new-instance v5, Lcom/google/android/gsf/loginservice/GLSUser;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Lcom/google/android/gsf/loginservice/GLSUser;-><init>(Ljava/lang/String;Z)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_33

    .line 1148
    :cond_f
    :goto_f
    monitor-exit v7

    return-object v5

    .line 1132
    :cond_11
    :try_start_11
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v8, "com.google"

    invoke-virtual {v6, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1134
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1e
    if-ge v3, v4, :cond_57

    aget-object v0, v2, v3

    .line 1135
    .local v0, acc:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1136
    if-eqz p2, :cond_36

    .line 1137
    new-instance v5, Lcom/google/android/gsf/loginservice/GLSUser;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Lcom/google/android/gsf/loginservice/GLSUser;-><init>(Ljava/lang/String;Z)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_33

    goto :goto_f

    .line 1125
    .end local v0           #acc:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_33
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1139
    .restart local v0       #acc:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_36
    :try_start_36
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    #getter for: Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountInfo:Ljava/util/Map;
    invoke-static {v6}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->access$300(Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gsf/loginservice/GLSUser;

    .line 1140
    .local v5, res:Lcom/google/android/gsf/loginservice/GLSUser;
    if-nez v5, :cond_f

    .line 1141
    new-instance v5, Lcom/google/android/gsf/loginservice/GLSUser;

    .end local v5           #res:Lcom/google/android/gsf/loginservice/GLSUser;
    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Lcom/google/android/gsf/loginservice/GLSUser;-><init>(Ljava/lang/String;Z)V

    .line 1142
    .restart local v5       #res:Lcom/google/android/gsf/loginservice/GLSUser;
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    #getter for: Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountInfo:Ljava/util/Map;
    invoke-static {v6}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->access$300(Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 1134
    .end local v5           #res:Lcom/google/android/gsf/loginservice/GLSUser;
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1148
    .end local v0           #acc:Landroid/accounts/Account;
    :cond_57
    new-instance v5, Lcom/google/android/gsf/loginservice/GLSUser;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/google/android/gsf/loginservice/GLSUser;-><init>(Ljava/lang/String;Z)V
    :try_end_5d
    .catchall {:try_start_36 .. :try_end_5d} :catchall_33

    goto :goto_f
.end method

.method private getAuth(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2226
    .local p1, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "SID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "LSID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2227
    :cond_10
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2229
    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->AUTH:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_16
.end method

.method private getAuthtokenRaw(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/lang/String;Z)Ljava/util/Map;
    .registers 28
    .parameter "service"
    .parameter "uid"
    .parameter "session"
    .parameter "loginOptions"
    .parameter "storedPermission"
    .parameter "accessToken"
    .parameter "addedAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1640
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1642
    .local v18, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_14

    .line 1643
    const-string v3, "GLSUser"

    const-string v4, "No session"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object p3

    .line 1648
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    .line 1649
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1651
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/loginservice/GLSUser;->hasSecret()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1654
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    const-string v4, "No secrets - returning BAD_AUTH "

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 1655
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v18

    .line 1705
    .end local v18           #tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v19, tokens:Ljava/lang/Object;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_44
    return-object v19

    .line 1659
    .end local v19           #tokens:Ljava/lang/Object;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18       #tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_45
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    .line 1660
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gsf/loginservice/GLSUser;->prepareRequest(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/util/ArrayList;Ljava/lang/String;Z)V

    .line 1669
    const/4 v13, 0x0

    .line 1671
    .local v13, entity:Lorg/apache/http/HttpEntity;
    :try_start_5e
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    invoke-direct {v13, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_63} :catch_11f

    .line 1677
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    const/4 v14, 0x0

    .line 1679
    .local v14, err:Ljava/lang/String;
    :try_start_64
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    const-string v4, "https://android.clients.google.com/auth"

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v13, v5, v6}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->httpPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 1682
    .local v15, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    .line 1684
    .local v16, response:Ljava/lang/String;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 1685
    .local v17, sc:I
    const v3, 0x320d2

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/login/Compat;->eventLogWriteEvent(ILjava/lang/String;)V

    .line 1686
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser;->parseResponse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    .line 1687
    const-string v3, "x-status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v9, v1, v3, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->logRequest(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;I)V

    .line 1691
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v14, v0
    :try_end_d2
    .catchall {:try_start_64 .. :try_end_d2} :catchall_1d0
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_d2} :catch_128

    .line 1702
    const v4, 0x320d2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v14, :cond_126

    const-string v3, "OK"

    :goto_dd
    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthtoken("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v14, :cond_10e

    const-string v14, "ok"

    .end local v14           #err:Ljava/lang/String;
    :cond_10e
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V

    move-object/from16 v19, v18

    .restart local v19       #tokens:Ljava/lang/Object;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_44

    .line 1672
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #response:Ljava/lang/String;
    .end local v17           #sc:I
    .end local v19           #tokens:Ljava/lang/Object;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_11f
    move-exception v12

    .line 1673
    .local v12, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .end local v12           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #err:Ljava/lang/String;
    .restart local v15       #resp:Lorg/apache/http/HttpResponse;
    .restart local v16       #response:Ljava/lang/String;
    .restart local v17       #sc:I
    :cond_126
    move-object v3, v14

    .line 1702
    goto :goto_dd

    .line 1694
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #response:Ljava/lang/String;
    .end local v17           #sc:I
    :catch_128
    move-exception v12

    .line 1695
    .local v12, e:Ljava/io/IOException;
    :try_start_129
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v14

    .line 1696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException in getAuthtoken("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V

    .line 1698
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3, v4, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->logRequest(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;I)V
    :try_end_181
    .catchall {:try_start_129 .. :try_end_181} :catchall_1d0

    .line 1702
    const v4, 0x320d2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v14, :cond_1ce

    const-string v3, "OK"

    :goto_18c
    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object p1, v5, v3

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthtoken("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v14, :cond_1bd

    const-string v14, "ok"

    .end local v14           #err:Ljava/lang/String;
    :cond_1bd
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V

    move-object/from16 v19, v18

    .restart local v19       #tokens:Ljava/lang/Object;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_44

    .end local v19           #tokens:Ljava/lang/Object;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #err:Ljava/lang/String;
    :cond_1ce
    move-object v3, v14

    .line 1702
    goto :goto_18c

    .end local v12           #e:Ljava/io/IOException;
    :catchall_1d0
    move-exception v3

    move-object v4, v3

    const v5, 0x320d2

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-nez v14, :cond_21c

    const-string v3, "OK"

    :goto_1dd
    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAuthtoken("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v14, :cond_20e

    const-string v14, "ok"

    .end local v14           #err:Ljava/lang/String;
    :cond_20e
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V

    throw v4

    .restart local v14       #err:Ljava/lang/String;
    :cond_21c
    move-object v3, v14

    .line 1702
    goto :goto_1dd
.end method

.method public static getError(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .registers 2
    .parameter "intent"

    .prologue
    .line 1531
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;
    .registers 8
    .parameter "ctx"

    .prologue
    .line 1101
    const-class v6, Lcom/google/android/gsf/loginservice/GLSUser;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    if-nez v0, :cond_26

    .line 1102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1105
    :cond_11
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;Landroid/content/pm/PackageManager;Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/loginservice/GLSUser$1;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    .line 1110
    :cond_26
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v6

    return-object v0

    .line 1101
    :catchall_2a
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method static getHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;
    .registers 6
    .parameter "context"

    .prologue
    const/16 v4, 0x7530

    .line 1152
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v2, "GoogleLoginService/1.2"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1154
    .local v0, client:Lcom/google/android/common/http/GoogleHttpClient;
    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 1155
    .local v1, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1156
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1157
    const-wide/16 v2, 0x7530

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1158
    return-object v0
.end method

.method public static getOrCreateSession(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2627
    if-nez p1, :cond_e

    const/4 v0, 0x0

    .line 2630
    :goto_3
    if-eqz v0, :cond_15

    .line 2631
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getSession(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v0

    .line 2636
    :goto_d
    return-object v0

    .line 2627
    :cond_e
    const-string v0, "session"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2633
    :cond_15
    const-string v0, "GLSUser"

    const-string v1, "GLS Activity without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v0

    goto :goto_d
.end method

.method private handlePermission(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2187
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PERMISSION_ADVICE:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2188
    if-nez v0, :cond_20

    .line 2191
    if-eqz p5, :cond_13

    move-object v0, v1

    .line 2205
    :goto_12
    return-object v0

    .line 2195
    :cond_13
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->errorIntent(Ljava/util/Map;Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_12

    .line 2200
    :cond_20
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v0, v1

    .line 2202
    goto :goto_12

    .line 2205
    :cond_2a
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->errorIntent(Ljava/util/Map;Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_12
.end method

.method private hasPermission(Ljava/lang/String;I)Z
    .registers 7
    .parameter "tokenType"
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    .line 2315
    invoke-direct {p0, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->inSystemImage(I)Z

    move-result v1

    .line 2316
    .local v1, system:Z
    if-eqz v1, :cond_8

    .line 2325
    :cond_7
    :goto_7
    return v2

    .line 2320
    :cond_8
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2322
    .local v0, myUid:I
    if-eq v0, p2, :cond_7

    invoke-direct {p0, v0, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->sameSignature(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2325
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->getStoredPermission(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_7
.end method

.method private hasSecret()Z
    .registers 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private inSystemImage(I)Z
    .registers 12
    .parameter "callerUid"

    .prologue
    const/4 v7, 0x0

    .line 2336
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2337
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_24

    aget-object v4, v0, v2

    .line 2339
    .local v4, name:Ljava/lang/String;
    :try_start_10
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2340
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_27

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1f} :catch_25

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_27

    .line 2342
    const/4 v7, 0x1

    .line 2348
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_24
    :goto_24
    return v7

    .line 2344
    .restart local v4       #name:Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 2345
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_24

    .line 2337
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1095
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    if-eqz v0, :cond_9

    .line 1096
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 1098
    :cond_9
    return-void
.end method

.method private logRequest(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 12
    .parameter
    .parameter
    .parameter "message"
    .parameter "sc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1713
    .local p1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .local p2, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1714
    .local v3, out:Ljava/lang/StringBuffer;
    const-string v5, " Request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1715
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 1716
    .local v4, param:Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1717
    .local v2, name:Ljava/lang/String;
    sget-object v5, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1719
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 1722
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #param:Lorg/apache/http/NameValuePair;
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1723
    if-eqz p2, :cond_9a

    .line 1724
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1725
    .local v1, k:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_74

    .line 1728
    .end local v1           #k:Ljava/lang/String;
    :cond_9a
    if-eqz p3, :cond_b2

    .line 1729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " } Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    :cond_b2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V

    .line 1733
    return-void
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2414
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2415
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2416
    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_2a

    aget-object v5, v3, v0

    .line 2417
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 2418
    if-ltz v6, :cond_27

    .line 2419
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2422
    :cond_2a
    return-object v2
.end method

.method private prepareRequest(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 19
    .parameter "service"
    .parameter "uid"
    .parameter "session"
    .parameter "loginOptions"
    .parameter "storedPermission"
    .parameter
    .parameter "accessToken"
    .parameter "added"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1764
    .local p6, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "accountType"

    const-string v9, "HOSTED_OR_GOOGLE"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    if-eqz v7, :cond_24

    .line 1767
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_24
    if-eqz p5, :cond_38

    .line 1773
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->STORED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_38
    if-eqz p8, :cond_4c

    .line 1779
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    :cond_4c
    iget-boolean v7, p3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-eqz v7, :cond_62

    .line 1784
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CREATED:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    :cond_62
    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    if-eqz v7, :cond_179

    .line 1790
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    :goto_78
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getAndroidIdHex()Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, androidIdHex:Ljava/lang/String;
    if-eqz v1, :cond_b2

    .line 1814
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    :cond_b2
    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ec

    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ec

    .line 1821
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    .line 1827
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    .line 1830
    :cond_ec
    iget-boolean v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUseBrowserFlow:Z

    if-eqz v7, :cond_102

    .line 1831
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->BROWSER_FLOW:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    :cond_102
    if-eqz p2, :cond_1b5

    .line 1836
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->getAppPackage(I)Ljava/lang/String;

    move-result-object v6

    .line 1837
    .local v6, packageName:Ljava/lang/String;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PACKAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PACKAGE_SIG:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->getSignatureFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    if-eqz p4, :cond_1b5

    .line 1844
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CLIENT_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1845
    .local v2, clientId:Ljava/lang/String;
    if-eqz v2, :cond_14a

    .line 1846
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CLIENT_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1849
    :cond_14a
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_152
    :goto_152
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1850
    .local v4, extraOption:Ljava/lang/String;
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_152

    .line 1851
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 1798
    .end local v1           #androidIdHex:Ljava/lang/String;
    .end local v2           #clientId:Ljava/lang/String;
    .end local v4           #extraOption:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_179
    if-nez p7, :cond_18f

    .line 1799
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1802
    :cond_18f
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-direct {v7, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1860
    .restart local v1       #androidIdHex:Ljava/lang/String;
    :cond_1b5
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_country"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1863
    .local v3, countryCode:Ljava/lang/String;
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v7, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v7, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v7}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gsf/loginservice/GLSUser;->add(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "RefreshServices"

    const-string v9, "1"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    return-void
.end method

.method private processResponse(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 2052
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gsf/loginservice/GLSUser;->handlePermission(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v0

    .line 2054
    if-eqz v0, :cond_a

    .line 2144
    :goto_9
    return-object v0

    .line 2058
    :cond_a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->processTokenResponse(Ljava/util/Map;Z)V

    .line 2060
    invoke-direct {p0, p1, p3}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuth(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2062
    if-eqz v4, :cond_85

    .line 2065
    const-string v0, "0"

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAN_UPGRADE_PLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    move v0, v2

    :goto_26
    iput-boolean v0, p6, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    .line 2068
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    if-eqz v0, :cond_72

    .line 2069
    const-string v0, "SID"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "LSID"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2071
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->EXPIRY_IN_S:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p3, p2, v4, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->cacheToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2079
    :cond_4b
    const-string v0, "SID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2080
    const-string v1, "LSID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2081
    if-eqz v0, :cond_62

    .line 2082
    const-string v5, "SID"

    invoke-virtual {p0, v5, p2, v0, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->cacheToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2084
    :cond_62
    if-eqz v1, :cond_69

    .line 2085
    const-string v0, "LSID"

    invoke-virtual {p0, v0, p2, v1, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->cacheToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2087
    :cond_69
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUpdatedPassword:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 2088
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->updateSecret()V

    .line 2089
    iput-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUpdatedPassword:Ljava/lang/String;

    .line 2092
    :cond_72
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    if-nez v0, :cond_83

    move v6, v2

    :goto_77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->successIntent(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_9

    :cond_81
    move v0, v3

    .line 2065
    goto :goto_26

    :cond_83
    move v6, v3

    .line 2092
    goto :goto_77

    .line 2096
    :cond_85
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2097
    if-nez v0, :cond_b1

    .line 2098
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get error message from reply:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v0

    .line 2103
    :cond_b1
    const-string v1, "badauth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 2104
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 2106
    :goto_c0
    invoke-static {v7}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromWire(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v2

    .line 2108
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v2, v0, :cond_e2

    .line 2109
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->INFO:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2110
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_2F:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 2111
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_2F:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    :cond_e2
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    .line 2115
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->errorIntent(Ljava/util/Map;Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 2119
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CAPTCHA:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v2, v0, :cond_12f

    .line 2121
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2122
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2123
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, p6}, Lcom/google/android/gsf/loginservice/GLSUser;->getCaptchaData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)V

    .line 2142
    :cond_114
    :goto_114
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLS error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 2144
    goto/16 :goto_9

    .line 2126
    :cond_12f
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v2, v0, :cond_13b

    .line 2129
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    if-eqz v0, :cond_114

    .line 2133
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->resetPassword()V

    goto :goto_114

    .line 2135
    :cond_13b
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v2, v0, :cond_114

    .line 2137
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->resetPassword()V

    .line 2139
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v2, "oauthAccessToken"

    const-string v4, "1"

    invoke-virtual {v0, v1, v2, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_114

    :cond_150
    move-object v7, v0

    goto/16 :goto_c0
.end method

.method private processTokenResponse(Ljava/util/Map;Z)V
    .registers 8
    .parameter
    .parameter "save"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2154
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2155
    .local v0, newToken:Ljava/lang/String;
    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2156
    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 2157
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 2158
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mHash:Ljava/lang/String;

    .line 2159
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_39

    if-eqz p2, :cond_39

    .line 2160
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 2162
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v3, "sha1hash"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    :cond_39
    return-void
.end method

.method private refreshServicesAndSyncAdapters(Ljava/lang/String;)V
    .registers 11
    .parameter "services"

    .prologue
    .line 2295
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2297
    .local v3, oldServices:Ljava/lang/String;
    if-eqz v3, :cond_19

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2312
    :cond_18
    return-void

    .line 2300
    :cond_19
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v8}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v5

    .line 2304
    .local v5, syncAdapters:[Landroid/content/SyncAdapterType;
    move-object v0, v5

    .local v0, arr$:[Landroid/content/SyncAdapterType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2f
    if-ge v1, v2, :cond_18

    aget-object v4, v0, v1

    .line 2305
    .local v4, syncAdapter:Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2306
    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5d

    .line 2307
    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2308
    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2304
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f
.end method

.method private sameSignature(II)Z
    .registers 4
    .parameter "myUid"
    .parameter "callerUid"

    .prologue
    .line 2330
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2481
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 2482
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2483
    if-nez v2, :cond_e

    .line 2490
    :cond_d
    :goto_d
    return-object v0

    .line 2486
    :cond_e
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 2487
    if-eqz v1, :cond_d

    .line 2490
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSUser;->toHex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private successIntent(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Z)Landroid/content/Intent;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2236
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2239
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    if-nez p4, :cond_1b

    .line 2243
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuth(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2247
    :cond_1b
    if-nez p6, :cond_22

    .line 2248
    const-string v0, "authtoken"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    :cond_22
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2252
    if-eqz v0, :cond_55

    .line 2253
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2254
    array-length v4, v3

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v4, :cond_52

    aget-object v5, v3, v1

    .line 2255
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICE_GPLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v6}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 2256
    const/4 v5, 0x1

    iput-boolean v5, p5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mHasGooglePlus:Z

    .line 2254
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 2259
    :cond_52
    invoke-direct {p0, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->refreshServicesAndSyncAdapters(Ljava/lang/String;)V

    .line 2262
    :cond_55
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->YOUTUBE_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2263
    if-eqz v0, :cond_72

    .line 2265
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->YOUTUBE_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p4}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    :cond_72
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2272
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2273
    if-eqz v0, :cond_a4

    if-eqz v1, :cond_a4

    .line 2274
    iget-object v3, p5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2275
    iget-object v0, p5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    :cond_a4
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2279
    if-eqz v0, :cond_bd

    .line 2280
    iget-object v1, p5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    :cond_bd
    return-object v2
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2494
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2495
    array-length v3, p0

    move v0, v1

    :goto_b
    if-ge v0, v3, :cond_24

    aget-byte v4, p0, v0

    .line 2496
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2495
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2498
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;
    .registers 20
    .parameter "session"
    .parameter "browserFlow"
    .parameter "newlyCreatedAccount"
    .parameter "setupWizard"
    .parameter "accessToken"

    .prologue
    .line 1307
    const-string v1, "ac2dm"

    const/4 v2, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtokenRaw(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 1311
    .local v1, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    .line 1313
    const-string v2, "SID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1314
    .local v4, sid:Ljava/lang/String;
    const-string v2, "LSID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1318
    .local v5, lsid:Ljava/lang/String;
    if-eqz v4, :cond_b8

    .line 1323
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->processTokenResponse(Ljava/util/Map;Z)V

    .line 1325
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1326
    .local v13, canonicalEmail:Ljava/lang/String;
    if-eqz v13, :cond_75

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    .line 1330
    iput-object v13, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    .line 1331
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    iput-object v2, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 1332
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-direct {v2, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    .line 1333
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    #getter for: Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->access$300(Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSUser;

    .line 1334
    .local v0, old:Lcom/google/android/gsf/loginservice/GLSUser;
    if-eqz v0, :cond_75

    .line 1338
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->setToken(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->updateSecret()V

    .line 1340
    const-string v2, "SID"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->successIntent(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Z)Landroid/content/Intent;

    .end local v4           #sid:Ljava/lang/String;
    .end local v5           #lsid:Ljava/lang/String;
    move-result-object v2

    .line 1363
    .end local v0           #old:Lcom/google/android/gsf/loginservice/GLSUser;
    .end local v13           #canonicalEmail:Ljava/lang/String;
    :goto_74
    return-object v2

    .line 1344
    .restart local v4       #sid:Ljava/lang/String;
    .restart local v5       #lsid:Ljava/lang/String;
    .restart local v13       #canonicalEmail:Ljava/lang/String;
    :cond_75
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    #getter for: Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountInfo:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->access$300(Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gsf/loginservice/GLSUser;->firstSave(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1349
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    .line 1350
    const-string v2, "useGoogleMail"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 1351
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GoogleMail;->switchToGoogleMail(Landroid/content/Context;)V

    .line 1353
    :cond_a6
    if-eqz p4, :cond_ab

    .line 1354
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->setBackupAccount()Z

    .line 1363
    .end local v13           #canonicalEmail:Ljava/lang/String;
    :cond_ab
    :goto_ab
    const/4 v8, 0x0

    const-string v9, "SID"

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, v1

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gsf/loginservice/GLSUser;->processResponse(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_74

    .line 1356
    :cond_b8
    if-eqz p3, :cond_ab

    .line 1361
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gsf/loginservice/GLSUser;->firstSave(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_ab
.end method

.method public addCreatedAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)V
    .registers 8
    .parameter "session"

    .prologue
    .line 1372
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;

    .line 1375
    iget-boolean v0, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v0, :cond_11

    .line 1376
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->setBackupAccount()Z

    .line 1378
    :cond_11
    return-void
.end method

.method public addWithRequestToken(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 11
    .parameter "session"
    .parameter "accessToken"
    .parameter "setupWizard"

    .prologue
    const/4 v0, 0x0

    .line 1381
    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 1382
    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1383
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1384
    .local v6, res:Landroid/content/Intent;
    return-object v6
.end method

.method public cacheToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "service"
    .parameter "uid"
    .parameter "token"
    .parameter "exp"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1250
    const-string v0, "weblogin:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1270
    :cond_a
    :goto_a
    return-void

    .line 1253
    :cond_b
    if-eqz p2, :cond_a

    .line 1256
    if-nez p4, :cond_23

    .line 1257
    const-string v0, "oauth2:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    .line 1265
    :cond_23
    :goto_23
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1260
    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    const-wide/32 v2, 0x127500

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    goto :goto_23
.end method

.method public checkGplus(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;
    .registers 10
    .parameter "session"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1630
    const-string v1, "LSID"

    move-object v0, p0

    move-object v3, p1

    move-object v6, v4

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtokenRaw(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 1631
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "LSID"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->processResponse(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lorg/json/JSONObject;
    .registers 9
    .parameter

    .prologue
    .line 1926
    :try_start_0
    new-instance v6, Lorg/json/JSONStringer;

    invoke-direct {v6}, Lorg/json/JSONStringer;-><init>()V

    .line 1927
    invoke-virtual {v6}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 1928
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->prepareRequest(Lorg/json/JSONStringer;)V

    .line 1934
    const-string v1, "LSID"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1935
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->getToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1936
    if-nez v0, :cond_23

    .line 1937
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->jsonError(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1958
    :goto_22
    return-object v0

    .line 1939
    :cond_23
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LSID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1941
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v6, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->copyFromProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;Ljava/lang/String;)V

    .line 1942
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v6, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->copyFromProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;Ljava/lang/String;)V

    .line 1943
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v6, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->copyFromProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;Ljava/lang/String;)V

    .line 1945
    iget-boolean v0, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-eqz v0, :cond_64

    .line 1946
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CREATED:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1949
    :cond_64
    invoke-static {p1, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->addPhoto(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Lorg/json/JSONStringer;)V

    .line 1951
    invoke-virtual {v6}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 1953
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    const-string v1, "https://android.clients.google.com/setup/createprofile"

    const-string v2, "createProfile"

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->httpJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8e} :catch_8f

    goto :goto_22

    .line 1957
    :catch_8f
    move-exception v0

    .line 1958
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->jsonError(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_22
.end method

.method public errorIntent(Ljava/util/Map;Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gsf/loginservice/GLSUser$Status;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2003
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    .line 2005
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2007
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    invoke-virtual {v2, v1, p5}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->addSession(Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    .line 2009
    iput p3, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    .line 2011
    const-string v3, "accountAuthenticatorResponse"

    iget-object v4, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2013
    const-string v3, "authAccount"

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2014
    const-string v3, "authTokenType"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2016
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2018
    const-string v3, "authFailedMessage"

    const v4, 0x7f080107

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2024
    if-eqz p1, :cond_a0

    .line 2025
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2026
    if-eqz v0, :cond_84

    .line 2027
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPermission:Ljava/util/ArrayList;

    .line 2029
    array-length v4, v3

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v4, :cond_84

    aget-object v5, v3, v0

    .line 2031
    :try_start_5c
    iget-object v6, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPermission:Ljava/util/ArrayList;

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5c .. :try_end_67} :catch_6a

    .line 2029
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 2032
    :catch_6a
    move-exception v6

    .line 2033
    const-string v6, "GLSUser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error decoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 2037
    :cond_84
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->DETAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    .line 2038
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUrl:Ljava/lang/String;

    .line 2040
    :cond_a0
    return-object v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountManager()Landroid/accounts/AccountManager;
    .registers 2

    .prologue
    .line 2566
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method getAppPackage(I)Ljava/lang/String;
    .registers 4
    .parameter "uid"

    .prologue
    .line 2444
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2445
    .local v0, packageInfo:[Ljava/lang/String;
    if-eqz v0, :cond_d

    array-length v1, v0

    if-nez v1, :cond_f

    .line 2446
    :cond_d
    const/4 v1, 0x0

    .line 2448
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e
.end method

.method public getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;
    .registers 12
    .parameter "service"
    .parameter "uid"
    .parameter "session"

    .prologue
    .line 1585
    iget-object v4, p3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 1586
    .local v4, loginOptions:Landroid/os/Bundle;
    if-nez p2, :cond_18

    .line 1588
    const-string v0, "pendingIntent"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 1589
    .local v7, pi:Landroid/app/PendingIntent;
    if-eqz v7, :cond_18

    .line 1590
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    .line 1591
    .local v6, appPackage:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->getUid(Ljava/lang/String;)I

    move-result p2

    .line 1592
    iput p2, p3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    .line 1598
    .end local v6           #appPackage:Ljava/lang/String;
    .end local v7           #pi:Landroid/app/PendingIntent;
    :cond_18
    if-nez p2, :cond_24

    const/4 v5, 0x1

    .local v5, storedPermission:Z
    :goto_1b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1600
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1598
    .end local v5           #storedPermission:Z
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    goto :goto_1b
.end method

.method getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;Z)Landroid/content/Intent;
    .registers 19
    .parameter "service"
    .parameter "uid"
    .parameter "session"
    .parameter "loginOptions"
    .parameter "storedPermission"

    .prologue
    .line 1608
    if-nez p1, :cond_4

    .line 1609
    const-string p1, "ac2dm"

    .line 1612
    :cond_4
    if-eqz p5, :cond_26

    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->hasSecret()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1613
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->getCachedToken(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, token:Ljava/lang/String;
    if-eqz v4, :cond_26

    .line 1615
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->successIntent(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1625
    .end local v4           #token:Ljava/lang/String;
    :goto_25
    return-object v0

    .line 1620
    :cond_26
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtokenRaw(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    .local v6, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, p0

    move v7, p2

    move-object v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p3

    .line 1625
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gsf/loginservice/GLSUser;->processResponse(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_25
.end method

.method getCachedToken(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .parameter "service"
    .parameter "uid"

    .prologue
    const/4 v4, 0x0

    .line 1202
    if-nez p1, :cond_5

    move-object v1, v4

    .line 1236
    :cond_4
    :goto_4
    return-object v1

    .line 1205
    :cond_5
    if-nez p2, :cond_9

    move-object v1, v4

    .line 1206
    goto :goto_4

    .line 1208
    :cond_9
    const-string v5, "weblogin:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object v1, v4

    .line 1209
    goto :goto_4

    .line 1211
    :cond_13
    const-string v5, "oauth2:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1213
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oauth2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1220
    :cond_3d
    sget-object v5, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v5, v6, p1}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, token:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1224
    sget-object v5, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v6, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, exp:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1227
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1228
    .local v2, ts:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    cmp-long v5, v2, v5

    if-gez v5, :cond_4

    .line 1229
    sget-object v5, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1232
    goto :goto_4
.end method

.method getCaptchaData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2505
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2507
    :goto_9
    const-string v0, "GLSUser"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2508
    const-string v0, "GLSUser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captcha url is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_2f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gsf/login/Compat;->trafficStatsSetThreadStatsTag(I)V

    .line 2513
    :try_start_33
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2514
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2515
    const-string v1, "GLSUser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2516
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap response is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_65
    const-string v1, "X-Google-Captcha-Error"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 2521
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_76
    .catchall {:try_start_33 .. :try_end_76} :catchall_ce
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_76} :catch_c0

    .line 2536
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->trafficStatsClearThreadStatsTag()V

    .line 2538
    :goto_79
    return-void

    .line 2505
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.google.com/accounts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_9

    .line 2524
    :cond_8f
    :try_start_8f
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 2525
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2529
    iget-object v1, p4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2532
    iget-object v1, p4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_BITMAP:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bc
    .catchall {:try_start_8f .. :try_end_bc} :catchall_ce
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_bc} :catch_c0

    .line 2536
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->trafficStatsClearThreadStatsTag()V

    goto :goto_79

    .line 2533
    :catch_c0
    move-exception v0

    .line 2534
    :try_start_c1
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_ce

    .line 2536
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->trafficStatsClearThreadStatsTag()V

    goto :goto_79

    :catchall_ce
    move-exception v0

    invoke-static {}, Lcom/google/android/gsf/login/Compat;->trafficStatsClearThreadStatsTag()V

    throw v0
.end method

.method getSignatureFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 2462
    :try_start_1
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2463
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_d

    .line 2476
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_c
    :goto_c
    return-object v3

    .line 2466
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_d
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2468
    .local v2, pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_c

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_c

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-eqz v4, :cond_c

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-eqz v4, :cond_c

    .line 2472
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/google/android/gsf/loginservice/GLSUser;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_31} :catch_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_31} :catch_35

    move-result-object v3

    goto :goto_c

    .line 2473
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :catch_33
    move-exception v1

    .line 2474
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_c

    .line 2475
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_35
    move-exception v1

    .line 2476
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_c
.end method

.method getStoredPermission(Ljava/lang/String;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2355
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perm."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2357
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getToken(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "intent"

    .prologue
    .line 1519
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUid(Ljava/lang/String;)I
    .registers 7
    .parameter "appPackage"

    .prologue
    const/4 v2, 0x0

    .line 2427
    if-nez p1, :cond_4

    .line 2435
    :goto_3
    return v2

    .line 2431
    :cond_4
    :try_start_4
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mPM:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2433
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_3

    .line 2434
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_13
    move-exception v0

    .line 2435
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 12
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 2366
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v8, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    sget-object v9, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v9}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2368
    .local v1, accountServices:Ljava/lang/String;
    if-nez v1, :cond_14

    .line 2377
    :cond_13
    :goto_13
    return v6

    .line 2371
    :cond_14
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2372
    .local v2, accountServicesArray:[Ljava/lang/String;
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1d
    if-ge v4, v5, :cond_13

    aget-object v0, v3, v4

    .line 2373
    .local v0, accountService:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 2374
    const/4 v6, 0x1

    goto :goto_13

    .line 2372
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d
.end method

.method public isBrowser()Z
    .registers 2

    .prologue
    .line 1507
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUseBrowserFlow:Z

    return v0
.end method

.method public prepareRequest(Lorg/json/JSONStringer;)V
    .registers 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1886
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1888
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getAndroidIdHex()Ljava/lang/String;

    move-result-object v0

    .line 1889
    .local v0, androidIdHex:Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 1890
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1894
    :cond_25
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 1896
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1897
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1898
    iput-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    .line 1899
    iput-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    .line 1902
    :cond_57
    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUseBrowserFlow:Z

    if-eqz v2, :cond_6a

    .line 1903
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->BROWSER_FLOW:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1907
    :cond_6a
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_country"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1910
    .local v1, countryCode:Ljava/lang/String;
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1911
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1912
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 1913
    return-void
.end method

.method public declared-synchronized removeSession(Ljava/lang/String;)V
    .registers 3
    .parameter "mSessionId"

    .prologue
    .line 2544
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 2545
    monitor-exit p0

    return-void

    .line 2544
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resetPassword()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2213
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2217
    :cond_15
    iput-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 2218
    iput-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 2219
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 2220
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v2, "sha1hash"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    :cond_31
    return-void
.end method

.method public setBackupAccount()Z
    .registers 5

    .prologue
    .line 1418
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.backup.SetBackupAccount"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "backupAccount"

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1421
    :try_start_e
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_15} :catch_17

    .line 1422
    const/4 v2, 0x1

    .line 1425
    :goto_16
    return v2

    .line 1423
    :catch_17
    move-exception v0

    .line 1424
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not enable backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->log(Ljava/lang/String;)V

    .line 1425
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public setCaptcha(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "token"
    .parameter "answer"

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaToken:Ljava/lang/String;

    .line 1745
    iput-object p2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->captchaAnswer:Ljava/lang/String;

    .line 1746
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 4
    .parameter "password"

    .prologue
    .line 1279
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->encryptPassword(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEmail:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/PasswordEncrypter;->hashPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mHash:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUpdatedPassword:Ljava/lang/String;

    .line 1283
    return-void
.end method

.method setStoredPermission(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2384
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perm."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1288
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mUpdatedPassword:Ljava/lang/String;

    .line 1289
    return-void
.end method

.method public updateSecret()V
    .registers 5

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1490
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1498
    :cond_f
    :goto_f
    return-void

    .line 1492
    :cond_10
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mHash:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1494
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser;->sGLSContext:Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mAccount:Landroid/accounts/Account;

    const-string v2, "sha1hash"

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mHash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public updateWithRequestToken(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 13
    .parameter "session"
    .parameter "accessToken"
    .parameter "existingUser"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1395
    iput-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mMasterToken:Ljava/lang/String;

    .line 1396
    iput-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser;->mEncryptedPassword:Ljava/lang/String;

    .line 1397
    const-string v1, "ac2dm"

    if-nez p3, :cond_27

    move v7, v5

    :goto_c
    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtokenRaw(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Bundle;ZLjava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 1402
    .local v1, tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v4, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    .line 1403
    const-string v3, "ac2dm"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/loginservice/GLSUser;->processResponse(Ljava/util/Map;ILjava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v8

    .line 1406
    .local v8, res:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/loginservice/GLSUser;->getToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1407
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->updateSecret()V

    .line 1409
    :cond_26
    return-object v8

    .end local v1           #tokens:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #res:Landroid/content/Intent;
    :cond_27
    move v7, v2

    .line 1397
    goto :goto_c
.end method
