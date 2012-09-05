.class Lcom/sec/android/app/servicemodeapp/SysDump$2;
.super Ljava/lang/Object;
.source "SysDump.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/SysDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/SysDump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 2
    .parameter

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1049
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyLuckyRilLogToSdcard:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1400(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_82

    .line 1051
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->ExternalSDcardMounted()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1053
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "External SD Card UnMounted!!"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    .line 1275
    :cond_1b
    :goto_1b
    return-void

    .line 1057
    :cond_1c
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "/data/log/lucky_ril.log"

    #setter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1602(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;

    .line 1058
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/sdcard/lucky_ril_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->sysdump_time:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1800(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1702(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1700(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "main"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1900(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1062
    :try_start_5d
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6b} :catch_2e0

    .line 1066
    :cond_6b
    :goto_6b
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "Copy RIL log Success!"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    .line 1068
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xd

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1070
    :cond_82
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mStartRilLog:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_a1

    .line 1072
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xc

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1073
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "Start RIL log !"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    .line 1076
    :cond_a1
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mDeleteDump:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2100(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_b5

    .line 1078
    const-string v5, "/data/log"

    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->deleteDirectory(Ljava/lang/String;)V

    .line 1079
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "Delete Dump !"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    .line 1082
    :cond_b5
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyDump:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_10d

    .line 1088
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    const-string v6, "Wait..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1090
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1091
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1093
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v9}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1094
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v13}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1095
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v11}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1099
    :cond_10d
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mAPCPLog:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2300(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_167

    .line 1101
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    const-string v6, "Wait..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1103
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1104
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1106
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v9}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1107
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v13}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1108
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x14

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1112
    :cond_167
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mModemLog:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2400(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_1a5

    .line 1114
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    const-string v6, "Wait..."

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1116
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1117
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1119
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x12

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1121
    :cond_1a5
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyKernelLog:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2500(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_236

    .line 1123
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->ExternalSDcardMounted()Z

    move-result v5

    if-nez v5, :cond_1bc

    .line 1125
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "External SD Card UnMounted!!"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1129
    :cond_1bc
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "/data/panic"

    #setter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_panic:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2602(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;

    .line 1131
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_panic:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v2, oFile:Ljava/io/File;
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x4

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    .line 1134
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1fd

    .line 1136
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "/mnt/sdcard/panic"

    #setter for: Lcom/sec/android/app/servicemodeapp/SysDump;->outFile_panic:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2702(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile_panic:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1700(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "panic"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1900(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1140
    :cond_1fd
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "/data/anr/traces.txt"

    #setter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1602(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;

    .line 1141
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "/mnt/sdcard/traces.txt"

    #setter for: Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1702(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v3, oFile_kernel:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_24d

    .line 1147
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->inFile:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1600(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->outFile:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1700(Lcom/sec/android/app/servicemodeapp/SysDump;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "traces.txt"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->WriteToSDcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1900(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1148
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "Copy success!!"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    .line 1155
    .end local v2           #oFile:Ljava/io/File;
    .end local v3           #oFile_kernel:Ljava/io/File;
    :cond_236
    :goto_236
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mCopyToSdcard:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2800(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_277

    .line 1157
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->ExternalSDcardMounted()Z

    move-result v5

    if-nez v5, :cond_255

    .line 1159
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "External SD Card UnMounted!!\nplease check if USB cable is connected or SD card is not inserted"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1152
    .restart local v2       #oFile:Ljava/io/File;
    .restart local v3       #oFile_kernel:Ljava/io/File;
    :cond_24d
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "Kernel Log Not Exist!!"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    goto :goto_236

    .line 1166
    .end local v2           #oFile:Ljava/io/File;
    .end local v3           #oFile_kernel:Ljava/io/File;
    :cond_255
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/log"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v1, dataLogDirectory:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/efs/err"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v0, dataCPLogDirectory:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "/mnt/sdcard/log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v4, sdcardLogDirectory:Ljava/io/File;
    invoke-static {v1, v4}, Lcom/sec/android/app/servicemodeapp/SysDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1171
    invoke-static {v0, v4}, Lcom/sec/android/app/servicemodeapp/SysDump;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1243
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    const-string v6, "Copy success!!"

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->ResultMessage(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1500(Lcom/sec/android/app/servicemodeapp/SysDump;Ljava/lang/String;)V

    .line 1245
    .end local v0           #dataCPLogDirectory:Ljava/io/File;
    .end local v1           #dataLogDirectory:Ljava/io/File;
    .end local v4           #sdcardLogDirectory:Ljava/io/File;
    :cond_277
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mExit:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$2900(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_284

    .line 1246
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->checkAndFinishSysDump()V
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3000(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    .line 1256
    :cond_284
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleFd:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_29e

    .line 1257
    const-string v5, "sysDump"

    const-string v6, "[f-d] toggle btn clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$900()Z

    move-result v5

    if-eqz v5, :cond_2b3

    .line 1260
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->EnableFastDormancy(Z)V
    invoke-static {v5, v10}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3100(Lcom/sec/android/app/servicemodeapp/SysDump;Z)V

    .line 1264
    :cond_29e
    :goto_29e
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v5

    if-ne p1, v5, :cond_1b

    .line 1266
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1100()I

    move-result v5

    if-nez v5, :cond_2b9

    .line 1267
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->RamdumpMode(I)V
    invoke-static {v5, v9}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3200(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto/16 :goto_1b

    .line 1262
    :cond_2b3
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->EnableFastDormancy(Z)V
    invoke-static {v5, v9}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3100(Lcom/sec/android/app/servicemodeapp/SysDump;Z)V

    goto :goto_29e

    .line 1268
    :cond_2b9
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1100()I

    move-result v5

    if-ne v5, v9, :cond_2c6

    .line 1269
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->RamdumpMode(I)V
    invoke-static {v5, v12}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3200(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto/16 :goto_1b

    .line 1270
    :cond_2c6
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1100()I

    move-result v5

    if-ne v5, v12, :cond_2d3

    .line 1271
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->RamdumpMode(I)V
    invoke-static {v5, v11}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3200(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto/16 :goto_1b

    .line 1272
    :cond_2d3
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1100()I

    move-result v5

    if-ne v5, v11, :cond_1b

    .line 1273
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/SysDump$2;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->RamdumpMode(I)V
    invoke-static {v5, v10}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$3200(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto/16 :goto_1b

    .line 1063
    :catch_2e0
    move-exception v5

    goto/16 :goto_6b
.end method
