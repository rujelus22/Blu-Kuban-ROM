.class Lcom/infraware/polarisoffice/OfficeFileManager$7;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$7;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 491
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
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeFileManager$7;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 496
    return v1
.end method
