.class Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;
.super Ljava/lang/Object;
.source "AllFileBrowserThumb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #setter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I
    invoke-static {v0, p2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$702(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;I)I

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentSortBy:I
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$700(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->setCurrentSortBy(I)V

    .line 414
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$8;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->browseToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$000(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    .line 416
    return-void
.end method