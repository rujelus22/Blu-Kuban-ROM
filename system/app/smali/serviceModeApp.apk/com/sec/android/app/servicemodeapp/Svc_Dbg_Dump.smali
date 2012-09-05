.class public Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;
.super Landroid/app/Activity;
.source "Svc_Dbg_Dump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    }
.end annotation


# static fields
.field public static svcdbgdump_time:Ljava/lang/String;


# instance fields
.field private SvcDebugMessage:Ljava/lang/String;

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

.field private mCPALL:Landroid/widget/Button;

.field private mCPCPLog:Landroid/widget/Button;

.field private mCPCPLog2:Landroid/widget/Button;

.field private mCPDBGStringDisable:Landroid/widget/Button;

.field private mCPDBGStringLOG1:Landroid/widget/Button;

.field private mCPDBGStringLOG2:Landroid/widget/Button;

.field private mCPDBGStringLoopBack:Landroid/widget/Button;

.field private mCPDBGStringMSG:Landroid/widget/Button;

.field private mCPMsg:Landroid/widget/Button;

.field private mCPRamDump:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mExit:Landroid/widget/Button;

.field public mHandler:Landroid/os/Handler;

.field private mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTextView:Landroid/widget/TextView;

.field min:Ljava/lang/String;

.field month:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->phone:Lcom/android/internal/telephony/Phone;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SvcDebugMessage:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->fis:Ljava/io/FileInputStream;

    .line 145
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->fos:Ljava/io/FileOutputStream;

    .line 149
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->buf:[B

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    .line 203
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$1;-><init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mHandler:Landroid/os/Handler;

    .line 732
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;-><init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    .line 886
    new-instance v0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$3;-><init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private DisplayMessageDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "SVC Debug Dump"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 728
    return-void
.end method

.method private RILDumpInfo()V
    .registers 7

    .prologue
    .line 660
    const-string v1, "SvcDbgDump"

    const-string v2, "RILDumpInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -b radio -d -f /data/dump_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->svcdbgdump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->commandLineReport(Ljava/lang/String;)V

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/dump_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->svcdbgdump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->inFile:Ljava/lang/String;

    .line 668
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->inFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->file_len:J

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make success!\n\nFile size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->file_len:J

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

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->dialog_message:Ljava/lang/String;

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->dialog_message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private SendData(II)V
    .registers 7
    .parameter "maincmd"
    .parameter "subcmd"

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 424
    .local v0, data:[B
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_19

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->StartDumpData(I)[B

    move-result-object v0

    .line 452
    :goto_f
    if-nez v0, :cond_30

    .line 456
    const-string v1, "SvcDbgDump"

    const-string v2, " err - data is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_18
    return-void

    .line 432
    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    if-ne p1, v1, :cond_28

    .line 436
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;->StartStringData(I)[B

    move-result-object v0

    goto :goto_f

    .line 444
    :cond_28
    const-string v1, "SvcDbgDump"

    const-string v2, " Unknown Main Command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 464
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_18
.end method

.method private SystemDumpInfo()V
    .registers 7

    .prologue
    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -b main -d -f /data/main_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->svcdbgdump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->commandLineReport(Ljava/lang/String;)V

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/main"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->svcdbgdump_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->inFile:Ljava/lang/String;

    .line 690
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->inFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, oFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->file_len:J

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make success!\n\nFile size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->file_len:J

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

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->dialog_message:Ljava/lang/String;

    .line 696
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->dialog_message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPALL:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringMSG:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG1:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringDisable:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mExit:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPMsg:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPRamDump:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLoopBack:Landroid/widget/Button;

    return-object v0
.end method

.method private commandLineReport(Ljava/lang/String;)V
    .registers 7
    .parameter "command"

    .prologue
    .line 906
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 916
    .local v2, rt:Ljava/lang/Runtime;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 920
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    .line 934
    .end local v1           #p:Ljava/lang/Process;
    :goto_f
    return-void

    .line 924
    :catch_10
    move-exception v0

    .line 928
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "// Exception from"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getCurrentTime()V
    .registers 5

    .prologue
    .line 618
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 624
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

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->month:Ljava/lang/String;

    .line 626
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->day:Ljava/lang/String;

    .line 628
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->hour:Ljava/lang/String;

    .line 630
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->min:Ljava/lang/String;

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->month:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->day:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->hour:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->svcdbgdump_time:Ljava/lang/String;

    .line 636
    const-string v1, "SvcDbgDump"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SVC Debug Dump Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->svcdbgdump_time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .registers 4
    .parameter "target"

    .prologue
    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send EVENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " success!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->dialog_message:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->dialog_message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->DisplayMessageDialog(Ljava/lang/String;)V

    .line 652
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 478
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 482
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->setContentView(I)V

    .line 486
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->phone:Lcom/android/internal/telephony/Phone;

    .line 488
    new-instance v2, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;-><init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$1;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    .line 492
    const v2, 0x7f060026

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mTextView:Landroid/widget/TextView;

    .line 494
    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPALL:Landroid/widget/Button;

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPALL:Landroid/widget/Button;

    const-string v3, "Dump]   ALL"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const v2, 0x7f060028

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPMsg:Landroid/widget/Button;

    .line 500
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPMsg:Landroid/widget/Button;

    const-string v3, "Dump]   MSG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog:Landroid/widget/Button;

    .line 504
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog:Landroid/widget/Button;

    const-string v3, "Dump]   CP LOG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog2:Landroid/widget/Button;

    .line 508
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog2:Landroid/widget/Button;

    const-string v3, "Dump]   CP LOG2"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    const v2, 0x7f06002b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPRamDump:Landroid/widget/Button;

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPRamDump:Landroid/widget/Button;

    const-string v3, "Dump]   ramdump"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLoopBack:Landroid/widget/Button;

    .line 516
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLoopBack:Landroid/widget/Button;

    const-string v3, "String]   LoopBack"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 518
    const v2, 0x7f06002d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringMSG:Landroid/widget/Button;

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringMSG:Landroid/widget/Button;

    const-string v3, "String]   MSG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG1:Landroid/widget/Button;

    .line 524
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG1:Landroid/widget/Button;

    const-string v3, "String]   LOG1"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 526
    const v2, 0x7f06002f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG2:Landroid/widget/Button;

    .line 528
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG2:Landroid/widget/Button;

    const-string v3, "String]   LOG2"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 530
    const v2, 0x7f060030

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringDisable:Landroid/widget/Button;

    .line 532
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringDisable:Landroid/widget/Button;

    const-string v3, "String]   Disable"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 534
    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mExit:Landroid/widget/Button;

    .line 538
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPALL:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPMsg:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPRamDump:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLoopBack:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringMSG:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringDisable:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mExit:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->progressDialog:Landroid/app/ProgressDialog;

    .line 564
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->builder:Landroid/app/AlertDialog$Builder;

    .line 568
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->getCurrentTime()V

    .line 572
    iput-object p0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->context:Landroid/content/Context;

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 580
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 584
    const-string v2, "TYPE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, type:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    .line 592
    const-string v2, "SvcDbgDump"

    const-string v3, "RIL log"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->RILDumpInfo()V

    .line 598
    :cond_165
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 602
    const-string v2, "SvcDbgDump"

    const-string v3, "System log"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SystemDumpInfo()V

    .line 612
    .end local v1           #type:Ljava/lang/String;
    :cond_177
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 706
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 708
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 944
    .line 960
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
