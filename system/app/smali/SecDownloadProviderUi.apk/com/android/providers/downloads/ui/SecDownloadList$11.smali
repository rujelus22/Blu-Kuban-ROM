.class Lcom/android/providers/downloads/ui/SecDownloadList$11;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->handleItemClick(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$11;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$11;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #setter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDownloadId:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1902(Lcom/android/providers/downloads/ui/SecDownloadList;Ljava/lang/Long;)Ljava/lang/Long;

    .line 754
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$11;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #setter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mQueuedDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$2002(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 755
    return-void
.end method
