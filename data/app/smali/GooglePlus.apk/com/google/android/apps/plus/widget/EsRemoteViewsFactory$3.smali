.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->onDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    iput p2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 9
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    const v5, 0x7f090291

    const/4 v4, 0x3

    const/16 v3, 0x258

    .line 609
    const-string v0, "EsRemoteViewsFactory"

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 610
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] image setBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_38
    if-nez p2, :cond_107

    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_107

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    move-result-object v0

    if-ne v0, p0, :cond_107

    .line 617
    const-string v0, "EsRemoteViewsFactory"

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 618
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] image setBitmap: criteria passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_a3
    if-eqz p1, :cond_d8

    .line 626
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v3, :cond_b1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v3, :cond_b5

    .line 629
    :cond_b1
    invoke-static {p1, v3, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeAndCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 634
    :cond_b5
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 640
    :cond_d8
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLoaded:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$802(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 643
    :try_start_f5
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$3;->val$index:I

    aget-object v0, v0, v2

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mImageLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 644
    monitor-exit v1

    .line 646
    :cond_107
    return-void

    .line 644
    :catchall_108
    move-exception v0

    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_f5 .. :try_end_10a} :catchall_108

    throw v0
.end method
