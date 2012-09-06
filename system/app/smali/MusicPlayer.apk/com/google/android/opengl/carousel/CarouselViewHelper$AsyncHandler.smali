.class Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;
.super Landroid/os/Handler;
.source "CarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/carousel/CarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/carousel/CarouselViewHelper;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    .line 126
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const v6, 0x3d0900

    const/4 v7, 0x0

    .line 131
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 132
    .local v1, id:I
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mCarouselView:Lcom/google/android/opengl/carousel/CarouselView;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$200(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/opengl/carousel/CarouselView;->getCardCount()I

    move-result v4

    if-lt v1, v4, :cond_2b

    .line 133
    const-string v4, "CarouselViewHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of range for get, card:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2a
    :goto_2a
    return-void

    .line 137
    :cond_2b
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0xf4240

    if-lt v4, v5, :cond_36

    iget v4, p1, Landroid/os/Message;->what:I

    if-le v4, v6, :cond_4f

    .line 138
    :cond_36
    const-string v4, "CarouselViewHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 141
    :cond_4f
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x1e8480

    if-ge v4, v5, :cond_85

    .line 143
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6c

    .line 145
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$300(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 147
    :cond_6c
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;

    move-result-object v3

    .line 148
    .local v3, params:Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    if-eqz v3, :cond_2a

    .line 149
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$300(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, v3, Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;->mMatrix:[F

    invoke-virtual {v4, v5, v1, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2a

    .line 152
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #params:Lcom/google/android/opengl/carousel/CarouselViewHelper$TextureParameters;
    :cond_85
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2dc6c0

    if-ge v4, v5, :cond_a1

    .line 154
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getDetailTexture(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$300(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2a

    .line 158
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_a1
    iget v4, p1, Landroid/os/Message;->what:I

    if-ge v4, v6, :cond_2a

    .line 160
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    invoke-virtual {v4, v1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->getGeometry(I)Lcom/google/android/opengl/carousel/Mesh;

    move-result-object v2

    .line 161
    .local v2, mesh:Lcom/google/android/opengl/carousel/Mesh;
    iget-object v4, p0, Lcom/google/android/opengl/carousel/CarouselViewHelper$AsyncHandler;->this$0:Lcom/google/android/opengl/carousel/CarouselViewHelper;

    #getter for: Lcom/google/android/opengl/carousel/CarouselViewHelper;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->access$300(Lcom/google/android/opengl/carousel/CarouselViewHelper;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2a
.end method
