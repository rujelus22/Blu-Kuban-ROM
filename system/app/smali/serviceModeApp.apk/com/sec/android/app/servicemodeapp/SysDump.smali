.class public Lcom/sec/android/app/servicemodeapp/SysDump;
.super Landroid/app/Activity;
.source "SysDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    }
.end annotation


# static fields
.field private static bDbgEnable:Z

.field private static bFdEnable:Z

.field private static count:I

.field private static iRamdumpMode:I


# instance fields
.field private buf:[B

.field private builder:Landroid/app/AlertDialog$Builder;

.field day:Ljava/lang/String;

.field private dumpstate_file_len:J

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field hour:Ljava/lang/String;

.field private inFile:Ljava/lang/String;

.field private inFile_dumpState:Ljava/lang/String;

.field private inFile_main:Ljava/lang/String;

.field private inFile_panic:Ljava/lang/String;

.field private logcation_info:Ljava/lang/String;

.field private mAPCPLog:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mCopyDump:Landroid/widget/Button;

.field private mCopyKernelLog:Landroid/widget/Button;

.field private mCopyLuckyRilLogToSdcard:Landroid/widget/Button;

.field private mCopyToSdcard:Landroid/widget/Button;

.field private mDeleteDump:Landroid/widget/Button;

.field private mExit:Landroid/widget/Button;

.field public mHandler:Landroid/os/Handler;

.field private mModemLog:Landroid/widget/Button;

.field private mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mStartRilLog:Landroid/widget/Button;

.field private mToggleDbgState:Landroid/widget/Button;

.field private mToggleFd:Landroid/widget/Button;

.field private mToggleRampdumpState:Landroid/widget/Button;

.field private maindump_file_len:J

.field min:Ljava/lang/String;

.field month:Ljava/lang/String;

.field private outFile:Ljava/lang/String;

.field private outFile_panic:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private progressDialog:Landroid/app/ProgressDialog;

.field sec:Ljava/lang/String;

.field private sysdump_time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sput v1, Lcom/sec/android/app/servicemodeapp/SysDump;->count:I

    .line 130
    sput-boolean v1, Lcom/sec/android/app/servicemodeapp/SysDump;->bDbgEnable:Z

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    .line 132
    sput v1, Lcom/sec/android/app/servicemodeapp/SysDump;->iRamdumpMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    .line 77
    const-string v0, "Saved Location : /data\n\n"

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->logcation_info:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    .line 85
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    .line 86
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->buf:[B

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    .line 143
    new-instance v0, Lcom/sec/android/app/servicemodeapp/SysDump$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/SysDump$1;-><init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    .line 1024
    new-instance v0, Lcom/sec/android/app/servicemodeapp/SysDump$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/SysDump$2;-><init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    .line 1291
    new-instance v0, Lcom/sec/android/app/servicemodeapp/SysDump$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/SysDump$3;-><init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private EnableFastDormancy(Z)V
    .registers 8
    .parameter "enable"

    .prologue
    .line 968
    const-string v3, "sysDump"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[f-d] EnableFastDormancy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, numeric:Ljava/lang/String;
    if-nez v1, :cond_2f

    .line 972
    const-string v3, "sysDump"

    const-string v4, "[f-d] numeric is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->queryFastDormancyState()V

    .line 997
    :goto_2e
    return-void

    .line 978
    :cond_2f
    const-string v3, "45001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 979
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->queryFastDormancyState()V

    goto :goto_2e

    .line 984
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fdormancy.preferences_name"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 987
    .local v2, preferences:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_6e

    .line 988
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 989
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "fdormancy.key.mccmnc"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 990
    const-string v3, "fdormancy.key.state"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 991
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 993
    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 996
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_6e
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->queryFastDormancyState()V

    goto :goto_2e
.end method

.method public static ExternalSDcardMounted()Z
    .registers 3

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1282
    .local v0, mounted:Z
    new-instance v1, Landroid/os/Environment;

    invoke-direct {v1}, Landroid/os/Environment;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1283
    const/4 v0, 0x1

    .line 1288
    :goto_13
    return v0

    .line 1285
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private RamdumpMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 1001
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1002
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1005
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_a
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1006
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1007
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1008
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_40
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_24} :catch_39

    .line 1015
    :try_start_24
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_45

    .line 1021
    :goto_27
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1022
    return-void

    .line 1010
    :catch_39
    move-exception v2

    .line 1015
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_27

    .line 1016
    :catch_3e
    move-exception v2

    goto :goto_27

    .line 1014
    :catchall_40
    move-exception v2

    .line 1015
    :try_start_41
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_47

    .line 1018
    :goto_44
    throw v2

    .line 1016
    :catch_45
    move-exception v2

    goto :goto_27

    :catch_47
    move-exception v3

    goto :goto_44
.end method

.method private ResultMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Dump Result"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 681
    return-void
.end method

.method private SendData(I)V
    .registers 7
    .parameter "cmd"

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0x13

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, data:[B
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v3, :cond_23

    .line 533
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x12

    .line 540
    .local v1, tempCMD:I
    :goto_13
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;->StartSysDumpData(I)[B

    move-result-object v0

    .line 542
    if-nez v0, :cond_33

    .line 544
    const-string v2, "sysDump"

    const-string v3, " err - data is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_22
    :goto_22
    return-void

    .line 534
    .end local v1           #tempCMD:I
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v4, :cond_31

    .line 535
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    .restart local v1       #tempCMD:I
    goto :goto_13

    .line 537
    .end local v1           #tempCMD:I
    :cond_31
    move v1, p1

    .restart local v1       #tempCMD:I
    goto :goto_13

    .line 548
    :cond_33
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-eq p1, v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xc

    if-eq p1, v2, :cond_55

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xd

    if-ne p1, v2, :cond_63

    .line 553
    :cond_55
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_22

    .line 555
    :cond_63
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_79

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_22

    .line 559
    :cond_79
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v4, :cond_8e

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_22

    .line 563
    :cond_8e
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v3, :cond_a3

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_22

    .line 567
    :cond_a3
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x12

    if-ne p1, v2, :cond_bb

    .line 569
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_22

    .line 572
    :cond_bb
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x9

    if-ne p1, v2, :cond_d3

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_22

    .line 576
    :cond_d3
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    if-ne p1, v2, :cond_ea

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_22

    .line 580
    :cond_ea
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    if-ne p1, v2, :cond_22

    .line 582
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3f3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_22
.end method

.method private WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "in"
    .parameter "out"
    .parameter "DumpType"

    .prologue
    .line 889
    const/4 v3, 0x1

    .line 894
    .local v3, result:Z
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    .line 895
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    .line 896
    :goto_f
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, n:I
    const/4 v4, -0x1

    if-le v2, v4, :cond_48

    .line 898
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->buf:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_89
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_66

    goto :goto_f

    .line 901
    .end local v2           #n:I
    :catch_23
    move-exception v1

    .line 903
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 904
    :try_start_25
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "// Exception from"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_89

    .line 913
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_3e

    .line 918
    :try_start_30
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 919
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_ae

    .line 926
    :cond_3e
    :goto_3e
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_47

    .line 930
    :try_start_42
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_ac

    .line 938
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :cond_47
    :goto_47
    return v3

    .line 913
    .restart local v2       #n:I
    :cond_48
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_5a

    .line 918
    :try_start_4c
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 919
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5a} :catch_b0

    .line 926
    :cond_5a
    :goto_5a
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_47

    .line 930
    :try_start_5e
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_47

    .line 932
    :catch_64
    move-exception v4

    goto :goto_47

    .line 906
    .end local v2           #n:I
    :catch_66
    move-exception v0

    .line 908
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 909
    :try_start_68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_89

    .line 913
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_7d

    .line 918
    :try_start_6f
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 919
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7d} :catch_aa

    .line 926
    :cond_7d
    :goto_7d
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_47

    .line 930
    :try_start_81
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_86} :catch_87

    goto :goto_47

    .line 932
    :catch_87
    move-exception v4

    goto :goto_47

    .line 913
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_89
    move-exception v4

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_9c

    .line 918
    :try_start_8e
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 919
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9c} :catch_a8

    .line 926
    :cond_9c
    :goto_9c
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    if-eqz v5, :cond_a5

    .line 930
    :try_start_a0
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a5} :catch_a6

    .line 934
    :cond_a5
    :goto_a5
    throw v4

    .line 932
    :catch_a6
    move-exception v5

    goto :goto_a5

    .line 921
    :catch_a8
    move-exception v5

    goto :goto_9c

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_aa
    move-exception v4

    goto :goto_7d

    .line 932
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fnfe:Ljava/io/FileNotFoundException;
    :catch_ac
    move-exception v4

    goto :goto_47

    .line 921
    :catch_ae
    move-exception v4

    goto :goto_3e

    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #n:I
    :catch_b0
    move-exception v4

    goto :goto_5a
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->infoLog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleFd:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/sec/android/app/servicemodeapp/SysDump;->iRamdumpMode:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput p0, Lcom/sec/android/app/servicemodeapp/SysDump;->iRamdumpMode:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyLuckyRilLogToSdcard:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/servicemodeapp/SysDump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->infoLogAll()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mStartRilLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mDeleteDump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyDump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mAPCPLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mModemLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyKernelLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_panic:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_panic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->outFile_panic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyToSdcard:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mExit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->checkAndFinishSysDump()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/servicemodeapp/SysDump;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/SysDump;->EnableFastDormancy(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/servicemodeapp/SysDump;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/SysDump;->RamdumpMode(I)V

    return-void
.end method

.method static synthetic access$3302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput p0, Lcom/sec/android/app/servicemodeapp/SysDump;->count:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->infoModemLog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/servicemodeapp/SysDump;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->buf:[B

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/sec/android/app/servicemodeapp/SysDump;->bDbgEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleDbgState:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    return v0
.end method

.method private checkAndFinishSysDump()V
    .registers 1

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->finish()V

    .line 1310
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 13
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 839
    const-string v8, "sysDump"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyDirectory : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 843
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_31

    .line 845
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 848
    :cond_31
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, fileList:[Ljava/lang/String;
    if-eqz v2, :cond_3a

    array-length v8, v2

    if-gtz v8, :cond_3b

    .line 885
    .end local v2           #fileList:[Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 853
    .restart local v2       #fileList:[Ljava/lang/String;
    :cond_3b
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3c
    array-length v8, v2

    if-ge v6, v8, :cond_3a

    .line 855
    new-instance v8, Ljava/io/File;

    aget-object v9, v2, v6

    invoke-direct {v8, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    aget-object v10, v2, v6

    invoke-direct {v9, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/sec/android/app/servicemodeapp/SysDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 853
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 862
    .end local v2           #fileList:[Ljava/lang/String;
    .end local v6           #i:I
    :cond_53
    :try_start_53
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 863
    .local v3, fin:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 866
    .local v5, fout:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 869
    .local v0, buffer:[B
    :goto_61
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, len:I
    if-lez v7, :cond_75

    .line 871
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_6b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6b} :catch_7c

    goto :goto_61

    .line 876
    .end local v0           #buffer:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .end local v7           #len:I
    :catch_6c
    move-exception v4

    .line 878
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "// Exception from"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3a

    .line 873
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:[B
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v5       #fout:Ljava/io/FileOutputStream;
    .restart local v7       #len:I
    :cond_75
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 874
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_7b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_7c

    goto :goto_3a

    .line 880
    .end local v0           #buffer:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #fout:Ljava/io/FileOutputStream;
    .end local v7           #len:I
    :catch_7c
    move-exception v1

    .line 882
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method public static deleteDirectory(Ljava/lang/String;)V
    .registers 10
    .parameter "path"

    .prologue
    .line 792
    const-string v6, "sysDump"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDirectory : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v2, 0x0

    .line 795
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 799
    .local v5, list:[Ljava/lang/String;
    :try_start_1a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_a8
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1f} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_8e

    .line 800
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 802
    array-length v6, v5

    if-eqz v6, :cond_81

    .line 804
    const/4 v4, 0x0

    .local v4, i:I
    :goto_27
    array-length v6, v5

    if-ge v4, v6, :cond_81

    .line 806
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, delFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 810
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_70

    .line 811
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->deleteDirectory(Ljava/lang/String;)V

    .line 804
    :cond_70
    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 815
    :cond_73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_76
    .catchall {:try_start_1f .. :try_end_76} :catchall_aa
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_76} :catch_ad

    goto :goto_70

    .line 823
    .end local v0           #delFile:Ljava/io/File;
    .end local v4           #i:I
    :catch_77
    move-exception v1

    move-object v2, v3

    .line 825
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/NullPointerException;
    .restart local v2       #file:Ljava/io/File;
    :goto_79
    :try_start_79
    const-string v6, "sysDump"

    const-string v7, "NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_a8

    .line 833
    .end local v1           #e:Ljava/lang/NullPointerException;
    :goto_80
    return-void

    .line 820
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_81
    :try_start_81
    const-string v6, "/data/log"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 821
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_aa
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_8c} :catch_77
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_ad

    :cond_8c
    move-object v2, v3

    .line 833
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_80

    .line 827
    :catch_8e
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/Exception;
    :goto_8f
    :try_start_8f
    const-string v6, "sysDump"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_a8

    goto :goto_80

    .line 833
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_a8
    move-exception v6

    goto :goto_80

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_aa
    move-exception v6

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_80

    .line 827
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_ad
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_8f

    .line 823
    :catch_b0
    move-exception v1

    goto :goto_79
.end method

.method private infoLog()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x400

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/dumpState_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_dumpState:Ljava/lang/String;

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_main:Ljava/lang/String;

    .line 694
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_dumpState:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, oFile_dumpState:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_main:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v2, oFile_main:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->dumpstate_file_len:J

    .line 700
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->maindump_file_len:J

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved Location :\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->dumpstate_file_len:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kb)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->maindump_file_len:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kb)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, dialog_message:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    .line 719
    .end local v0           #dialog_message:Ljava/lang/String;
    :goto_b0
    return-void

    .line 707
    :cond_b1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 709
    const-string v3, "main log dump fail! "

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    goto :goto_b0

    .line 711
    :cond_c3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d5

    .line 713
    const-string v3, "dumpState fail! "

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    goto :goto_b0

    .line 717
    :cond_d5
    const-string v3, "dumpState && main log dump fail! "

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    goto :goto_b0
.end method

.method private infoLogAll()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x400

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/dumpState_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_dumpState:Ljava/lang/String;

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/log/main_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_main:Ljava/lang/String;

    .line 726
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_dumpState:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    .local v1, oFile_dumpState:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_main:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 729
    .local v2, oFile_main:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 731
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->dumpstate_file_len:J

    .line 732
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->maindump_file_len:J

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved Location :\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->dumpstate_file_len:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kb)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->maindump_file_len:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Kb)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, dialog_message:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Modem log files : \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data/log/AENEAS_TRACE_###.bin\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data/log/MA_TRACE_###.bin\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    .line 754
    .end local v0           #dialog_message:Ljava/lang/String;
    :goto_e9
    return-void

    .line 742
    :cond_ea
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_fc

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 744
    const-string v3, "main log dump fail! "

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    goto :goto_e9

    .line 746
    :cond_fc
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10e

    .line 748
    const-string v3, "dumpState fail! "

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    goto :goto_e9

    .line 752
    :cond_10e
    const-string v3, "dumpState && main log dump fail! "

    invoke-direct {p0, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    goto :goto_e9
.end method

.method private infoModemLog()V
    .registers 2

    .prologue
    .line 685
    const-string v0, "GET MODEM LOG SUCCESS! \n Please copy to SDcard with other Menu Button."

    .line 686
    .local v0, dialog_message:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method private queryFastDormancyState()V
    .registers 19

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/servicemodeapp/SysDump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 403
    .local v15, msg:Landroid/os/Message;
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 406
    .local v16, numeric:Ljava/lang/String;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    .line 410
    if-nez v16, :cond_24

    .line 411
    const-string v2, "sysDump"

    const-string v3, "[f-d]: No op numeric"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 526
    :goto_23
    return-void

    .line 417
    :cond_24
    const-string v2, "45001"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 418
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    .line 419
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto :goto_23

    .line 424
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fdormancy.preferences_name"

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 427
    .local v17, preferences:Landroid/content/SharedPreferences;
    if-eqz v17, :cond_87

    .line 428
    const-string v2, "fdormancy.key.mccmnc"

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 432
    .local v14, mccmnc:Ljava/lang/String;
    const-string v2, "fdormancy.key.state"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 436
    .local v13, fdState:Z
    if-eqz v14, :cond_87

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_87

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 438
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[f-d] FD state from key string : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sput-boolean v13, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    .line 440
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto :goto_23

    .line 445
    .end local v13           #fdState:Z
    .end local v14           #mccmnc:Ljava/lang/String;
    :cond_87
    new-instance v10, Ljava/io/File;

    const-string v2, "/data/data/com.android.providers.telephony/databases"

    const-string v3, "nwk_info.db"

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v10, databaseFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_171

    .line 457
    new-instance v10, Ljava/io/File;

    .end local v10           #databaseFile:Ljava/io/File;
    const-string v2, "/system/csc"

    const-string v3, "nwk_info.db"

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .restart local v10       #databaseFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d1

    .line 460
    const-string v2, "sysDump"

    const-string v3, "[f-d] no nwk info db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[f-d] Dormant flag("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_23

    .line 466
    :cond_d1
    const-string v2, "sysDump"

    const-string v3, "[f-d] csc system area"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_d8
    :try_start_d8
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_e1} :catch_17a

    move-result-object v1

    .line 480
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plmn = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, selection:Ljava/lang/String;
    :try_start_fd
    const-string v2, "nwkinfo"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 491
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_147

    .line 492
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_147

    .line 495
    :cond_110
    const-string v2, "dormancy"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 496
    .local v11, dormFlag:Ljava/lang/String;
    if-eqz v11, :cond_187

    .line 497
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FD] read from DB: dormancy("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v2, "off"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    .line 500
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    .line 515
    .end local v11           #dormFlag:Ljava/lang/String;
    :cond_147
    :goto_147
    if-eqz v1, :cond_14c

    .line 516
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 517
    :cond_14c
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[f-d] Dormant flag("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v5, Lcom/sec/android/app/servicemodeapp/SysDump;->bFdEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_fd .. :try_end_16c} :catch_18e

    .line 525
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_23

    .line 469
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selection:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_171
    const-string v2, "sysDump"

    const-string v3, "[f-d] provider data area"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d8

    .line 474
    :catch_17a
    move-exception v12

    .line 475
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "sysDump"

    const-string v3, "[f-d] nwk info db open exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_23

    .line 511
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #dormFlag:Ljava/lang/String;
    :cond_187
    :try_start_187
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_18a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_187 .. :try_end_18a} :catch_18e

    move-result v2

    if-nez v2, :cond_110

    goto :goto_147

    .line 519
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #dormFlag:Ljava/lang/String;
    :catch_18e
    move-exception v12

    .line 520
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "sysDump"

    const-string v3, "[f-d] Exception during query"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_23
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x4

    .line 588
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 590
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->setContentView(I)V

    .line 591
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->phone:Lcom/android/internal/telephony/Phone;

    .line 592
    new-instance v1, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/SysDump;Lcom/sec/android/app/servicemodeapp/SysDump$1;)V

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    .line 596
    const v1, 0x7f060032

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mDeleteDump:Landroid/widget/Button;

    .line 597
    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyDump:Landroid/widget/Button;

    .line 598
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyKernelLog:Landroid/widget/Button;

    .line 599
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyToSdcard:Landroid/widget/Button;

    .line 600
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mExit:Landroid/widget/Button;

    .line 601
    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleFd:Landroid/widget/Button;

    .line 602
    const v1, 0x7f060037

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;

    .line 603
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mStartRilLog:Landroid/widget/Button;

    .line 604
    const v1, 0x7f06003a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyLuckyRilLogToSdcard:Landroid/widget/Button;

    .line 605
    const v1, 0x7f060035

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mModemLog:Landroid/widget/Button;

    .line 606
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/servicemodeapp/SysDump;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mAPCPLog:Landroid/widget/Button;

    .line 607
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 609
    .local v0, cal:Ljava/util/Calendar;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->month:Ljava/lang/String;

    .line 610
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->day:Ljava/lang/String;

    .line 611
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->hour:Ljava/lang/String;

    .line 612
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->min:Ljava/lang/String;

    .line 613
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sec:Ljava/lang/String;

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->month:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->day:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->hour:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    .line 617
    const-string v1, "sysDump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sysdump_time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;

    .line 620
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->queryFastDormancyState()V

    .line 622
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mDeleteDump:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyDump:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mModemLog:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mAPCPLog:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyKernelLog:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyToSdcard:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mExit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleFd:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mStartRilLog:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyLuckyRilLogToSdcard:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mAPCPLog:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mStartRilLog:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyLuckyRilLogToSdcard:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/SysDump;->builder:Landroid/app/AlertDialog$Builder;

    .line 645
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 650
    packed-switch p1, :pswitch_data_c

    .line 657
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 654
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/SysDump;->checkAndFinishSysDump()V

    goto :goto_3

    .line 650
    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
