.class Lcom/arcsoft/widget/QuickView$7;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Lcom/arcsoft/android/camera/utils/ampv$ampv_FileListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/QuickView;->initAMPV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCurretIndex(I)I
    .registers 3
    .parameter "UserData"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 702
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/arcsoft/widget/QuickView$FileListCallback;->onGetCurretIndex(I)I

    move-result v0

    .line 704
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onGetFileCount(I)I
    .registers 3
    .parameter "UserData"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 710
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/arcsoft/widget/QuickView$FileListCallback;->onGetFileCount(I)I

    move-result v0

    .line 712
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onGetFileName(II[B)I
    .registers 6
    .parameter "index"
    .parameter "UserData"
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .line 718
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v1}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 719
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/arcsoft/widget/QuickView$FileListCallback;->onGetFileName(II[B)I

    move-result v0

    .line 722
    :goto_13
    return v0

    .line 721
    :cond_14
    aput-byte v0, p3, v0

    goto :goto_13
.end method

.method public onGetFileType(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 730
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$7;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/arcsoft/widget/QuickView$FileListCallback;->onGetFileType(I)I

    move-result v0

    .line 732
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
