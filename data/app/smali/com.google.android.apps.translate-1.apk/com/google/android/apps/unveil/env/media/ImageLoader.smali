.class public Lcom/google/android/apps/unveil/env/media/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/media/ImageLoader$DescriptionExclusionPolicy;,
        Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;,
        Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy;,
        Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;,
        Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;
    }
.end annotation


# instance fields
.field private final imageSource:Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;

.field private final policies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;Ljava/util/List;)V
    .registers 3
    .parameter "imageSource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, policies:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader;->imageSource:Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;

    .line 141
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader;->policies:Ljava/util/List;

    .line 142
    return-void
.end method


# virtual methods
.method public getImages()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader;->imageSource:Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/env/media/ImageLoader$ImageSource;->getImages()Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, images:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader;->policies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy;

    .line 147
    .local v2, policy:Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy;,"Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    invoke-interface {v2, v1}, Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_c

    .line 149
    .end local v2           #policy:Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy;,"Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    :cond_1d
    return-object v1
.end method
