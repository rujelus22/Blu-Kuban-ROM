.class public Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;
.super Landroid/app/Activity;
.source "Sec_Ril_Dump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    }
.end annotation


# static fields
.field public static rildump_time:Ljava/lang/String;


# instance fields
.field private RilLogMessage:Ljava/lang/String;

.field private buf:[B

.field private builder:Landroid/app/AlertDialog$Builder;

.field private context:Landroid/content/Context;

.field day:Ljava/lang/String;

.field private dialog_message:Ljava/lang/String;

.field private file_len:J

.field private fis:Ljava/io/FileInputStream;

.field private fos:Ljava/io/FileOutputStream;

.field hour:Ljava/lang/String;

.field private inFile:Ljava/lang/String;

.field private mApnProtocol:Landroid/widget/Button;

.field private mClearLog:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mCopyToSdcard:Landroid/widget/Button;

.field private mCpRamdump:Landroid/widget/Button;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDpramDump:Landroid/widget/Button;

.field private mExit:Landroid/widget/Button;

.field private mFreeMem:J

.field public mHandler:Landroid/os/Handler;

.field private mIPCBin:Landroid/widget/Button;

.field private mIPCLog:Landroid/widget/Button;

.field private mLogcatRadio:Landroid/widget/Button;

.field private mMmsProvisioning:Landroid/widget/Button;

.field private mNvActionType:I

.field private mNvBackup:Landroid/widget/Button;

.field private mNvDelete:Landroid/widget/Button;

.field private mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRemainMemory:J

.field private mStorageInfo:Landroid/widget/Button;

.field private mTotalMemory:J

.field private mViewIPCLog:Landroid/widget/Button;

.field private mViewLog:Landroid/widget/Button;

.field private memory_info_msg:Ljava/lang/String;

.field min:Ljava/lang/String;

.field month:Ljava/lang/String;

.field private outFile:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->RilLogMessage:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    .line 91
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->buf:[B

    .line 92
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    .line 150
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    .line 614
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    .line 766
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$3;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private DisplayMessageDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Ril Dump"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 612
    return-void
.end method

.method public static ExternalSDcardMounted()Z
    .registers 3

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 778
    .local v0, mounted:Z
    new-instance v1, Landroid/os/Environment;

    invoke-direct {v1}, Landroid/os/Environment;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 779
    const/4 v0, 0x1

    .line 784
    :goto_13
    return v0

    .line 781
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private SendData(I)V
    .registers 6
    .parameter "cmd"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, data:[B
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->StartSysDumpData(I)[B

    move-result-object v0

    .line 353
    if-nez v0, :cond_11

    .line 355
    const-string v1, "RilDump"

    const-string v2, " err - data is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_10
    return-void

    .line 359
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_27

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10

    .line 363
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3e

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10

    .line 367
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    if-ne p1, v1, :cond_55

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10

    .line 371
    :cond_55
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xe

    if-ne p1, v1, :cond_6c

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10

    .line 377
    :cond_6c
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10
.end method

.method private SendNVBackupCmd(II)V
    .registers 7
    .parameter "cmd"
    .parameter "subCmd"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, data:[B
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;->StartNVBackupData(II)[B

    move-result-object v0

    .line 387
    if-nez v0, :cond_11

    .line 389
    const-string v1, "RilDump"

    const-string v2, " err - data is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_10
    :goto_10
    return-void

    .line 393
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_27

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10

    .line 397
    :cond_27
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_10

    .line 399
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_10
.end method

.method private WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "in"
    .parameter "out"
    .parameter "DumpType"

    .prologue
    .line 485
    const/4 v1, 0x0

    .line 488
    .local v1, err:I
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    .line 489
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    .line 491
    :goto_f
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_3f

    .line 493
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->buf:[B

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_21} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_54

    goto :goto_f

    .line 498
    :catch_22
    move-exception v3

    .line 500
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :try_start_23
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "// Exception from"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_6d

    .line 501
    const/4 v1, -0x1

    .line 510
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_34

    .line 514
    :try_start_2f
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_8c

    .line 520
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_3d

    .line 524
    :try_start_38
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_8a

    :cond_3d
    :goto_3d
    move v2, v1

    .line 531
    .end local v1           #err:I
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    .local v2, err:I
    :goto_3e
    return v2

    .line 496
    .end local v2           #err:I
    .restart local v1       #err:I
    :cond_3f
    const/4 v1, 0x0

    .line 510
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_49

    .line 514
    :try_start_44
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_90

    .line 520
    :cond_49
    :goto_49
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_52

    .line 524
    :try_start_4d
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_8e

    :cond_52
    :goto_52
    move v2, v1

    .line 531
    .end local v1           #err:I
    .restart local v2       #err:I
    goto :goto_3e

    .line 503
    .end local v2           #err:I
    .restart local v1       #err:I
    :catch_54
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6d

    .line 506
    const/4 v1, -0x1

    .line 510
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_62

    .line 514
    :try_start_5d
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_88

    .line 520
    :cond_62
    :goto_62
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_6b

    .line 524
    :try_start_66
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_86

    :cond_6b
    :goto_6b
    move v2, v1

    .line 531
    .end local v1           #err:I
    .restart local v2       #err:I
    goto :goto_3e

    .line 510
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #err:I
    .restart local v1       #err:I
    :catchall_6d
    move-exception v4

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_77

    .line 514
    :try_start_72
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_77} :catch_84

    .line 520
    :cond_77
    :goto_77
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    if-eqz v4, :cond_80

    .line 524
    :try_start_7b
    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_82

    :cond_80
    :goto_80
    move v2, v1

    .line 531
    .end local v1           #err:I
    .restart local v2       #err:I
    goto :goto_3e

    .line 526
    .end local v2           #err:I
    .restart local v1       #err:I
    :catch_82
    move-exception v4

    goto :goto_80

    .line 516
    :catch_84
    move-exception v4

    goto :goto_77

    .line 526
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_86
    move-exception v4

    goto :goto_6b

    .line 516
    :catch_88
    move-exception v4

    goto :goto_62

    .line 526
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #fnfe:Ljava/io/FileNotFoundException;
    :catch_8a
    move-exception v4

    goto :goto_3d

    .line 516
    :catch_8c
    move-exception v4

    goto :goto_34

    .line 526
    .end local v3           #fnfe:Ljava/io/FileNotFoundException;
    :catch_8e
    move-exception v4

    goto :goto_52

    .line 516
    :catch_90
    move-exception v4

    goto :goto_49
.end method

.method static synthetic access$000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->infoIPCDumpLog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->infoIPCDumpBin()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendData(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mLogcatRadio:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClearLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mStorageInfo:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/os/StatFs;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Landroid/os/StatFs;)Landroid/os/StatFs;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mTotalMemory:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mFreeMem:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mFreeMem:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mRemainMemory:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mRemainMemory:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->infoRilLog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->memory_info_msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->memory_info_msg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewIPCLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCBin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mCopyToSdcard:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mCpRamdump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvBackup:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvActionType:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->showNvPassDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvDelete:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->toggleApnProtocolState()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mExit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->checkNVpassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getApnProtocolState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mApnProtocol:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mMmsProvisioning:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDpramDump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    return-object v0
.end method

.method private checkNVpassword(Ljava/lang/String;)V
    .registers 5
    .parameter "inputPasswd"

    .prologue
    .line 884
    const-string v0, ""

    .line 885
    .local v0, cmpString:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvActionType:I

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 886
    const-string v0, "873283"

    .line 890
    :cond_e
    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 891
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x11

    iget v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvActionType:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendNVBackupCmd(II)V

    .line 895
    :goto_20
    return-void

    .line 887
    :cond_21
    iget v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvActionType:I

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_e

    .line 888
    const-string v0, "3352225"

    goto :goto_e

    .line 893
    :cond_2d
    const-string v1, "Invalid password!!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method private getApnProtocolState()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 907
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_apn_protocol"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_f

    move-result v0

    .line 908
    .local v0, dataApnProtocol:I
    if-ne v0, v2, :cond_12

    .line 912
    .end local v0           #dataApnProtocol:I
    :goto_e
    return v2

    .line 909
    :catch_f
    move-exception v1

    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v2, v3

    .line 910
    goto :goto_e

    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #dataApnProtocol:I
    :cond_12
    move v2, v3

    .line 912
    goto :goto_e
.end method

.method private getCurrentTime()V
    .registers 5

    .prologue
    .line 469
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 473
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

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->month:Ljava/lang/String;

    .line 474
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->day:Ljava/lang/String;

    .line 475
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->hour:Ljava/lang/String;

    .line 476
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->min:Ljava/lang/String;

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->month:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->day:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->hour:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->rildump_time:Ljava/lang/String;

    .line 479
    const-string v1, "RilDump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ril Dump Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->rildump_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method public static getRilDumpTime()Ljava/lang/String;
    .registers 1

    .prologue
    .line 262
    sget-object v0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->rildump_time:Ljava/lang/String;

    return-object v0
.end method

.method private infoIPCDumpBin()V
    .registers 5

    .prologue
    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/log/ipcdump_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->rildump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 586
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->file_len:J

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->file_len:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Bytes\nSaved Location :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->dialog_message:Ljava/lang/String;

    .line 589
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->dialog_message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 595
    :goto_5a
    return-void

    .line 593
    :cond_5b
    const-string v1, "IPC Dump Bin Fail!"

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private infoIPCDumpLog()V
    .registers 7

    .prologue
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/log/ipcdump_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->rildump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    .line 562
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->file_len:J

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->file_len:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kb\nSaved Location :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->dialog_message:Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->dialog_message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewIPCLog:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 577
    :goto_63
    return-void

    .line 575
    :cond_64
    const-string v1, "IPC Dump Log Fail!"

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    goto :goto_63
.end method

.method private infoRilLog()V
    .registers 7

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/log/ril_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->rildump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    .line 540
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->file_len:J

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->file_len:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kb\nSaved Location :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->dialog_message:Ljava/lang/String;

    .line 547
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->dialog_message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 555
    :goto_63
    return-void

    .line 553
    :cond_64
    const-string v1, "Ril Dump Fail!"

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    goto :goto_63
.end method

.method private setApnProtocolState(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 898
    if-eqz p1, :cond_d

    .line 899
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_apn_protocol"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    :goto_c
    return-void

    .line 901
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_apn_protocol"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c
.end method

.method private showNvPassDialog()V
    .registers 7

    .prologue
    .line 850
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 851
    .local v1, alt_bld:Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 855
    .local v2, passwdText:Landroid/widget/EditText;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 856
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 857
    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 858
    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 859
    .local v3, ptm:Landroid/text/method/PasswordTransformationMethod;
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 861
    const-string v4, "Input password"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 862
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 863
    const-string v4, "OK"

    new-instance v5, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 872
    const-string v4, "Cancel"

    new-instance v5, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$5;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 879
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 880
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 881
    return-void
.end method

.method private toggleApnProtocolState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 921
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getApnProtocolState()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 922
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->setApnProtocolState(Z)V

    .line 923
    const v0, 0x7f05005a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 928
    :goto_19
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->updateApnProtocolButton()V

    .line 929
    return-void

    .line 925
    :cond_1d
    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->setApnProtocolState(Z)V

    .line 926
    const v0, 0x7f05005c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_19
.end method

.method private updateApnProtocolButton()V
    .registers 4

    .prologue
    .line 916
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 918
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 410
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->setContentView(I)V

    .line 412
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->phone:Lcom/android/internal/telephony/Phone;

    .line 413
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$1;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    .line 415
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDpramDump:Landroid/widget/Button;

    .line 416
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mLogcatRadio:Landroid/widget/Button;

    .line 417
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;

    .line 418
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClearLog:Landroid/widget/Button;

    .line 420
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCLog:Landroid/widget/Button;

    .line 421
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewIPCLog:Landroid/widget/Button;

    .line 422
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCBin:Landroid/widget/Button;

    .line 424
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mCopyToSdcard:Landroid/widget/Button;

    .line 426
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mMmsProvisioning:Landroid/widget/Button;

    .line 428
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvBackup:Landroid/widget/Button;

    .line 429
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvDelete:Landroid/widget/Button;

    .line 431
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mApnProtocol:Landroid/widget/Button;

    .line 433
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mExit:Landroid/widget/Button;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDpramDump:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mLogcatRadio:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClearLog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCLog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewIPCLog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCBin:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mCopyToSdcard:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mMmsProvisioning:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvBackup:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvDelete:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mApnProtocol:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mExit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->builder:Landroid/app/AlertDialog$Builder;

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewIPCLog:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->getCurrentTime()V

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->updateApnProtocolButton()V

    .line 464
    iput-object p0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->context:Landroid/content/Context;

    .line 465
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 600
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 813
    .line 818
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
