.class Lcom/cooliris/media/CropImage$1;
.super Landroid/os/Handler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #calls: Lcom/cooliris/media/CropImage;->startFaceDetection()V
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$000(Lcom/cooliris/media/CropImage;)V

    .line 177
    return-void
.end method
