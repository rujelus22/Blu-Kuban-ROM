.class Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$2;
.super Ljava/lang/Object;
.source "UnzipProgressHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$2;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    .line 124
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    invoke-static {p2}, Lcom/infraware/common/util/Utils;->isSystemKey(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 136
    :goto_8
    return v0

    .line 131
    :cond_9
    const/4 v2, 0x4

    if-ne p2, v2, :cond_12

    .line 132
    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$2;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z
    invoke-static {v2, v1}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$0(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Z)V

    goto :goto_8

    :cond_12
    move v0, v1

    .line 134
    goto :goto_8
.end method
