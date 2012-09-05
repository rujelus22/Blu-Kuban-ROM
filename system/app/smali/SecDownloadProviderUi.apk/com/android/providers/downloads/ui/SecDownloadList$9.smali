.class Lcom/android/providers/downloads/ui/SecDownloadList$9;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$9;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/SecDownloadList$9;->val$downloadId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$9;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$9;->val$downloadId:J

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->deleteDownload(J)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1700(Lcom/android/providers/downloads/ui/SecDownloadList;J)V

    .line 684
    return-void
.end method
