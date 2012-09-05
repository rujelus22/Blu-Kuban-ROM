.class Lcom/cooliris/media/Gallery$5;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/cooliris/media/Gallery$5;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 763
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 773
    :goto_5
    return-void

    .line 765
    :pswitch_6
    iget-object v0, p0, Lcom/cooliris/media/Gallery$5;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v1, p0, Lcom/cooliris/media/Gallery$5;->this$0:Lcom/cooliris/media/Gallery;

    invoke-static {v1}, Lcom/cooliris/media/PicasaDataSource;->getAccountStatus(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    #setter for: Lcom/cooliris/media/Gallery;->mAccountsEnabled:Ljava/util/HashMap;
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1202(Lcom/cooliris/media/Gallery;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_5

    .line 768
    :pswitch_12
    iget-object v0, p0, Lcom/cooliris/media/Gallery$5;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->updatePicasaAccountStatus()V

    goto :goto_5

    .line 763
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
    .end packed-switch
.end method
