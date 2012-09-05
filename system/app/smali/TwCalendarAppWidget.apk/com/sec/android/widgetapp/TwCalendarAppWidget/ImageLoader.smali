.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$BitmapDisplayer;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

.field photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "ImageLoader"

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->cache:Ljava/util/HashMap;

    .line 137
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    .line 205
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    .line 47
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->setPriority(I)V

    .line 48
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "url"

    .prologue
    const/4 v12, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 89
    .local v7, contactId:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    :try_start_a
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 95
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_49

    move-result v7

    .line 98
    :cond_2a
    if-eqz v6, :cond_2f

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_2f
    const/4 v1, -0x1

    if-eq v7, v1, :cond_55

    .line 103
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v7

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 104
    .local v11, uri:Landroid/net/Uri;
    invoke-static {v0, v11}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 105
    .local v10, photoInputStream:Ljava/io/InputStream;
    if-eqz v10, :cond_55

    .line 106
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 108
    .local v9, photo:Landroid/graphics/Bitmap;
    :try_start_43
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_50

    .line 112
    :goto_46
    if-eqz v9, :cond_55

    .line 119
    .end local v9           #photo:Landroid/graphics/Bitmap;
    .end local v10           #photoInputStream:Ljava/io/InputStream;
    .end local v11           #uri:Landroid/net/Uri;
    :goto_48
    return-object v9

    .line 98
    :catchall_49
    move-exception v1

    if-eqz v6, :cond_4f

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v1

    .line 109
    .restart local v9       #photo:Landroid/graphics/Bitmap;
    .restart local v10       #photoInputStream:Ljava/io/InputStream;
    .restart local v11       #uri:Landroid/net/Uri;
    :catch_50
    move-exception v8

    .line 110
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #photo:Landroid/graphics/Bitmap;
    .end local v10           #photoInputStream:Ljava/io/InputStream;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_55
    move-object v9, v12

    .line 119
    goto :goto_48
.end method

.method private queuePhoto(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 8
    .parameter "uri"
    .parameter "activity"
    .parameter "imageView"
    .parameter "container"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    invoke-virtual {v1, p3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->Clean(Landroid/widget/ImageView;)V

    .line 74
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;Landroid/net/Uri;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 75
    .local v0, p:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 76
    :try_start_11
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photosQueue:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;
    invoke-static {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_34

    .line 81
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_33

    .line 82
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->start()V

    .line 83
    :cond_33
    return-void

    .line 78
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z
    .registers 8
    .parameter "uri"
    .parameter "activity"
    .parameter "imageView"
    .parameter "container"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 54
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const/4 v0, 0x1

    .line 67
    :goto_25
    return v0

    .line 60
    :cond_26
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2c
    move v0, v1

    .line 67
    goto :goto_25

    .line 65
    :cond_2e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->queuePhoto(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)V

    goto :goto_2c
.end method

.method public stopThread()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->interrupt()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->photoLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader$PhotosLoader;->blRun:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method
