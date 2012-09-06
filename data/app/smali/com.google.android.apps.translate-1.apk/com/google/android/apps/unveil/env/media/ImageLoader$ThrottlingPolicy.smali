.class public Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/media/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrottlingPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final limit:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "limit"

    .prologue
    .line 100
    .local p0, this:Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;,"Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;->limit:I

    .line 102
    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;,"Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy<TE;>;"
    .local p1, incomingImages:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;->limit:I

    if-le v0, v1, :cond_f

    .line 107
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$ThrottlingPolicy;->limit:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 109
    .end local p1           #incomingImages:Ljava/util/List;,"Ljava/util/List<TE;>;"
    :cond_f
    return-object p1
.end method
