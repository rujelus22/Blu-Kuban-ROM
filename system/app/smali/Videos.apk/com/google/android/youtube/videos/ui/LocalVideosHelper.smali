.class public Lcom/google/android/youtube/videos/ui/LocalVideosHelper;
.super Ljava/lang/Object;
.source "LocalVideosHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;,
        Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;,
        Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
    }
.end annotation


# static fields
.field private static final bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

.field private final itemsView:Landroid/view/View;

.field private final localVideoThumbnailStore:Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;

.field private queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

.field private final statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

.field private final thumbnailCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnailExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 62
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 63
    sget-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 64
    sget-object v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;)V
    .registers 9
    .parameter "activity"
    .parameter "parentView"
    .parameter "adapter"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    .line 69
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    .line 70
    const v0, 0x7f0d0011

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->itemsView:Landroid/view/View;

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/ActivityCallback;->create(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/ActivityCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 73
    new-instance v0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "localvideothumbs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;-><init>(Z)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->localVideoThumbnailStore:Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;

    .line 78
    const v0, 0x7f0d0010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/StatusHelper;->init()V

    .line 81
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/core/ui/StatusHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->statusHelper:Lcom/google/android/youtube/core/ui/StatusHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->itemsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/core/async/Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;)Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->localVideoThumbnailStore:Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;)Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    return-object p1
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->thumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 113
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    .line 92
    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->adapter:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;

    invoke-virtual {v3, p3}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/videos/LocalVideo;

    .line 94
    .local v2, video:Lcom/google/android/youtube/videos/LocalVideo;
    :try_start_9
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/google/android/youtube/videos/LocalVideo;->uri:Landroid/net/Uri;

    iget-object v4, v2, Lcom/google/android/youtube/videos/LocalVideo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 104
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1c
    return-void

    .line 97
    :catch_1d
    move-exception v0

    .line 99
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->activity:Landroid/app/Activity;

    const v5, 0x7f0b00a9

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/google/android/youtube/videos/LocalVideo;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t play local video ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/videos/LocalVideo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/videos/LocalVideo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onRetry()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    if-eqz v0, :cond_a

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->cancel(Z)Z

    .line 87
    :cond_a
    new-instance v0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;-><init>(Lcom/google/android/youtube/videos/ui/LocalVideosHelper;Lcom/google/android/youtube/videos/ui/LocalVideosHelper$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/LocalVideosHelper;->queryTask:Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/LocalVideosHelper$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method
