.class public Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
.super Ljava/lang/Object;
.source "UinboxAccountManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;,
        Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field private static isCombined:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private accounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 27
    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->isCombined:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    .line 42
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->accounts:Ljava/util/HashMap;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    .line 73
    const-string v0, "UinboxAccountManager"

    const-string v1, "UinboxAccountManager()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intance is created - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    .registers 4
    .parameter

    .prologue
    .line 52
    const-class v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    monitor-enter v1

    .line 54
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-nez v0, :cond_1f

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-direct {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 58
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->initAllAccount()V

    .line 59
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->setCombinedEmail(Z)V

    .line 61
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_23

    .line 63
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->instance:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    return-object v0

    .line 61
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V
    .registers 4
    .parameter "key"
    .parameter "account"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->accounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->accounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_d
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->unregisterAllObserver()V

    .line 287
    :cond_9
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    .line 289
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 291
    :cond_16
    return-void
.end method

.method public getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .registers 3
    .parameter "key"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->accounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->accounts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAccountByType(I)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .registers 4
    .parameter "appType"

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    sparse-switch p1, :sswitch_data_22

    .line 238
    :goto_4
    return-object v0

    .line 221
    :sswitch_5
    const-string v1, "1_Messaging"

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 222
    goto :goto_4

    .line 226
    :sswitch_c
    const-string v1, "2_Email"

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 227
    goto :goto_4

    .line 230
    :sswitch_13
    const-string v1, "4_SevenIM"

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 231
    goto :goto_4

    .line 234
    :sswitch_1a
    const-string v1, "5_SNS"

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    goto :goto_4

    .line 216
    nop

    :sswitch_data_22
    .sparse-switch
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_5
        0x136 -> :sswitch_5
        0x190 -> :sswitch_c
        0x19a -> :sswitch_c
        0x258 -> :sswitch_1a
        0x2bc -> :sswitch_13
    .end sparse-switch
.end method

.method public getAccountCount()I
    .registers 9

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, iCount:I
    const-string v4, "2_Email"

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 174
    .local v0, email:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    const-string v4, "4_SevenIM"

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    .line 175
    .local v2, seven_im:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    const-string v4, "5_SNS"

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v3

    .line 177
    .local v3, sns:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v4

    add-int/2addr v1, v4

    const-string v4, "UinboxAccountManager"

    const-string v5, "getAccountCount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "email = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_38
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v4

    add-int/2addr v1, v4

    const-string v4, "UinboxAccountManager"

    const-string v5, "getAccountCount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "seven_im = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_5d
    if-eqz v3, :cond_82

    invoke-virtual {v3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v4

    add-int/2addr v1, v4

    const-string v4, "UinboxAccountManager"

    const-string v5, "getAccountCount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sns = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_82
    const/4 v0, 0x0

    .line 184
    const/4 v2, 0x0

    .line 185
    const/4 v3, 0x0

    .line 187
    return v1
.end method

.method public getSnsAccountCount()I
    .registers 7

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, iCount:I
    const-string v2, "5_SNS"

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    .line 195
    .local v1, sns:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v2

    add-int/2addr v0, v2

    const-string v2, "UinboxAccountManager"

    const-string v3, "getAccountCount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sns = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getNumberOfAccount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2c
    const/4 v1, 0x0

    .line 199
    return v0
.end method

.method public declared-synchronized initAllAccount()V
    .registers 7

    .prologue
    .line 102
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->setCombinedEmail(Z)V

    .line 104
    const-string v2, "4_SevenIM"

    new-instance v3, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->addAccount(Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    .line 105
    const-string v2, "3_SevenEmail"

    new-instance v3, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->addAccount(Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    .line 106
    const-string v2, "2_Email"

    new-instance v3, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->addAccount(Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    .line 107
    const-string v2, "5_SNS"

    new-instance v3, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->addAccount(Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    .line 109
    const-string v2, "2_Email"

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 111
    .local v0, email:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/socialhub/util/WifiUtil;->isWifiModel(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 113
    const-string v2, "1_Messaging"

    new-instance v3, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->addAccount(Ljava/lang/String;Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V

    .line 114
    const-string v2, "1_Messaging"

    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    .line 115
    .local v1, sms:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->runUpdateEmailTask()V

    .line 118
    .end local v1           #sms:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :cond_62
    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->runUpdateEmailTask()V
    :try_end_65
    .catchall {:try_start_2 .. :try_end_65} :catchall_68

    .line 120
    const/4 v0, 0x0

    .line 121
    monitor-exit p0

    return-void

    .line 102
    .end local v0           #email:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isCombinedEmail()Z
    .registers 2

    .prologue
    .line 125
    sget-boolean v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->isCombined:Z

    return v0
.end method

.method public notifyChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    monitor-enter v1

    .line 96
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->notifyChanged(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;)V

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public registerAccountObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    monitor-enter v1

    .line 80
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->registerObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setCombinedEmail(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 130
    sput-boolean p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->isCombined:Z

    .line 131
    return-void
.end method

.method public unregisterAccountObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    monitor-enter v1

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->mObserver:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountObserver;->unregisterObserver(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$ISocialHubAccountChangeListener;)V

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
