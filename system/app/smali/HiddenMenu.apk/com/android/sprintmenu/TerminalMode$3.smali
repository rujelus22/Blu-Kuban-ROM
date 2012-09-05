.class Lcom/android/sprintmenu/TerminalMode$3;
.super Ljava/lang/Object;
.source "TerminalMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sprintmenu/TerminalMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/TerminalMode;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/TerminalMode;)V
    .registers 2
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v9, 0x14

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 757
    const-string v0, "TerminalMode"

    const-string v3, "In setOnItemClickListener!!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v0, "TerminalMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v0, "TerminalMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v0, "TerminalMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->total_line:I
    invoke-static {v0}, Lcom/android/sprintmenu/TerminalMode;->access$200(Lcom/android/sprintmenu/TerminalMode;)I

    move-result v0

    if-ge p3, v0, :cond_7d

    if-lez p3, :cond_7d

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->key_enable:Z
    invoke-static {v0}, Lcom/android/sprintmenu/TerminalMode;->access$300(Lcom/android/sprintmenu/TerminalMode;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    const-string v3, "Service Menu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 764
    :cond_7d
    const-string v0, "TerminalMode"

    const-string v1, "position OUT of range or key_disable or is NOT menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_84
    return-void

    .line 769
    :cond_85
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mStrings:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/sprintmenu/TerminalMode;->access$500(Lcom/android/sprintmenu/TerminalMode;)[Ljava/lang/String;

    move-result-object v0

    aget-object v8, v0, p3

    .line 770
    .local v8, row:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->selectedString:I
    invoke-static {v0}, Lcom/android/sprintmenu/TerminalMode;->access$600(Lcom/android/sprintmenu/TerminalMode;)I

    move-result v0

    sub-int v7, v0, p3

    .line 773
    .local v7, keyDiff:I
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/4 v3, 0x1

    #setter for: Lcom/android/sprintmenu/TerminalMode;->mNeedQuery:Z
    invoke-static {v0, v3}, Lcom/android/sprintmenu/TerminalMode;->access$1802(Lcom/android/sprintmenu/TerminalMode;Z)Z

    .line 774
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #setter for: Lcom/android/sprintmenu/TerminalMode;->mQueryTimes:I
    invoke-static {v0, v9}, Lcom/android/sprintmenu/TerminalMode;->access$1902(Lcom/android/sprintmenu/TerminalMode;I)I

    .line 776
    if-lez v7, :cond_db

    .line 778
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a3
    if-ge v6, v7, :cond_114

    .line 779
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/16 v4, 0x13

    #calls: Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C
    invoke-static {v3, v4}, Lcom/android/sprintmenu/TerminalMode;->access$2000(Lcom/android/sprintmenu/TerminalMode;I)C

    move-result v4

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    move v5, v2

    #calls: Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V
    invoke-static/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->access$1200(Lcom/android/sprintmenu/TerminalMode;CCCIC)V

    .line 778
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    .line 780
    .end local v6           #i:I
    :cond_db
    if-gez v7, :cond_114

    .line 782
    move v6, v7

    .restart local v6       #i:I
    :goto_de
    if-gez v6, :cond_114

    .line 783
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #calls: Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C
    invoke-static {v3, v9}, Lcom/android/sprintmenu/TerminalMode;->access$2000(Lcom/android/sprintmenu/TerminalMode;I)C

    move-result v4

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    move v5, v2

    #calls: Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V
    invoke-static/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->access$1200(Lcom/android/sprintmenu/TerminalMode;CCCIC)V

    .line 782
    add-int/lit8 v6, v6, 0x1

    goto :goto_de

    .line 786
    .end local v6           #i:I
    :cond_114
    iget-object v0, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    const/16 v4, 0x17

    #calls: Lcom/android/sprintmenu/TerminalMode;->ParseKeyCodeToIPCDefineValue(I)C
    invoke-static {v3, v4}, Lcom/android/sprintmenu/TerminalMode;->access$2000(Lcom/android/sprintmenu/TerminalMode;I)C

    move-result v4

    iget-object v3, p0, Lcom/android/sprintmenu/TerminalMode$3;->this$0:Lcom/android/sprintmenu/TerminalMode;

    #getter for: Lcom/android/sprintmenu/TerminalMode;->mOem:Lcom/android/sprintmenu/TerminalMode$OemCommands;
    invoke-static {v3}, Lcom/android/sprintmenu/TerminalMode;->access$1000(Lcom/android/sprintmenu/TerminalMode;)Lcom/android/sprintmenu/TerminalMode$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    move v5, v2

    #calls: Lcom/android/sprintmenu/TerminalMode;->SendData(CCCIC)V
    invoke-static/range {v0 .. v5}, Lcom/android/sprintmenu/TerminalMode;->access$1200(Lcom/android/sprintmenu/TerminalMode;CCCIC)V

    goto/16 :goto_84
.end method
