.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$DeleteSdCardData;,
        Lcom/android/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SECURITY_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

.field static final NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

.field public static final PASSWORD_POLICIES:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

.field private mContext:Landroid/content/Context;

.field private mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;


# direct methods
.method static constructor <clinit>()V
    .registers 37

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 177
    new-instance v0, Lcom/android/emailcommon/service/PolicySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-direct/range {v0 .. v36}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    .line 191
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PasswordMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PasswordRecoveryEnabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MaxDevicePasswordFailedAttempts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AllowSimpleDevicePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DevicePasswordExpiration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DevicePasswordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MinDevicePasswordLength"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MinPasswordComplexCharacters"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_FLAG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 272
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    .line 273
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 274
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    .line 277
    invoke-static {p1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    .line 278
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 279
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 282
    :cond_2e
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/SecurityPolicy;)Landroid/content/ComponentName;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/SecurityPolicy;)Lcom/android/emailcommon/variant/DPMWraper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    return-object v0
.end method

.method private static clearPasswordExpiredFlag(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1414
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1418
    :try_start_5
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_81

    move-result-object v1

    .line 1420
    :cond_10
    :goto_10
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1421
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1422
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1423
    and-int/lit16 v5, v4, 0x4000

    if-eqz v5, :cond_10

    .line 1424
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1425
    const-string v6, "flags"

    and-int/lit16 v4, v4, -0x4001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1426
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1427
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3f} :catch_40

    goto :goto_10

    .line 1430
    :catch_40
    move-exception v0

    .line 1431
    :goto_41
    :try_start_41
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPasswordExpiredFlag exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_7f

    .line 1433
    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1436
    :cond_64
    :goto_64
    return-void

    .line 1433
    :cond_65
    if-eqz v1, :cond_64

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_64

    .line 1433
    :catchall_71
    move-exception v0

    move-object v1, v6

    :goto_73
    if-eqz v1, :cond_7e

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 1434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v0

    .line 1433
    :catchall_7f
    move-exception v0

    goto :goto_73

    .line 1430
    :catch_81
    move-exception v0

    move-object v1, v6

    goto :goto_41
.end method

