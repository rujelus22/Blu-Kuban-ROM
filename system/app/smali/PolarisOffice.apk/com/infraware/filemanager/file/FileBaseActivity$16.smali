.class Lcom/infraware/filemanager/file/FileBaseActivity$16;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->isFindByPositionAction(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iput p2, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->val$x:I

    iput p3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->val$y:I

    .line 1786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1791
    :try_start_0
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget v4, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->val$x:I

    iget v5, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->val$y:I

    invoke-virtual {v3, v4, v5}, Lcom/infraware/filemanager/file/FileBaseActivity;->getFileByPosition(II)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1793
    .local v0, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1794
    .local v1, fileName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "0"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "filepath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    iget-object v3, p0, Lcom/infraware/filemanager/file/FileBaseActivity$16;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v3, v2}, Lcom/infraware/filemanager/file/FileBaseActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 1800
    .end local v0           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_21
    return-void

    .line 1798
    :catch_22
    move-exception v3

    goto :goto_21
.end method
