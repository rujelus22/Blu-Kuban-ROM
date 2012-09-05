.class Lcom/android/providers/downloads/ui/SecDownloadList$2;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->onCreate(Landroid/os/Bundle;)V
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
    .line 273
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$2;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$2;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$2;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$600(Lcom/android/providers/downloads/ui/SecDownloadList;)Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_b
    #setter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mIsSortedBySize:Z
    invoke-static {v1, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$602(Lcom/android/providers/downloads/ui/SecDownloadList;Z)Z

    .line 279
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$2;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$100(Lcom/android/providers/downloads/ui/SecDownloadList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 280
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$2;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->chooseListToShow()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$200(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    .line 281
    return-void

    .line 277
    :cond_1d
    const/4 v0, 0x0

    goto :goto_b
.end method