.method public static exchangeAccountsExist()Z
    .registers 12

    .prologue
    const/4 v11, 0x0

    .line 976
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 977
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_9

    move v0, v11

    .line 998
    :cond_8
    :goto_8
    return v0

    .line 979
    :cond_9
    const/4 v6, 0x0

    .line 982
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_63

    move-result-object v6

    .line 984
    if-nez v6, :cond_28

    .line 997
    if-eqz v6, :cond_26

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_26

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_26
    move v0, v11

    goto :goto_8

    .line 986
    :cond_28
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 987
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 988
    .local v9, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_28

    .line 989
    invoke-static {v7, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 990
    .local v8, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v8, :cond_28

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_63

    move-result v0

    if-eqz v0, :cond_28

    .line 991
    const/4 v0, 0x1

    .line 997
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 997
    .end local v8           #ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v9           #hostAuthId:J
    :cond_56
    if-eqz v6, :cond_61

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_61

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_61
    move v0, v11

    goto :goto_8

    .line 997
    :catchall_63
    move-exception v0

    if-eqz v6, :cond_6f

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6f
    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 298
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    goto :goto_5
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .registers 4
    .parameter "context"

    .prologue
    .line 261
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_12

    .line 262
    new-instance v0, Lcom/android/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 264
    :cond_12
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 261
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1373
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 1374
    packed-switch p1, :pswitch_data_50

    .line 1411
    :cond_8
    :goto_8
    return-void

    .line 1376
    :pswitch_9
    invoke-virtual {v0, v5}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_8

    .line 1382
    :pswitch_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_8

    .line 1387
    :pswitch_12
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->clearPasswordExpiredFlag(Landroid/content/Context;)V

    .line 1388
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 1390
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1391
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-static {p0}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/variant/DPMWraper;->checkPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1397
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 1398
    invoke-static {v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->sendRecoveryPassword()V

    .line 1403
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    .line 1404
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    .line 1405
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    goto :goto_8

    .line 1408
    :pswitch_49
    iget-object v1, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_8

    .line 1374
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_9
        :pswitch_d
        :pswitch_12
        :pswitch_49
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .registers 23
    .parameter "context"

    .prologue
    .line 1239
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v13

    .line 1242
    .local v13, nextExpiringAccountId:J
    const-wide/16 v18, -0x1

    cmp-long v8, v13, v18

    if-nez v8, :cond_b

    .line 1296
    :cond_a
    :goto_a
    return-void

    .line 1247
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v10

    .line 1248
    .local v10, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v15, v10, v18

    .line 1249
    .local v15, timeUntilExpiration:J
    const-wide/16 v18, 0x0

    cmp-long v8, v15, v18

    if-gez v8, :cond_6e

    const/4 v12, 0x1

    .line 1250
    .local v12, expired:Z
    :goto_28
    if-nez v12, :cond_70

    .line 1254
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 1255
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_a

    .line 1257
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 1259
    .local v7, intent:Landroid/content/Intent;
    const v8, 0x7f080127

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1262
    .local v4, ticker:Ljava/lang/String;
    const v8, 0x7f080128

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1264
    .local v5, contentTitle:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1265
    .local v6, contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    .line 1266
    .local v2, nc:Lcom/android/email/NotificationController;
    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_a

    .line 1249
    .end local v2           #nc:Lcom/android/email/NotificationController;
    .end local v3           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #ticker:Ljava/lang/String;
    .end local v5           #contentTitle:Ljava/lang/String;
    .end local v6           #contentText:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v12           #expired:Z
    :cond_6e
    const/4 v12, 0x0

    goto :goto_28

    .line 1271
    .restart local v12       #expired:Z
    :cond_70
    invoke-static/range {p1 .. p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z

    move-result v17

    .line 1272
    .local v17, wiped:Z
    if-eqz v17, :cond_a

    .line 1274
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 1275
    .restart local v3       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_a

    .line 1280
    iget v8, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1281
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1282
    .local v9, cv:Landroid/content/ContentValues;
    const-string v8, "flags"

    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1285
    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 1287
    .restart local v7       #intent:Landroid/content/Intent;
    const v8, 0x7f08012a

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1288
    .restart local v4       #ticker:Ljava/lang/String;
    const v8, 0x7f08012b

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1290
    .restart local v5       #contentTitle:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1291
    .restart local v6       #contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    .line 1292
    .restart local v2       #nc:Lcom/android/email/NotificationController;
    const/4 v8, 0x5

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto/16 :goto_a
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .registers 5
    .parameter "context"
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 1075
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1076
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_9

    .line 1077
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1079
    :cond_9
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 1091
    if-eqz p2, :cond_1c

    .line 1092
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1096
    :goto_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1099
    return-void

    .line 1094
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_1c
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_8
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z
    .registers 14
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 1340
    const/4 v11, 0x0

    .line 1341
    .local v11, result:Z
    const/4 v9, 0x0

    .line 1343
    .local v9, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1345
    :cond_11
    :goto_11
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1346
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1347
    .local v7, accountId:J
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v10

    .line 1348
    .local v10, ps:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v10, :cond_11

    iget v0, v10, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v0, :cond_11

    .line 1349
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 1350
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v6, :cond_11

    .line 1352
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1354
    invoke-virtual {p1, v7, v8}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_49

    .line 1356
    const/4 v11, 0x1

    goto :goto_11

    .line 1361
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v7           #accountId:J
    .end local v10           #ps:Lcom/android/emailcommon/service/PolicySet;
    :cond_3d
    if-eqz v9, :cond_48

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1362
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1364
    :cond_48
    return v11

    .line 1361
    :catchall_49
    move-exception v0

    if-eqz v9, :cond_55

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_55

    .line 1362
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_55
    throw v0
.end method


# virtual methods
.method public IsAllowPOPIMAPEmailSetted()Z
    .registers 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 970
    const/4 v0, 0x1

    .line 972
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clearNotification(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    .line 1139
    return-void
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .registers 40
    .parameter "policies"

    .prologue
    .line 657
    move-object/from16 v1, p1

    .line 663
    .local v1, result:Lcom/android/emailcommon/service/PolicySet;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v2, :cond_d7

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/variant/DEMWraper;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_d7

    .line 666
    new-instance v1, Lcom/android/emailcommon/service/PolicySet;

    .end local v1           #result:Lcom/android/emailcommon/service/PolicySet;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    move/from16 v37, v0

    invoke-direct/range {v1 .. v37}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    .line 689
    .restart local v1       #result:Lcom/android/emailcommon/service/PolicySet;
    :cond_d7
    return-object v1
.end method

.method computeAggregatePolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;
    .registers 47
    .parameter "accountId"

    .prologue
    .line 335
    const/16 v43, 0x0

    .line 337
    .local v43, policiesFound:Z
    const/high16 v3, -0x8000

    .line 338
    .local v3, minPasswordLength:I
    const/high16 v4, -0x8000

    .line 339
    .local v4, passwordMode:I
    const v5, 0x7fffffff

    .line 340
    .local v5, maxPasswordFails:I
    const v6, 0x7fffffff

    .line 341
    .local v6, maxScreenLockTime:I
    const/4 v7, 0x0

    .line 342
    .local v7, requireRemoteWipe:Z
    const/high16 v10, -0x8000

    .line 343
    .local v10, passwordHistory:I
    const v9, 0x7fffffff

    .line 344
    .local v9, passwordExpirationDays:I
    const/high16 v23, -0x8000

    .line 345
    .local v23, passwordComplexChars:I
    const/16 v36, 0x0

    .line 346
    .local v36, requireEncryption:Z
    const/16 v37, 0x0

    .line 349
    .local v37, deviceEncryptionEnabled:Z
    const/4 v8, 0x0

    .line 351
    .local v8, passwordRecoverable:Z
    const/4 v11, 0x1

    .line 353
    .local v11, attachmentsEnabled:Z
    const/16 v38, 0x1

    .line 354
    .local v38, simplePasswordEnabled:Z
    const v12, 0x7fffffff

    .line 356
    .local v12, maxAttachmentSize:I
    const/4 v13, 0x1

    .line 357
    .local v13, allowStorageCard:Z
    const/4 v14, 0x1

    .line 358
    .local v14, allowCamera:Z
    const/4 v15, 0x1

    .line 359
    .local v15, allowWifi:Z
    const/16 v16, 0x1

    .line 360
    .local v16, allowTextMessaging:Z
    const/16 v17, 0x1

    .line 361
    .local v17, allowPOPIMAPEmail:Z
    const/16 v18, 0x1

    .line 362
    .local v18, allowHTMLEmail:Z
    const/16 v19, 0x1

    .line 363
    .local v19, allowBrowser:Z
    const/16 v20, 0x1

    .line 364
    .local v20, allowInternetSharing:Z
    const/16 v21, 0x0

    .line 365
    .local v21, requireManualSyncWhenRoaming:Z
    const/16 v22, 0x2

    .line 368
    .local v22, allowBluetoothMode:I
    const/16 v24, 0x0

    .line 369
    .local v24, maxCalendarAgeFilter:I
    const/16 v25, 0x0

    .line 370
    .local v25, maxEmailAgeFilter:I
    const v26, 0x7fffffff

    .line 374
    .local v26, maxEmailBodyTruncationSize:I
    const v27, 0x7fffffff

    .line 379
    .local v27, maxEmailHtmlBodyTruncationSize:I
    const/16 v28, 0x0

    .line 380
    .local v28, requireSignedSMIMEMessages:Z
    const/16 v29, 0x0

    .line 381
    .local v29, requireEncryptedSMIMEMessages:Z
    const/16 v30, -0x1

    .line 382
    .local v30, requireSignedSMIMEAlgorithm:I
    const/16 v31, -0x1

    .line 383
    .local v31, requireEncryptionSMIMEAlgorithm:I
    const/16 v32, -0x1

    .line 384
    .local v32, allowSMIMEEncryptionAlgorithmNegotiation:I
    const/16 v33, 0x1

    .line 385
    .local v33, allowSMIMESoftCerts:Z
    const/16 v34, 0x1

    .line 386
    .local v34, allowDesktopSync:Z
    const/16 v35, 0x1

    .line 388
    .local v35, allowIrDA:Z
    new-instance v42, Lcom/android/email/PoliciesMultiplexer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-direct {v0, v2}, Lcom/android/email/PoliciesMultiplexer;-><init>(Landroid/content/Context;)V

    .line 389
    .local v42, pm:Lcom/android/email/PoliciesMultiplexer;
    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/PoliciesMultiplexer;->computeAggregatePolicy(Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v44

    .line 391
    .local v44, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v44, :cond_21b

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_21b

    .line 392
    const/16 v43, 0x1

    .line 394
    const/16 v41, 0x0

    .line 395
    .local v41, intValue:Ljava/lang/Integer;
    const/16 v39, 0x0

    .line 397
    .local v39, boolValue:Ljava/lang/Boolean;
    const-string v2, "PasswordMode"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_26b

    .line 399
    :goto_77
    const-string v2, "MinDevicePasswordLength"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_271

    .line 402
    :goto_83
    const-string v2, "MaxDevicePasswordFailedAttempts"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_277

    .line 405
    :goto_8f
    const-string v2, "MaxInactivityTime"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_27d

    .line 408
    :goto_9b
    const-string v2, "RemoteWipe"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_283

    .line 411
    :goto_a7
    const-string v2, "PasswordRecoveryEnabled"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_289

    .line 414
    :goto_b3
    const-string v2, "DevicePasswordExpiration"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_28f

    .line 417
    :goto_bf
    const-string v2, "DevicePasswordHistory"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_295

    .line 420
    :goto_cb
    const-string v2, "RequireDeviceEncryption"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_29b

    .line 423
    :goto_d7
    const-string v2, "DeviceEncryptionEnabled"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2a1

    .line 426
    :goto_e3
    const-string v2, "AttachmentsEnabled"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2a7

    .line 429
    :goto_ef
    const-string v2, "AllowSimpleDevicePassword"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2ad

    .line 432
    :goto_fb
    const-string v2, "MaxAttachmentSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2b3

    .line 436
    :goto_107
    const-string v2, "AllowStorageCard"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2b9

    .line 439
    :goto_113
    const-string v2, "AllowCamera"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2bf

    .line 441
    :goto_11f
    const-string v2, "AllowWifi"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2c5

    .line 443
    :goto_12b
    const-string v2, "AllowTextMessaging"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2cb

    .line 446
    :goto_137
    const-string v2, "AllowPOPIMAPEmail"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2d1

    .line 449
    :goto_143
    const-string v2, "AllowHTMLEmail"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2d7

    .line 452
    :goto_14f
    const-string v2, "AllowBrowser"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2dd

    .line 454
    :goto_15b
    const-string v2, "AllowInternetSharing"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2e3

    .line 457
    :goto_167
    const-string v2, "RequireManualSyncWhenRoaming"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2e9

    .line 460
    :goto_173
    const-string v2, "AllowBluetoothMode"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2ef

    .line 463
    :goto_17f
    const-string v2, "MinPasswordComplexCharacters"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2f5

    .line 466
    :goto_18b
    const-string v2, "MaxCalendarAgeFilter"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2fb

    .line 469
    :goto_197
    const-string v2, "MaxEmailAgeFilter"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_301

    .line 472
    :goto_1a3
    const-string v2, "MaxEmailBodyTruncationSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_307

    .line 475
    :goto_1af
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_30d

    .line 478
    :goto_1bb
    const-string v2, "RequireSignedSMIMEMessages"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_313

    .line 481
    :goto_1c7
    const-string v2, "RequireEncryptedSMIMEMessages"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_319

    .line 485
    :goto_1d3
    const-string v2, "RequireSignedSMIMEAlgorithm"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_31f

    .line 488
    :goto_1df
    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_325

    .line 491
    :goto_1eb
    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_32b

    .line 495
    :goto_1f7
    const-string v2, "AllowSMIMESoftCerts"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_331

    .line 498
    :goto_203
    const-string v2, "AllowDesktopSync"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_337

    .line 501
    :goto_20f
    const-string v2, "AllowIrDA"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_33d

    .line 505
    .end local v39           #boolValue:Ljava/lang/Boolean;
    .end local v41           #intValue:Ljava/lang/Integer;
    :cond_21b
    :goto_21b
    const/16 v40, 0x0

    .line 544
    .local v40, c:Landroid/database/Cursor;
    if-eqz v43, :cond_343

    .line 547
    const/high16 v2, -0x8000

    if-ne v3, v2, :cond_224

    .line 548
    const/4 v3, 0x0

    .line 549
    :cond_224
    const/high16 v2, -0x8000

    if-ne v4, v2, :cond_229

    .line 550
    const/4 v4, 0x0

    .line 551
    :cond_229
    const v2, 0x7fffffff

    if-ne v5, v2, :cond_22f

    .line 552
    const/4 v5, 0x0

    .line 553
    :cond_22f
    const v2, 0x7fffffff

    if-ne v6, v2, :cond_235

    .line 554
    const/4 v6, 0x0

    .line 556
    :cond_235
    const v2, 0x7fffffff

    if-ne v12, v2, :cond_23b

    .line 557
    const/4 v12, 0x0

    .line 558
    :cond_23b
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_244

    const/high16 v2, -0x8000

    if-ne v9, v2, :cond_245

    .line 560
    :cond_244
    const/4 v9, 0x0

    .line 561
    :cond_245
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_24e

    const/high16 v2, -0x8000

    if-ne v10, v2, :cond_24f

    .line 562
    :cond_24e
    const/4 v10, 0x0

    .line 564
    :cond_24f
    const v2, 0x7fffffff

    move/from16 v0, v26

    if-eq v0, v2, :cond_258

    if-gez v26, :cond_25a

    .line 565
    :cond_258
    const/16 v26, 0x0

    .line 566
    :cond_25a
    const v2, 0x7fffffff

    move/from16 v0, v27

    if-eq v0, v2, :cond_263

    if-gez v27, :cond_265

    .line 568
    :cond_263
    const/16 v27, 0x0

    .line 573
    :cond_265
    new-instance v2, Lcom/android/emailcommon/service/PolicySet;

    invoke-direct/range {v2 .. v38}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    .line 587
    :goto_26a
    return-object v2

    .line 397
    .end local v40           #c:Landroid/database/Cursor;
    .restart local v39       #boolValue:Ljava/lang/Boolean;
    .restart local v41       #intValue:Ljava/lang/Integer;
    :cond_26b
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_77

    .line 399
    :cond_271
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_83

    .line 402
    :cond_277
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_8f

    .line 405
    :cond_27d
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_9b

    .line 408
    :cond_283
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_a7

    .line 411
    :cond_289
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto/16 :goto_b3

    .line 414
    :cond_28f
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_bf

    .line 417
    :cond_295
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_cb

    .line 420
    :cond_29b
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    goto/16 :goto_d7

    .line 423
    :cond_2a1
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    goto/16 :goto_e3

    .line 426
    :cond_2a7
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto/16 :goto_ef

    .line 429
    :cond_2ad
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    goto/16 :goto_fb

    .line 432
    :cond_2b3
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto/16 :goto_107

    .line 436
    :cond_2b9
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_113

    .line 439
    :cond_2bf
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto/16 :goto_11f

    .line 441
    :cond_2c5
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto/16 :goto_12b

    .line 443
    :cond_2cb
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto/16 :goto_137

    .line 446
    :cond_2d1
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    goto/16 :goto_143

    .line 449
    :cond_2d7
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    goto/16 :goto_14f

    .line 452
    :cond_2dd
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto/16 :goto_15b

    .line 454
    :cond_2e3
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    goto/16 :goto_167

    .line 457
    :cond_2e9
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    goto/16 :goto_173

    .line 460
    :cond_2ef
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_17f

    .line 463
    :cond_2f5
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto/16 :goto_18b

    .line 466
    :cond_2fb
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto/16 :goto_197

    .line 469
    :cond_301
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto/16 :goto_1a3

    .line 472
    :cond_307
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v26

    goto/16 :goto_1af

    .line 475
    :cond_30d
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v27

    goto/16 :goto_1bb

    .line 478
    :cond_313
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto/16 :goto_1c7

    .line 481
    :cond_319
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    goto/16 :goto_1d3

    .line 485
    :cond_31f
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_1df

    .line 488
    :cond_325
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_1eb

    .line 491
    :cond_32b
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v32

    goto/16 :goto_1f7

    .line 495
    :cond_331
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    goto/16 :goto_203

    .line 498
    :cond_337
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    goto/16 :goto_20f

    .line 501
    :cond_33d
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    goto/16 :goto_21b

    .line 587
    .end local v39           #boolValue:Ljava/lang/Boolean;
    .end local v41           #intValue:Ljava/lang/Integer;
    .restart local v40       #c:Landroid/database/Cursor;
    :cond_343
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    goto/16 :goto_26a
.end method

.method public deleteSdCardFiles(Ljava/io/File;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x1

    .line 1528
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1558
    :cond_9
    :goto_9
    return v1

    .line 1531
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1532
    if-eqz v4, :cond_9

    .line 1536
    const-string v5, "sdcard"

    move v0, v1

    move v2, v3

    .line 1538
    :goto_14
    array-length v6, v4

    if-ge v0, v6, :cond_d5

    .line 1539
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1541
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1542
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    aget-object v7, v6, v9

    const-string v8, "apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    :cond_35
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    aget-object v7, v6, v9

    const-string v8, "SamsungDic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    :cond_47
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    aget-object v7, v6, v9

    const-string v8, "ReadersHub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    :cond_59
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    aget-object v7, v6, v9

    const-string v8, "Tmap3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    :cond_6b
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    aget-object v7, v6, v9

    const-string v8, ".version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f

    :cond_7d
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    aget-object v6, v6, v9

    const-string v7, ".filesize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 1548
    :cond_8f
    const-string v6, "FactoryResetEmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :goto_ad
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14

    .line 1550
    :cond_b1
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 1551
    if-eqz v2, :cond_c5

    aget-object v2, v4, v0

    invoke-virtual {p0, v2}, Lcom/android/email/SecurityPolicy;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_c5

    move v2, v3

    goto :goto_ad

    :cond_c5
    move v2, v1

    goto :goto_ad

    .line 1553
    :cond_c7
    if-eqz v2, :cond_d3

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_d3

    move v2, v3

    goto :goto_ad

    :cond_d3
    move v2, v1

    goto :goto_ad

    .line 1557
    :cond_d5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move v1, v2

    .line 1558
    goto/16 :goto_9
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 1198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1200
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1202
    .local v6, c:Landroid/database/Cursor;
    :try_start_5
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "securityFlags!=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1204
    const-string v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secured account(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1207
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    goto :goto_33

    .line 1211
    :catchall_46
    move-exception v1

    if-eqz v6, :cond_52

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_52

    .line 1212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v1

    .line 1211
    :cond_53
    if-eqz v6, :cond_5e

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1212
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1214
    :cond_5e
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 1215
    return-void
.end method

.method findShortestExpiration(Landroid/content/Context;)J
    .registers 13
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1305
    const-wide/16 v9, -0x1

    .line 1306
    const-wide v7, 0x7fffffffffffffffL

    .line 1309
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const-string v3, "securitySyncKey IS NOT NULL AND securitySyncKey!=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_54

    move-result-object v6

    move-wide v0, v7

    move-wide v4, v9

    .line 1311
    :goto_1a
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1312
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1313
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1314
    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_65

    .line 1315
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v7

    .line 1317
    iget v8, v7, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v8, :cond_65

    iget v8, v7, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v8, v8

    cmp-long v8, v8, v0

    if-gez v8, :cond_65

    .line 1320
    iget v0, v7, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_62

    int-to-long v0, v0

    :goto_46
    move-wide v4, v2

    .line 1323
    goto :goto_1a

    .line 1325
    :cond_48
    if-eqz v6, :cond_53

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1328
    :cond_53
    return-wide v4

    .line 1325
    :catchall_54
    move-exception v0

    move-object v1, v6

    :goto_56
    if-eqz v1, :cond_61

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_61

    .line 1326
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v0

    .line 1325
    :catchall_62
    move-exception v0

    move-object v1, v6

    goto :goto_56

    :cond_65
    move-wide v2, v4

    goto :goto_46
.end method

.method public declared-synchronized getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;
    .registers 3
    .parameter "accountId"

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
    .registers 4

    .prologue
    .line 595
    monitor-enter p0

    const-wide/16 v1, -0x1

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 596
    .local v0, tmpAccountId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    if-nez v1, :cond_11

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    .line 599
    :cond_11
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v1

    .line 595
    .end local v0           #tmpAccountId:Ljava/lang/Long;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I
    .registers 15
    .parameter "policies"

    .prologue
    const/4 v8, 0x1

    .line 752
    if-nez p1, :cond_7

    .line 753
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object p1

    .line 757
    :cond_7
    sget-object v9, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    if-ne p1, v9, :cond_d

    .line 758
    const/4 v6, 0x0

    .line 964
    :cond_c
    :goto_c
    return v6

    .line 760
    :cond_d
    const/4 v6, 0x0

    .line 762
    .local v6, reasons:I
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v9

    if-eqz v9, :cond_558

    .line 764
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    if-lez v9, :cond_26

    .line 765
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v9

    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    if-ge v9, v10, :cond_26

    .line 766
    or-int/lit8 v6, v6, 0x4

    .line 769
    :cond_26
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    if-lez v9, :cond_44

    .line 770
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v9

    invoke-virtual {p1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordQuality()I

    move-result v10

    if-ge v9, v10, :cond_3a

    .line 772
    or-int/lit8 v6, v6, 0x4

    .line 774
    :cond_3a
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DPMWraper;->isActivePasswordSufficient()Z

    move-result v9

    if-nez v9, :cond_44

    .line 775
    or-int/lit8 v6, v6, 0x4

    .line 778
    :cond_44
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    if-lez v9, :cond_5b

    .line 780
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v9

    iget v11, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_5b

    .line 781
    or-int/lit8 v6, v6, 0x2

    .line 784
    :cond_5b
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v9, :cond_77

    .line 786
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 787
    .local v0, currentTimeout:J
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_75

    invoke-virtual {p1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v9

    cmp-long v9, v0, v9

    if-lez v9, :cond_77

    .line 789
    :cond_75
    or-int/lit8 v6, v6, 0x4

    .line 807
    .end local v0           #currentTimeout:J
    :cond_77
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    if-lez v9, :cond_89

    .line 808
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v9

    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    if-ge v9, v10, :cond_89

    .line 809
    or-int/lit8 v6, v6, 0x4

    .line 812
    :cond_89
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    if-lez v9, :cond_9b

    .line 813
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v9

    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    if-ge v9, v10, :cond_9b

    .line 814
    or-int/lit8 v6, v6, 0x4

    .line 817
    :cond_9b
    iget-boolean v9, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v9, :cond_b9

    .line 818
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DEMWraper;->isDeviceEncrypted()Z

    move-result v3

    .line 819
    .local v3, isEncrypted:Z
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DEMWraper;->isEncryptionSupported()Z

    move-result v2

    .line 821
    .local v2, isEncryptSupported:Z
    if-nez v3, :cond_b9

    if-ne v2, v8, :cond_b9

    .line 822
    or-int/lit8 v6, v6, 0x8

    .line 825
    .end local v2           #isEncryptSupported:Z
    .end local v3           #isEncrypted:Z
    :cond_b9
    iget-boolean v9, p1, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    if-eqz v9, :cond_d5

    .line 826
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DEMWraper;->checkSDStatus()I

    move-result v7

    .line 827
    .local v7, statusSD:I
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_d3

    if-ne v7, v8, :cond_548

    .line 828
    :cond_d3
    or-int/lit8 v6, v6, 0x2

    .line 835
    .end local v7           #statusSD:I
    :cond_d5
    :goto_d5
    new-instance v4, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v4}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 836
    .local v4, ps:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    new-instance v5, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 839
    .local v5, psAnother:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    const-string v8, "MaxDevicePasswordFailedAttempts"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 840
    const-string v8, "Integer"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 841
    iget v8, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 842
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 844
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_13b

    .line 845
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    or-int/lit8 v6, v6, 0x2

    .line 850
    :cond_13b
    const-string v8, "PasswordRecoveryEnabled"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 851
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 852
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 853
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 854
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_197

    .line 855
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    or-int/lit8 v6, v6, 0x2

    .line 860
    :cond_197
    const-string v8, "AllowCamera"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 861
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 862
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 863
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 864
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_1f3

    .line 865
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    or-int/lit8 v6, v6, 0x2

    .line 870
    :cond_1f3
    const-string v8, "AllowWifi"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 871
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 872
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 873
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 874
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_24f

    .line 875
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    or-int/lit8 v6, v6, 0x2

    .line 880
    :cond_24f
    const-string v8, "AllowTextMessaging"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 881
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 882
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 883
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 884
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_2ab

    .line 885
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    or-int/lit8 v6, v6, 0x2

    .line 890
    :cond_2ab
    const-string v8, "AllowPOPIMAPEmail"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 891
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 892
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 893
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 894
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_307

    .line 895
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    or-int/lit8 v6, v6, 0x2

    .line 900
    :cond_307
    const-string v8, "AllowBrowser"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 901
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 902
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 903
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 904
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_363

    .line 905
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    or-int/lit8 v6, v6, 0x2

    .line 910
    :cond_363
    const-string v8, "AllowInternetSharing"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 911
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 912
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 913
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 914
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_3bf

    .line 915
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    or-int/lit8 v6, v6, 0x2

    .line 920
    :cond_3bf
    const-string v8, "AllowBluetoothMode"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 921
    const-string v8, "Integer"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 922
    iget v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 923
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 924
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_41b

    .line 925
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    or-int/lit8 v6, v6, 0x2

    .line 930
    :cond_41b
    const-string v8, "AllowDesktopSync"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 931
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 932
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 933
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 934
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_47d

    .line 935
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", return false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    or-int/lit8 v6, v6, 0x2

    .line 940
    :cond_47d
    const-string v8, "AllowIrDA"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 941
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 942
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 943
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 944
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_4df

    .line 945
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", return false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    or-int/lit8 v6, v6, 0x2

    .line 950
    :cond_4df
    const-string v8, "AllowSimpleDevicePassword"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 951
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 952
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 953
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 954
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_c

    .line 955
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", return false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v8, "SecurityPolicy"

    const-string v9, "Ignore AllowSimplePassword policy for non-AT&T devices"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 829
    .end local v4           #ps:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    .end local v5           #psAnother:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    .restart local v7       #statusSD:I
    :cond_548
    const/4 v8, 0x2

    if-ne v7, v8, :cond_54f

    .line 830
    or-int/lit8 v6, v6, 0x10

    goto/16 :goto_d5

    .line 832
    :cond_54f
    const-string v8, "SecurityPolicy"

    const-string v9, "No SD Encryption required"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d5

    .end local v7           #statusSD:I
    :cond_558
    move v6, v8

    .line 964
    goto/16 :goto_c
.end method

.method public isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    .registers 6
    .parameter "policies"

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v0

    .line 702
    .local v0, reasons:I
    const-string v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInactiveReasons returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-nez v0, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public isActiveAdmin()Z
    .registers 4

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isRecoveryPasswordEnabled()Z
    .registers 2

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->isRecoveryPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method public isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    .registers 3
    .parameter "policies"

    .prologue
    .line 639
    iget-boolean v0, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v0, :cond_12

    .line 640
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DEMWraper;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_12

    .line 641
    const/4 v0, 0x0

    .line 644
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method onAdminEnabled(Z)V
    .registers 3
    .parameter "isEnabled"

    .prologue
    .line 1222
    if-nez p1, :cond_7

    .line 1223
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 1225
    :cond_7
    return-void
.end method

.method public policiesRequired(J)V
    .registers 14
    .parameter "accountId"

    .prologue
    const/4 v6, 0x1

    .line 1112
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1114
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_a

    .line 1130
    :goto_9
    return-void

    .line 1118
    :cond_a
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1121
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f08011c

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f08011d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1125
    .local v3, contentTitle:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 1126
    .local v4, contentText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 1127
    .local v5, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_9
.end method

.method public reducePolicies()V
    .registers 3

    .prologue
    .line 623
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 624
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 625
    return-void
.end method

.method public remoteWipe()V
    .registers 4

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1151
    new-instance v0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;

    invoke-direct {v0, p0}, Lcom/android/email/SecurityPolicy$DeleteSdCardData;-><init>(Lcom/android/email/SecurityPolicy;)V

    .line 1152
    .local v0, mDeleteSdCardData:Lcom/android/email/SecurityPolicy$DeleteSdCardData;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1156
    .end local v0           #mDeleteSdCardData:Lcom/android/email/SecurityPolicy$DeleteSdCardData;
    :goto_15
    return-void

    .line 1154
    :cond_16
    const-string v1, "SecurityPolicy"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method sendRecoveryPassword()V
    .registers 5

    .prologue
    .line 1161
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1163
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_11

    .line 1164
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1167
    :goto_10
    return-void

    .line 1166
    :cond_11
    const-string v2, "SecurityPolicy"

    const-string v3, "Context for sending ACTION_PASSWORD_RECOVERY is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setActivePolicies()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1009
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v2

    .line 1011
    .local v2, policies:Lcom/android/emailcommon/service/PolicySet;
    sget-object v3, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/android/email/SecurityPolicy;->exchangeAccountsExist()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1012
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1065
    :cond_1a
    :goto_1a
    return-void

    .line 1013
    :cond_1b
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1015
    :try_start_21
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1018
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordQuality()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1019
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 1020
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 1021
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 1023
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 1024
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 1027
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setMaximumTimeToLock(Landroid/content/ComponentName;I)V

    .line 1028
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 1031
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setStorageEncryption(Landroid/content/ComponentName;Z)V

    .line 1032
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setExternalSDEncryption(Landroid/content/ComponentName;Z)V

    .line 1033
    iget-boolean v3, v2, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    if-eqz v3, :cond_9e

    .line 1035
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1037
    .local v1, mDEM:Landroid/dirEncryption/DirEncryptionManager;
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x7

    invoke-virtual {v1, v3, v4, v5}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 1041
    .end local v1           #mDEM:Landroid/dirEncryption/DirEncryptionManager;
    :cond_9e
    const-string v3, "SecurityPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSimplePasswordEnabled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V

    .line 1045
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 1046
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1047
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 1052
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 1053
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 1054
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 1055
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 1056
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 1057
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 1058
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_11b
    .catchall {:try_start_21 .. :try_end_11b} :catchall_139
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_11b} :catch_128

    .line 1062
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v7}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_1a

    .line 1059
    :catch_128
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/Exception;
    :try_start_129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_139

    .line 1062
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v7}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_1a

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_139
    move-exception v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v7}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    throw v3
.end method

.method setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 289
    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .registers 5
    .parameter "result"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1069
    return-void
.end method

.method public declared-synchronized updatePolicies(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 613
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 614
    monitor-exit p0

    return-void

    .line 613
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
