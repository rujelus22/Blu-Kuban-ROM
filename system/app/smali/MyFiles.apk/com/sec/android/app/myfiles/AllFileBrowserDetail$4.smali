.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;
.super Ljava/lang/Object;
.source "AllFileBrowserDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

.field final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->val$file:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 261
    .local v0, firstPostion:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$4;->val$file:Ljava/lang/String;

    const/4 v4, 0x1

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->startManagedFileBrowser(ILjava/lang/String;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$600(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;ILjava/lang/String;Z)V

    .line 263
    return-void
.end method
