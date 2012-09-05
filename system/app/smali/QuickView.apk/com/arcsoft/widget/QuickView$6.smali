.class Lcom/arcsoft/widget/QuickView$6;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Lcom/arcsoft/android/camera/utils/ampv$ampv_GetThumbCallback;


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
    .line 688
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$6;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetThumbCallback(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "index"
    .parameter "UserData"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$6;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 692
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$6;->this$0:Lcom/arcsoft/widget/QuickView;

    #getter for: Lcom/arcsoft/widget/QuickView;->mFileListCallback:Lcom/arcsoft/widget/QuickView$FileListCallback;
    invoke-static {v0}, Lcom/arcsoft/widget/QuickView;->access$2000(Lcom/arcsoft/widget/QuickView;)Lcom/arcsoft/widget/QuickView$FileListCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/arcsoft/widget/QuickView$FileListCallback;->onGetThumbCallback(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
