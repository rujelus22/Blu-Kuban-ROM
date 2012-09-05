.class Lcom/infraware/polarisoffice/OfficeFileManager$12;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->createWebFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

.field private final synthetic val$serviceType:I

.field private final synthetic val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;Lcom/infraware/filemanager/webstorage/WebStorageAPI;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iput-object p2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iput p3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->val$serviceType:I

    .line 2210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->val$webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    iget v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->val$serviceType:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strStorageId:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$41(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strPostName:Ljava/lang/String;
    invoke-static {v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$42(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createFolder(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2215
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    .line 2220
    :goto_1b
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPostAction(I)V

    .line 2221
    return-void

    .line 2218
    :cond_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$12;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v2, 0x7f0800b2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_1b
.end method
