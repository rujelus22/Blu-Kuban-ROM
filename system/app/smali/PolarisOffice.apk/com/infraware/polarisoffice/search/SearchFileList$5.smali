.class Lcom/infraware/polarisoffice/search/SearchFileList$5;
.super Ljava/lang/Object;
.source "SearchFileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/search/SearchFileList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/SearchFileList;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/SearchFileList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/SearchFileList$5;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/SearchFileList$5;->this$0:Lcom/infraware/polarisoffice/search/SearchFileList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/search/SearchFileList;->setUpdateState(Z)V

    .line 312
    return-void
.end method
