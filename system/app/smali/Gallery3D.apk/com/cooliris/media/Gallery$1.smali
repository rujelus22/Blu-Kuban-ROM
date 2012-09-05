.class Lcom/cooliris/media/Gallery$1;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cooliris/media/Gallery$1;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 191
    :goto_5
    return-void

    .line 177
    :pswitch_6
    iget-object v0, p0, Lcom/cooliris/media/Gallery$1;->this$0:Lcom/cooliris/media/Gallery;

    #calls: Lcom/cooliris/media/Gallery;->checkStorage()V
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$000(Lcom/cooliris/media/Gallery;)V

    goto :goto_5

    .line 180
    :pswitch_c
    iget-object v0, p0, Lcom/cooliris/media/Gallery$1;->this$0:Lcom/cooliris/media/Gallery;

    #calls: Lcom/cooliris/media/Gallery;->initializeDataSource()V
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$100(Lcom/cooliris/media/Gallery;)V

    goto :goto_5

    .line 184
    :pswitch_12
    const-string v0, "Gallery"

    const-string v1, "Got CALL_DELETE_SELECTION and run mGridLayer.deleteSelection()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/cooliris/media/Gallery$1;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deleteSelection()V

    goto :goto_5

    .line 175
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method
