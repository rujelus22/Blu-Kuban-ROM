.class Lcom/android/providers/downloads/ui/DownloadList$11;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$11;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$11;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->deleteAllDownload()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$2000(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 825
    return-void
.end method
