.class Lcom/infraware/polarisoffice/common/SaveAsActivity$2;
.super Ljava/lang/Object;
.source "SaveAsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/SaveAsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/SaveAsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$2;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$2;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    #getter for: Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_etFileName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->access$1(Lcom/infraware/polarisoffice/common/SaveAsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$2;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    #getter for: Lcom/infraware/polarisoffice/common/SaveAsActivity;->m_oItem:Lcom/infraware/filemanager/file/FileListItem;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->access$2(Lcom/infraware/polarisoffice/common/SaveAsActivity;)Lcom/infraware/filemanager/file/FileListItem;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 119
    return-void
.end method
