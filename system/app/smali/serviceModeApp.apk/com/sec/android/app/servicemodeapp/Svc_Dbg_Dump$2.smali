.class Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;
.super Ljava/lang/Object;
.source "Svc_Dbg_Dump.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)V
    .registers 2
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    const/4 v2, 0x6

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPALL:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$100(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_32

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v2, v4}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 746
    const-string v0, "SvcDbgDump"

    const-string v1, "all clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "ALL"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 754
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPMsg:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$500(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5f

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v2, v5}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 760
    const-string v0, "SvcDbgDump"

    const-string v1, "msg clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "MSG"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 768
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$600(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_8c

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v2, v6}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 774
    const-string v0, "SvcDbgDump"

    const-string v1, "cp_log clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "CP_LOG"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 782
    :cond_8c
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPCPLog2:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$700(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_ba

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v2, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 788
    const-string v0, "SvcDbgDump"

    const-string v1, "cp_log2 clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "CP_LOG2"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 796
    :cond_ba
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPRamDump:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$800(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_e8

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v2, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 802
    const-string v0, "SvcDbgDump"

    const-string v1, "ramdump clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "RAMDUMP"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 808
    :cond_e8
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLoopBack:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$900(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_115

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v3, v5}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 814
    const-string v0, "SvcDbgDump"

    const-string v1, "mCPDBGStringLoopBack clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "mCPDBGStringLoopBack"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 820
    :cond_115
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringMSG:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$1000(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_142

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v3, v6}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 826
    const-string v0, "SvcDbgDump"

    const-string v1, "mCPDBGStringMSG clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "mCPDBGStringMSG"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 832
    :cond_142
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG1:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$1100(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_170

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v3, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 838
    const-string v0, "SvcDbgDump"

    const-string v1, "mCPDBGStringLOG1 clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "mCPDBGStringLOG1"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 844
    :cond_170
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringLOG2:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$1200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_19e

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v3, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 850
    const-string v0, "SvcDbgDump"

    const-string v1, "mCPDBGStringLOG2 clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "mCPDBGStringLOG2"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 856
    :cond_19e
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mCPDBGStringDisable:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$1300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1cb

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mOem:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$200(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->SendData(II)V
    invoke-static {v0, v3, v4}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$300(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;II)V

    .line 862
    const-string v0, "SvcDbgDump"

    const-string v1, "mCPDBGStringDisable clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    const-string v1, "mCPDBGStringDisable"

    #calls: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;Ljava/lang/String;)V

    .line 870
    :cond_1cb
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    #getter for: Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->mExit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->access$1400(Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1d8

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump$2;->this$0:Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/Svc_Dbg_Dump;->finish()V

    .line 880
    :cond_1d8
    return-void
.end method
