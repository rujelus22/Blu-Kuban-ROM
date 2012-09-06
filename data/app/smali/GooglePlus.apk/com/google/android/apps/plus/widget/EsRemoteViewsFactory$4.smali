.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;
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
    .line 649
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    iput p2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 7
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    const/4 v3, 0x3

    .line 652
    const-string v0, "EsRemoteViewsFactory"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 653
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] avatar setBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_33
    if-nez p2, :cond_e1

    iget v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_e1

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarConsumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    move-result-object v0

    if-ne v0, p0, :cond_e1

    .line 660
    const-string v0, "EsRemoteViewsFactory"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 661
    const-string v0, "EsRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] avatar setBitmap: criteria passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_9e
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mRemoteView:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f09028a

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 668
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLoaded:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$702(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;Z)Z

    .line 670
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v1

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 671
    :try_start_cf
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mRemoteViewInfos:[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$4;->val$index:I

    aget-object v0, v0, v2

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->mAvatarLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$RemoteViewInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 672
    monitor-exit v1

    .line 674
    :cond_e1
    return-void

    .line 672
    :catchall_e2
    move-exception v0

    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_cf .. :try_end_e4} :catchall_e2

    throw v0
.end method
