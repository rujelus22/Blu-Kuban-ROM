.class Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$1;
.super Ljava/lang/Object;
.source "UnzipProgressHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$1;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$1;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    const/4 v1, 0x1

    #setter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$0(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Z)V

    .line 122
    return-void
.end method
