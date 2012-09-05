.class Lcom/google/android/youtube/videos/store/BitmapStore$2;
.super Ljava/lang/Object;
.source "BitmapStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/store/BitmapStore;->retainOnly(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

.field final synthetic val$requests:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/store/BitmapStore;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore$2;,"Lcom/google/android/youtube/videos/store/BitmapStore.2;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/BitmapStore$2;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iput-object p2, p0, Lcom/google/android/youtube/videos/store/BitmapStore$2;->val$requests:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/youtube/videos/store/BitmapStore$2;,"Lcom/google/android/youtube/videos/store/BitmapStore.2;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v3, filesToRetain:Ljava/util/Set;,"Ljava/util/Set<Ljava/io/File;>;"
    iget-object v7, p0, Lcom/google/android/youtube/videos/store/BitmapStore$2;->val$requests:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 80
    .local v6, request:Ljava/lang/Object;,"TR;"
    iget-object v7, p0, Lcom/google/android/youtube/videos/store/BitmapStore$2;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    invoke-virtual {v7, v6}, Lcom/google/android/youtube/videos/store/BitmapStore;->toFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 82
    .end local v6           #request:Ljava/lang/Object;,"TR;"
    :cond_1f
    iget-object v7, p0, Lcom/google/android/youtube/videos/store/BitmapStore$2;->this$0:Lcom/google/android/youtube/videos/store/BitmapStore;

    iget-object v7, v7, Lcom/google/android/youtube/videos/store/BitmapStore;->bitmapDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 83
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_3c

    .line 84
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2c
    if-ge v4, v5, :cond_3c

    aget-object v1, v0, v4

    .line 85
    .local v1, file:Ljava/io/File;
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 84
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 90
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3c
    return-void
.end method
