.class public Lcom/google/android/apps/unveil/env/media/ImageLoader$DescriptionExclusionPolicy;
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
    name = "DescriptionExclusionPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/media/ImageLoader$Policy",
        "<",
        "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
        ">;"
    }
.end annotation


# instance fields
.field private final descriptionToIgnore:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "descriptionToIgnore"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$DescriptionExclusionPolicy;->descriptionToIgnore:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, incomingImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v1, filtered:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;

    .line 125
    .local v3, incomingImage:Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;
    iget-object v0, v3, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->description:Ljava/lang/String;

    .line 126
    .local v0, description:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/media/ImageLoader$DescriptionExclusionPolicy;->descriptionToIgnore:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 127
    :cond_29
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 130
    .end local v0           #description:Ljava/lang/String;
    .end local v3           #incomingImage:Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;
    :cond_2d
    return-object v1
.end method
