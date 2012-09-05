.class Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;
.super Ljava/lang/Object;
.source "EvBaseThumbnailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->OnDrawThumbnailBitmap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

.field private final synthetic val$nPageNum:I


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    iput p2, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;->val$nPageNum:I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mThumbnailAdapter:Lcom/infraware/polarisoffice/common/ThumbnailAdapter;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$6(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/polarisoffice/common/ThumbnailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ThumbnailAdapter;->notifyDataSetChanged()V

    .line 182
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;->val$nPageNum:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 184
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->mHandler:Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;)Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity$RequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    return-void
.end method
