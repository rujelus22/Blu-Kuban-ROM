.class Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;
.super Ljava/lang/Object;
.source "EsPhotoWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 106
    const/4 v8, 0x0

    .line 108
    .local v8, needsRefresh:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContentsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$500(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 109
    :try_start_8
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$602(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;I)I

    .line 110
    const/4 v7, 0x0

    .local v7, i:I
    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsInUse:I
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$700(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I

    move-result v0

    if-ge v7, v0, :cond_10a

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    iget-boolean v0, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRequested:Z

    if-nez v0, :cond_f2

    .line 113
    const-string v0, "EsPhotoRVFactory"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 114
    const-string v0, "EsPhotoRVFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v2

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_6a
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRequested:Z

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$900(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v2

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 123
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_f6

    .line 124
    const-string v0, "EsPhotoRVFactory"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 125
    const-string v0, "EsPhotoRVFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found in image cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v2

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRef:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_c5
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300b4

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mRemoteViews:Landroid/widget/RemoteViews;

    const v1, 0x7f0d01b0

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 132
    const/4 v8, 0x1

    .line 110
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_f2
    :goto_f2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f

    .line 134
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_f6
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotContents:[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)[Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;

    move-result-object v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$SlotContents;->mNeedsImage:Z

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$604(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I

    goto :goto_f2

    .line 139
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #i:I
    :catchall_107
    move-exception v0

    monitor-exit v9
    :try_end_109
    .catchall {:try_start_8 .. :try_end_109} :catchall_107

    throw v0

    .restart local v7       #i:I
    :cond_10a
    :try_start_10a
    monitor-exit v9
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_107

    .line 141
    if-eqz v8, :cond_133

    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mSlotsWithoutImages:I
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$600(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)I

    move-result v0

    if-gtz v0, :cond_133

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->mNotifyDataChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsPhotoRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :cond_133
    return-void
.end method
