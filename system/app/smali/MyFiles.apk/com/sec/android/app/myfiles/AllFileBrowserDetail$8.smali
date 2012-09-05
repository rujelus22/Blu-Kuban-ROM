.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;
.super Ljava/lang/Object;
.source "AllFileBrowserDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #setter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I
    invoke-static {v0, p2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$702(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;I)I

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentSortBy:I
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$700(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentSortBy(I)V

    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->browseToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$000(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    .line 318
    return-void
.end method
