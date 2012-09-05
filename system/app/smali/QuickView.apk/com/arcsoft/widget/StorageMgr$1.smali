.class Lcom/arcsoft/widget/StorageMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/StorageMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/StorageMgr;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/StorageMgr;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 70
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 71
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    const/16 v2, 0x11

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    .line 98
    :cond_22
    :goto_22
    return-void

    .line 73
    :cond_23
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 74
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 75
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    const/16 v2, 0x12

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto :goto_22

    .line 77
    :cond_3f
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 78
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 79
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    const/16 v2, 0x13

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto :goto_22

    .line 81
    :cond_5b
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 82
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 83
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto :goto_22

    .line 85
    :cond_75
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 86
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 87
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto :goto_22

    .line 89
    :cond_8f
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 90
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 91
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto/16 :goto_22

    .line 93
    :cond_aa
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 94
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 95
    iget-object v1, p0, Lcom/arcsoft/widget/StorageMgr$1;->this$0:Lcom/arcsoft/widget/StorageMgr;

    #getter for: Lcom/arcsoft/widget/StorageMgr;->mIBase:Lcom/arcsoft/widget/IBase;
    invoke-static {v1}, Lcom/arcsoft/widget/StorageMgr;->access$000(Lcom/arcsoft/widget/StorageMgr;)Lcom/arcsoft/widget/IBase;

    move-result-object v1

    const/16 v2, 0x15

    invoke-interface {v1, v2, v3}, Lcom/arcsoft/widget/IBase;->onNotify(ILjava/lang/Object;)I

    goto/16 :goto_22
.end method
