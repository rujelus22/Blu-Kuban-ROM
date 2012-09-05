.class Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$3;
.super Ljava/lang/Object;
.source "UnzipProgressHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$3;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$3;->this$0:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;

    #getter for: Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;
    invoke-static {v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/filemanager/file/FileBaseActivity;->onUpdateMedia()V

    .line 144
    return-void
.end method
