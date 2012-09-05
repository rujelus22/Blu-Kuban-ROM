.class Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;
.super Ljava/lang/Object;
.source "ServiceModeApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)V
    .registers 2
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 21
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 584
    const-string v2, "ServiceMode"

    const-string v3, "In setOnItemClickListener!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v2, "ServiceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v2, "ServiceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$000(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)[Ljava/lang/String;

    move-result-object v2

    aget-object v12, v2, p3

    .line 593
    .local v12, row:Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string v2, "]"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 596
    const-string v2, "]"

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 597
    .local v9, index2:I
    const-string v2, "["

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 598
    .local v8, index1:I
    const-string v2, "ServiceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index2 is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v2, "ServiceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index1 is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v13, "  "

    .line 603
    .local v13, space:Ljava/lang/String;
    const-string v14, "*"

    .line 605
    .local v14, star:Ljava/lang/String;
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v12, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 606
    .local v11, num:Ljava/lang/String;
    const-string v2, "ServiceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 610
    :cond_bd
    const-string v2, "ServiceMode"

    const-string v3, "Empty number : [  ] or *"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v8           #index1:I
    .end local v9           #index2:I
    .end local v11           #num:Ljava/lang/String;
    .end local v13           #space:Ljava/lang/String;
    .end local v14           #star:Ljava/lang/String;
    :cond_c4
    :goto_c4
    return-void

    .line 614
    .restart local v8       #index1:I
    .restart local v9       #index2:I
    .restart local v11       #num:Ljava/lang/String;
    .restart local v13       #space:Ljava/lang/String;
    .restart local v14       #star:Ljava/lang/String;
    :cond_c5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 615
    .local v10, line:I
    const-string v2, "ServiceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->ParseKeyValueToIPCDefineValue(I)C
    invoke-static {v6, v10}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$600(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;I)C

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$2;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V
    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$400(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;CCCCC)V

    goto :goto_c4
.end method
