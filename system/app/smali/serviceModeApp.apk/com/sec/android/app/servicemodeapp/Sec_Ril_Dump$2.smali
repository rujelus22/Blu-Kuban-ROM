.class Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;
.super Ljava/lang/Object;
.source "Sec_Ril_Dump.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V
    .registers 2
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x1000

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mMmsProvisioning:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mmsprovision"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDpramDump:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_30

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xe

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendData(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)V

    .line 628
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mLogcatRadio:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_47

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendData(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)V

    .line 634
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewLog:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_74

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 639
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 640
    const-string v1, "key"

    const-string v2, "ViewRilLog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 644
    :cond_74
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mClearLog:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_92

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendData(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "Clear Ril Log"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 649
    :cond_92
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mStorageInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_155

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Landroid/os/StatFs;)Landroid/os/StatFs;

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/os/StatFs;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    div-long/2addr v1, v5

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mTotalMemory:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1702(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;J)J

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mDataFileStats:Landroid/os/StatFs;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/os/StatFs;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    div-long/2addr v1, v5

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mFreeMem:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1802(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;J)J

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mFreeMem:J
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J

    move-result-wide v1

    long-to-double v1, v1

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mTotalMemory:J
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-long v1, v1

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mRemainMemory:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1902(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;J)J

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data memory information\n\nTotal Memory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mTotalMemory:J
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Free Memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mFreeMem:J
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remain delta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mRemainMemory:J
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->memory_info_msg:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2002(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->memory_info_msg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 665
    :cond_155
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCLog:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_16d

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendData(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)V

    .line 670
    :cond_16d
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mViewIPCLog:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_19a

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/servicemodeapp/ViewRilLog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 674
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 675
    const-string v1, "key"

    const-string v2, "ViewIPCDumpLog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 678
    :cond_19a
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mIPCBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1b2

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->SendData(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$1000(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)V

    .line 683
    :cond_1b2
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mCopyToSdcard:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2e4

    .line 685
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->ExternalSDcardMounted()Z

    move-result v0

    if-nez v0, :cond_1c8

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "External SD Card UnMounted!!"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 763
    :cond_1c7
    :goto_1c7
    return-void

    .line 691
    :cond_1c8
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

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

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/ril_"

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

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ril log "

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, ""

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, ""

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

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

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/ipcdump_"

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

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IPC Dump log "

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, ""

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, ""

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

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

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/ipcdump_"

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

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IPC Dump Bin "

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "Copy Success!!"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 712
    :cond_2e4
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mCpRamdump:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2800(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_345

    .line 714
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->ExternalSDcardMounted()Z

    move-result v0

    if-nez v0, :cond_2fb

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "External SD Card UnMounted!!"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    goto/16 :goto_1c7

    .line 720
    :cond_2fb
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, ""

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, ""

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "/data/dump_for_cp"

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2502(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "/sdcard/dump_for_cp"

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2602(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a1

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->inFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->outFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2600(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CP Ramdump "

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2700(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 732
    if-nez v0, :cond_399

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "copy success!!"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 743
    :cond_345
    :goto_345
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvBackup:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$2900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_361

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvActionType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3002(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)I

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->showNvPassDialog()V
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    .line 749
    :cond_361
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvDelete:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3200(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_37d

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mNvActionType:I
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3002(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;I)I

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->showNvPassDialog()V
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3100(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    .line 755
    :cond_37d
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mApnProtocol:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_38a

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->toggleApnProtocolState()V
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)V

    .line 759
    :cond_38a
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->mExit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3400(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1c7

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->finish()V

    goto/16 :goto_1c7

    .line 735
    :cond_399
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "exception error!!"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    goto :goto_345

    .line 739
    :cond_3a1
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    const-string v1, "dump_for_cp file is not exist"

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->DisplayMessageDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    goto :goto_345
.end method
