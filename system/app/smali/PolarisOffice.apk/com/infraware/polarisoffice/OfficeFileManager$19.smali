.class Lcom/infraware/polarisoffice/OfficeFileManager$19;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$19;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 2989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$19;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 2994
    const/4 v0, 0x1

    return v0
.end method
