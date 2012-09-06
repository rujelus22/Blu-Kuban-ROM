.class Lcom/google/android/picasastore/PicasaPhotoContentProvider$2;
.super Landroid/os/Handler;
.source "PicasaPhotoContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/PicasaPhotoContentProvider;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider$2;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 133
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 130
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider$2;->this$0:Lcom/google/android/picasastore/PicasaPhotoContentProvider;

    #calls: Lcom/google/android/picasastore/PicasaPhotoContentProvider;->onFsIdChanged()V
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->access$000(Lcom/google/android/picasastore/PicasaPhotoContentProvider;)V

    .line 135
    return-void

    .line 128
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method
