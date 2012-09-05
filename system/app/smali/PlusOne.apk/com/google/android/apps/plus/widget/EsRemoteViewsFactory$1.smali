.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursorLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 97
    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    if-nez v1, :cond_26

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$202(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 104
    :cond_26
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 105
    :cond_3a
    monitor-exit v10

    .line 152
    :goto_3b
    return-void

    .line 108
    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 112
    .local v9, numStreamRowViews:I
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$302(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 115
    :cond_63
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$302(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    new-instance v2, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$402(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mServiceListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsWidgetServiceListener;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    new-instance v2, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;-><init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$502(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/AvatarCache;->registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$600(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAvatarCacheListener:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$EsAvatarCacheListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/AvatarCache;->registerRequestCompleteListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;)V

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoadLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$700(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_b3
    .catchall {:try_start_7 .. :try_end_b3} :catchall_15b

    .line 126
    :try_start_b3
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageUrlsToLoad:Ljava/util/Set;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 129
    const/4 v8, 0x0

    .local v8, i:I
    :goto_c6
    if-ge v8, v9, :cond_116

    .line 130
    new-instance v0, Lcom/google/android/apps/plus/views/StreamRowView;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/StreamRowView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, streamRowView:Lcom/google/android/apps/plus/views/StreamRowView;
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/views/StreamRowView;->bindView(Lcom/google/android/apps/plus/views/StreamRowView;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;ZZLjava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageUrlsToLoad:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/StreamRowView;->gatherUncachedImagesForRemoteViews(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCachedStreamRowViews:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 129
    add-int/lit8 v8, v8, 0x1

    goto :goto_c6

    .line 139
    .end local v0           #streamRowView:Lcom/google/android/apps/plus/views/StreamRowView;
    :cond_116
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImageUrlsToLoad:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$800(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mUserIdImagesToLoad:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$900(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v1

    if-nez v1, :cond_15e

    .line 141
    const-string v1, "EsRemoteViewsFactory"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 142
    const-string v1, "EsRemoteViewsFactory"

    const-string v2, "cleaning up - no images to load"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_148
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mCleanupRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1200(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    monitor-exit v11
    :try_end_158
    .catchall {:try_start_b3 .. :try_end_158} :catchall_173

    :try_start_158
    monitor-exit v10

    goto/16 :goto_3b

    .line 151
    .end local v8           #i:I
    .end local v9           #numStreamRowViews:I
    :catchall_15b
    move-exception v1

    monitor-exit v10
    :try_end_15d
    .catchall {:try_start_158 .. :try_end_15d} :catchall_15b

    throw v1

    .line 148
    .restart local v8       #i:I
    .restart local v9       #numStreamRowViews:I
    :cond_15e
    :try_start_15e
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesLoaded:I
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1402(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$1;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mTotalImagesToLoad:I
    invoke-static {v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v2

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mImagesToLoadThreshold:I
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1502(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;I)I

    .line 150
    monitor-exit v11
    :try_end_170
    .catchall {:try_start_15e .. :try_end_170} :catchall_173

    .line 151
    :try_start_170
    monitor-exit v10
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_15b

    goto/16 :goto_3b

    .line 150
    .end local v8           #i:I
    :catchall_173
    move-exception v1

    :try_start_174
    monitor-exit v11
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    :try_start_175
    throw v1
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_15b
.end method
