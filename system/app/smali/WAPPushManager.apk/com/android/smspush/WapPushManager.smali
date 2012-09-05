.class public Lcom/android/smspush/WapPushManager;
.super Landroid/app/Service;
.source "WapPushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smspush/WapPushManager$IWapPushManagerStub;,
        Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_PACKAGE_LIST_INT:[[I

.field private static final DEFAULT_PACKAGE_LIST_STRING:[[Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/smspush/WapPushManager$IWapPushManagerStub;

.field private mDbHelper:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "36956"

    aput-object v2, v1, v5

    const-string v2, "application/vnd.wap.emn+wbxml"

    aput-object v2, v1, v6

    const-string v2, "jp.co.nttdocomo.carriermail"

    aput-object v2, v1, v7

    const-string v2, "jp.co.nttdocomo.carriermail.SMSService"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "36959"

    aput-object v2, v1, v5

    const-string v2, "application/vnd.wap.slc"

    aput-object v2, v1, v6

    const-string v2, "com.nttdocomo.android.databackup"

    aput-object v2, v1, v7

    const-string v2, "com.nttdocomo.android.databackup.SMSService"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "7"

    aput-object v2, v1, v5

    const-string v2, "application/vnd.syncml.notification"

    aput-object v2, v1, v6

    const-string v2, "jp.co.nttdocomo.fota"

    aput-object v2, v1, v7

    const-string v2, "jp.co.nttdocomo.fota.SMSService"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "36960"

    aput-object v2, v1, v5

    const-string v2, "application/vnd.wap.sic"

    aput-object v2, v1, v6

    const-string v2, "jp.co.nttdocomo.lcsapp"

    aput-object v2, v1, v7

    const-string v2, "jp.co.nttdocomo.lcsapp.SmsReceiver"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "36949"

    aput-object v2, v1, v5

    const-string v2, "application/vnd.syncml.notification"

    aput-object v2, v1, v6

    const-string v2, "com.nttdocomo.android.remotelock"

    aput-object v2, v1, v7

    const-string v2, "com.nttdocomo.android.remotelock.SMSService"

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "36961"

    aput-object v3, v2, v5

    const-string v3, "application/vnd.wap.slc"

    aput-object v3, v2, v6

    const-string v3, "jp.co.nttdocomo.ichannel"

    aput-object v3, v2, v7

    const-string v3, "jp.co.nttdocomo.ichannel.SMSService"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "36962"

    aput-object v3, v2, v5

    const-string v3, "application/vnd.wap.slc"

    aput-object v3, v2, v6

    const-string v3, "com.nttdocomo.android.iconcier"

    aput-object v3, v2, v7

    const-string v3, "com.nttdocomo.android.iconcier.SMSService"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "36964"

    aput-object v3, v2, v5

    const-string v3, "application/vnd.wap.sic"

    aput-object v3, v2, v6

    const-string v3, "com.nttdocomo.android.applicationmanager"

    aput-object v3, v2, v7

    const-string v3, "com.nttdocomo.android.applicationmanager.DcmProvisioningService"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/smspush/WapPushManager;->DEFAULT_PACKAGE_LIST_STRING:[[Ljava/lang/String;

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_f0

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_fa

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_104

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_10e

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_118

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_122

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_12c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_136

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/smspush/WapPushManager;->DEFAULT_PACKAGE_LIST_INT:[[I

    return-void

    :array_f0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_fa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_104
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_10e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_118
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_122
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_136
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 422
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 416
    new-instance v0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;

    invoke-direct {v0, p0}, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;-><init>(Lcom/android/smspush/WapPushManager;)V

    iput-object v0, p0, Lcom/android/smspush/WapPushManager;->mBinder:Lcom/android/smspush/WapPushManager$IWapPushManagerStub;

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smspush/WapPushManager;->mDbHelper:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    .line 423
    iget-object v0, p0, Lcom/android/smspush/WapPushManager;->mBinder:Lcom/android/smspush/WapPushManager$IWapPushManagerStub;

    iput-object p0, v0, Lcom/android/smspush/WapPushManager$IWapPushManagerStub;->mContext:Landroid/content/Context;

    .line 424
    return-void
.end method


# virtual methods
.method protected getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/smspush/WapPushManager;->mDbHelper:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    if-nez v0, :cond_b

    .line 438
    new-instance v0, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;-><init>(Lcom/android/smspush/WapPushManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/smspush/WapPushManager;->mDbHelper:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    .line 440
    :cond_b
    iget-object v0, p0, Lcom/android/smspush/WapPushManager;->mDbHelper:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    return-object v0
.end method

.method public isDataExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "x_app_id"
    .parameter "content_type"
    .parameter "package_name"
    .parameter "class_name"

    .prologue
    .line 474
    invoke-virtual {p0, p0}, Lcom/android/smspush/WapPushManager;->getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    move-result-object v1

    .line 475
    .local v1, dbh:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    invoke-virtual {v1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 476
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->queryLastApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;

    move-result-object v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    .line 478
    .local v2, ret:Z
    :goto_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 479
    return v2

    .line 476
    .end local v2           #ret:Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/smspush/WapPushManager;->mBinder:Lcom/android/smspush/WapPushManager$IWapPushManagerStub;

    return-object v0
.end method

.method public verifyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .registers 15
    .parameter "x_app_id"
    .parameter "content_type"
    .parameter "package_name"
    .parameter "class_name"
    .parameter "app_type"
    .parameter "need_signature"
    .parameter "further_processing"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    invoke-virtual {p0, p0}, Lcom/android/smspush/WapPushManager;->getDatabase(Landroid/content/Context;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper;

    move-result-object v1

    .line 451
    .local v1, dbh:Lcom/android/smspush/WapPushManager$WapPushManDBHelper;
    invoke-virtual {v1}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 452
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/smspush/WapPushManager$WapPushManDBHelper;->queryLastApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;

    move-result-object v2

    .line 454
    .local v2, lastapp:Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 456
    if-nez v2, :cond_14

    .line 465
    :cond_13
    :goto_13
    return v3

    .line 458
    :cond_14
    iget-object v5, v2, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v2, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->className:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v2, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->appType:I

    if-ne v5, p5, :cond_13

    iget v6, v2, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->needSignature:I

    if-eqz p6, :cond_38

    move v5, v4

    :goto_2d
    if-ne v6, v5, :cond_13

    iget v6, v2, Lcom/android/smspush/WapPushManager$WapPushManDBHelper$queryData;->furtherProcessing:I

    if-eqz p7, :cond_3a

    move v5, v4

    :goto_34
    if-ne v6, v5, :cond_13

    move v3, v4

    .line 463
    goto :goto_13

    :cond_38
    move v5, v3

    .line 458
    goto :goto_2d

    :cond_3a
    move v5, v3

    goto :goto_34
.end method
