.class public Lcom/google/android/apps/books/render/ReaderBridgeAdapter;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Lcom/google/android/apps/books/render/ReaderBridge;


# static fields
.field private static final LOGD:Z


# instance fields
.field private final mDataSource:Lcom/google/android/apps/books/render/ReaderDataSource;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Lcom/google/android/apps/books/render/ReaderListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    const-string v0, "ReaderBridgeAdapter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/render/ReaderListener;Ljava/util/concurrent/Executor;Lcom/google/android/apps/books/render/ReaderDataSource;)V
    .registers 5
    .parameter "target"
    .parameter "executor"
    .parameter "dataSource"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "missing target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/ReaderListener;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;

    .line 61
    const-string v0, "missing executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 62
    const-string v0, "missing data source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/ReaderDataSource;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mDataSource:Lcom/google/android/apps/books/render/ReaderDataSource;

    .line 63
    return-void
.end method

.method private abbreviateContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "content"

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 318
    .local v1, length:I
    const-string v3, "ReaderBridgeAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v3, 0x32

    if-gt v1, v3, :cond_13

    .line 319
    :cond_11
    move-object v2, p1

    .line 325
    .local v2, returnValue:Ljava/lang/String;
    :goto_12
    return-object v2

    .line 321
    .end local v2           #returnValue:Ljava/lang/String;
    :cond_13
    const/16 v0, 0x19

    .line 322
    .local v0, half:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x19

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...(excised)..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x19

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #returnValue:Ljava/lang/String;
    goto :goto_12
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$15;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$15;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public getResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "volumeId"
    .parameter "resourceId"

    .prologue
    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mDataSource:Lcom/google/android/apps/books/render/ReaderDataSource;

    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/books/render/ReaderDataSource;->getResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, content:Ljava/lang/String;
    const-string v2, "ReaderBridgeAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildResourceContentUri() success, length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 308
    .end local v0           #content:Ljava/lang/String;
    :goto_22
    return-object v0

    .line 305
    :catch_23
    move-exception v1

    .line 307
    .local v1, e:Ljava/lang/Throwable;
    const-string v2, "error during buildResourceContentUri()"

    const-string v3, "ReaderBridgeAdapter"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/util/LogUtil;->logAsErrorOrDebug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "data:"

    goto :goto_22
.end method

.method public getSegmentContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "volumeId"
    .parameter "segmentId"

    .prologue
    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mDataSource:Lcom/google/android/apps/books/render/ReaderDataSource;

    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/books/render/ReaderDataSource;->getSegmentContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, content:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->LOGD:Z

    if-eqz v3, :cond_61

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectionContent(volumeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, signature:Ljava/lang/String;
    const-string v3, "ReaderBridgeAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->abbreviateContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_61} :catch_62

    .line 289
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #signature:Ljava/lang/String;
    :cond_61
    :goto_61
    return-object v0

    .line 276
    :catch_62
    move-exception v1

    .line 277
    .local v1, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectionContent(volumeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2       #signature:Ljava/lang/String;
    const-string v3, "ReaderBridgeAdapter"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/util/LogUtil;->logAsErrorOrDebug(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;

    invoke-direct {v4, p0, v1}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 289
    const-string v0, ""

    goto :goto_61
.end method

.method public onChapterReady(ILjava/lang/String;)V
    .registers 6
    .parameter "chapterIndex"
    .parameter "pageBounds"

    .prologue
    .line 107
    new-instance v0, Lcom/google/android/apps/books/util/PassagePaginationResult;

    invoke-direct {v0, p2}, Lcom/google/android/apps/books/util/PassagePaginationResult;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, paginationResult:Lcom/google/android/apps/books/util/PassagePaginationResult;
    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;ILcom/google/android/apps/books/util/PassagePaginationResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public onContentLoading()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$4;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public onContentReady()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$6;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public onDocumentChanged()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$12;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public onInvalidPosition(II)V
    .registers 5
    .parameter "margin"
    .parameter "requestId"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$8;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public onJsApiReady()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$1;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public onLoadedRangeBounds(ILjava/lang/String;)V
    .registers 14
    .parameter "requestId"
    .parameter "rectanglesJson"

    .prologue
    .line 189
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 190
    .local v3, json:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 191
    .local v4, length:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 192
    .local v6, rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v2, 0x0

    .line 193
    .local v2, i:I
    :goto_e
    add-int/lit8 v7, v4, -0x3

    if-ge v2, v7, :cond_33

    .line 194
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    add-int/lit8 v9, v2, 0x2

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    add-int/lit8 v10, v2, 0x3

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 196
    .local v5, rect:Landroid/graphics/Rect;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v2, v2, 0x4

    goto :goto_e

    .line 198
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_33
    if-eq v2, v4, :cond_5e

    const-string v7, "ReaderBridgeAdapter"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 199
    const-string v7, "ReaderBridgeAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed rectangles array from reader; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " extra elements"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_6a

    .line 209
    .end local v2           #i:I
    .end local v3           #json:Lorg/json/JSONArray;
    .end local v4           #length:I
    :cond_5e
    :goto_5e
    move-object v1, v6

    .line 212
    .local v1, finalRectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v7, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$11;

    invoke-direct {v8, p0, p1, v1}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$11;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;ILjava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 219
    return-void

    .line 202
    .end local v1           #finalRectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v6           #rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    :catch_6a
    move-exception v0

    .line 203
    .local v0, e:Lorg/json/JSONException;
    const-string v7, "ReaderBridgeAdapter"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 204
    const-string v7, "ReaderBridgeAdapter"

    const-string v8, "Malformed JSON from reader"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_7b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .restart local v6       #rectangles:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    goto :goto_5e
.end method

.method public onNearbyTextLoaded(Ljava/lang/String;I)V
    .registers 5
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public onNoHighlightFound(II)V
    .registers 5
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public onPageLoaded(IILjava/lang/String;II)V
    .registers 14
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "requestId"
    .parameter "highlightSearch"

    .prologue
    .line 129
    iget-object v7, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;IILjava/lang/String;II)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public onPassageTextReady(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "requestId"
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positions"
    .parameter "offsets"

    .prologue
    .line 164
    :try_start_0
    invoke-static {p4, p5}, Lcom/google/android/apps/books/model/PositionMap;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/model/PositionMap;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_14

    move-result-object v7

    .line 172
    .local v7, positionMap:Lcom/google/android/apps/books/model/PositionMap;
    :goto_4
    move-object v5, v7

    .line 175
    .local v5, finalPositions:Lcom/google/android/apps/books/model/PositionMap;
    iget-object v8, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void

    .line 165
    .end local v5           #finalPositions:Lcom/google/android/apps/books/model/PositionMap;
    .end local v7           #positionMap:Lcom/google/android/apps/books/model/PositionMap;
    :catch_14
    move-exception v6

    .line 166
    .local v6, e:Lorg/json/JSONException;
    const-string v0, "ReaderBridgeAdapter"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 167
    const-string v0, "ReaderBridgeAdapter"

    const-string v1, "Malformed JSON from reader"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_25
    invoke-static {}, Lcom/google/android/apps/books/model/PositionMap;->empty()Lcom/google/android/apps/books/model/PositionMap;

    move-result-object v7

    .restart local v7       #positionMap:Lcom/google/android/apps/books/model/PositionMap;
    goto :goto_4
.end method

.method public onPreferencesApplied()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$3;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public onReaderInitialized()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$2;-><init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
