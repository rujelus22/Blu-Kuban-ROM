.class Lcom/infraware/polarisoffice/OfficeFileManager$3;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeFileManager;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeFileManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nAction:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$21(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v0

    sparse-switch v0, :sswitch_data_80

    .line 259
    :goto_a
    return-void

    .line 222
    :sswitch_b
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$22(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$23(Lcom/infraware/polarisoffice/OfficeFileManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->setStorageType(ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$22(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v1

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->setContext(I)V
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$24(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    .line 225
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nLoginType:I
    invoke-static {v0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$25(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    .line 226
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const-string v1, ""

    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_strLoginId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$26(Lcom/infraware/polarisoffice/OfficeFileManager;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onUpdateList()V

    goto :goto_a

    .line 230
    :sswitch_39
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #getter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nStorageType:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$3(Lcom/infraware/polarisoffice/OfficeFileManager;)I

    move-result v1

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->setContext(I)V
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$24(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    goto :goto_a

    .line 233
    :sswitch_45
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->createWebFolder()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$27(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 236
    :sswitch_4b
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->deleteWebFile()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$28(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 239
    :sswitch_51
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->renameWebFile()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$29(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 242
    :sswitch_57
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->uploadWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$30(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 245
    :sswitch_5d
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I
    invoke-static {v0, v3}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$31(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    .line 246
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->downloadWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$32(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 249
    :sswitch_68
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/polarisoffice/OfficeFileManager;->m_nDownloadMode:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$31(Lcom/infraware/polarisoffice/OfficeFileManager;I)V

    .line 250
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->downloadWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$32(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 253
    :sswitch_74
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    #calls: Lcom/infraware/polarisoffice/OfficeFileManager;->openWebStorage()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->access$33(Lcom/infraware/polarisoffice/OfficeFileManager;)V

    goto :goto_a

    .line 256
    :sswitch_7a
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$3;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onCloseThread()V

    goto :goto_a

    .line 219
    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_39
        0x3 -> :sswitch_45
        0x4 -> :sswitch_51
        0x5 -> :sswitch_4b
        0xb -> :sswitch_57
        0xc -> :sswitch_5d
        0xd -> :sswitch_68
        0xe -> :sswitch_74
        0x63 -> :sswitch_7a
    .end sparse-switch
.end method
