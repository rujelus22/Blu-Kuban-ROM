.class Lcom/sec/android/app/myfiles/AllFileBrowser$8;
.super Ljava/lang/Object;
.source "AllFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowser;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #setter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I
    invoke-static {v0, p2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$702(Lcom/sec/android/app/myfiles/AllFileBrowser;I)I

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentSortBy:I
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$700(Lcom/sec/android/app/myfiles/AllFileBrowser;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentSortBy(I)V

    .line 323
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowser;->browseToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$000(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    .line 325
    return-void
.end method
