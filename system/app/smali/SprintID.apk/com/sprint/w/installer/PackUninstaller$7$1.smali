.class Lcom/sprint/w/installer/PackUninstaller$7$1;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackUninstaller$7;

.field final synthetic val$aApps:Ljava/util/ArrayList;

.field final synthetic val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

.field final synthetic val$tIC:F

.field final synthetic val$tIR:F


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller$7;FFLcom/sprint/w/installer/service/SprintIDServiceConnection;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iput p2, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$tIR:F

    iput p3, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$tIC:F

    iput-object p4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    iput-object p5, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$aApps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 818
    iget v3, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$tIR:F

    .line 819
    .local v3, tItemsRemoved:F
    iget v2, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$tIC:F

    .line 820
    .local v2, tItemCnt:F
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v5}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v5

    #setter for: Lcom/sprint/w/installer/PackUninstaller;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v4, v5}, Lcom/sprint/w/installer/PackUninstaller;->access$902(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/id/ISprintIDService;)Lcom/sprint/id/ISprintIDService;

    .line 821
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #getter for: Lcom/sprint/w/installer/PackUninstaller;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v4}, Lcom/sprint/w/installer/PackUninstaller;->access$900(Lcom/sprint/w/installer/PackUninstaller;)Lcom/sprint/id/ISprintIDService;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 823
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$aApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackUninstaller$Item;

    .line 824
    .local v0, i:Lcom/sprint/w/installer/PackUninstaller$Item;
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v6, v6, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const v7, 0x7f06004d

    invoke-virtual {v6, v7}, Lcom/sprint/w/installer/PackUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sprint/w/installer/PackUninstaller$Item;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f80

    add-float/2addr v3, v6

    div-float v6, v3, v2

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Lcom/sprint/w/installer/PackUninstaller;->setProgressMessage(Ljava/lang/String;I)V
    invoke-static {v4, v5, v6}, Lcom/sprint/w/installer/PackUninstaller;->access$600(Lcom/sprint/w/installer/PackUninstaller;Ljava/lang/String;I)V

    .line 825
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->uninstallApp(Lcom/sprint/w/installer/PackUninstaller$Item;)V
    invoke-static {v4, v0}, Lcom/sprint/w/installer/PackUninstaller;->access$1000(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/w/installer/PackUninstaller$Item;)V

    goto :goto_21

    .line 828
    .end local v0           #i:Lcom/sprint/w/installer/PackUninstaller$Item;
    :cond_6f
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->val$conn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/PackUninstaller;->unbindService(Landroid/content/ServiceConnection;)V

    .line 829
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v5, 0x0

    #setter for: Lcom/sprint/w/installer/PackUninstaller;->mService:Lcom/sprint/id/ISprintIDService;
    invoke-static {v4, v5}, Lcom/sprint/w/installer/PackUninstaller;->access$902(Lcom/sprint/w/installer/PackUninstaller;Lcom/sprint/id/ISprintIDService;)Lcom/sprint/id/ISprintIDService;

    .line 832
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_80
    iget-object v4, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v4, v4, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, p0, Lcom/sprint/w/installer/PackUninstaller$7$1;->this$1:Lcom/sprint/w/installer/PackUninstaller$7;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller$7;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v5, v5, Lcom/sprint/w/installer/PackUninstaller;->mUninstallAllDone:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sprint/w/installer/PackUninstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 833
    return-void
.end method
