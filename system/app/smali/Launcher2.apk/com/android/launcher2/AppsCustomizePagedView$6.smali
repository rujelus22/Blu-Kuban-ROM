.class Lcom/android/launcher2/AppsCustomizePagedView$6;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->prepareGenerateHoloOutlinesTask(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$6;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 14
    .parameter "task"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 909
    :try_start_1
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 911
    iget-object v4, p2, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 912
    .local v4, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v6, p2, Lcom/android/launcher2/AsyncTaskPageData;->sourceImages:Ljava/util/ArrayList;

    .line 913
    .local v6, srcImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 914
    .local v2, count:I
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 915
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v2, :cond_4a

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 918
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 920
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 921
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 924
    .local v5, outline:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 925
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 926
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 927
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 928
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 930
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_54

    .line 915
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 933
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #outline:Landroid/graphics/Bitmap;
    :cond_4a
    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 934
    invoke-virtual {p2, v10}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 937
    :cond_53
    return-void

    .line 933
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v6           #srcImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :catchall_54
    move-exception v7

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 934
    invoke-virtual {p2, v10}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    :cond_5e
    throw v7
.end method
