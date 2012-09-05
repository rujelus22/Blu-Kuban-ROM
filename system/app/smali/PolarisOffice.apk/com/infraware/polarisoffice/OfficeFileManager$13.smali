.class Lcom/infraware/polarisoffice/OfficeFileManager$13;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->deleteWebFile()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$13;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 2245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2249
    invoke-static {p2}, Lcom/infraware/common/util/Utils;->isSystemKey(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2250
    const/4 v0, 0x0

    .line 2256
    :goto_7
    return v0

    .line 2252
    :cond_8
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$13;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v1, 0x7f08030e

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 2253
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$13;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$13;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    .line 2256
    :goto_27
    const/4 v0, 0x1

    goto :goto_7

    .line 2255
    :cond_29
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$13;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$13;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onToastMessage(Ljava/lang/String;)V

    goto :goto_27
.end method
