.class Lcom/infraware/polarisoffice/OfficeFileManager$22;
.super Ljava/lang/Object;
.source "OfficeFileManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeFileManager;->startProgressing(IILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$22;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 3071
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
    const/4 v0, 0x0

    .line 3075
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeFileManager$22;->this$0:Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->setUpdateState(Z)V

    .line 3077
    invoke-static {p2}, Lcom/infraware/common/util/Utils;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3080
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method
