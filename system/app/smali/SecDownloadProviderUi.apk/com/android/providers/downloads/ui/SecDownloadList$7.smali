.class Lcom/android/providers/downloads/ui/SecDownloadList$7;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->setupViews()V
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
    .line 364
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$7;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$7;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1100(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 369
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadList$7;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$7;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    #getter for: Lcom/android/providers/downloads/ui/SecDownloadList;->mSizeSortedCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1100(Lcom/android/providers/downloads/ui/SecDownloadList;)Landroid/database/Cursor;

    move-result-object v1

    #calls: Lcom/android/providers/downloads/ui/SecDownloadList;->handleItemClick(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$1000(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V

    .line 370
    return-void
.end method
