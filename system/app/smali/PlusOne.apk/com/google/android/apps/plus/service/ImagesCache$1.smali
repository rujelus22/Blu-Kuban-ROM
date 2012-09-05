.class Lcom/google/android/apps/plus/service/ImagesCache$1;
.super Ljava/lang/Object;
.source "ImagesCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImagesCache;->makeRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/apps/plus/service/ImagesCache$ImageItem",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ImagesCache;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$1;,"Lcom/google/android/apps/plus/service/ImagesCache.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$1;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;)I
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageItem",
            "<TE;>;",
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageItem",
            "<TE;>;)I"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$1;,"Lcom/google/android/apps/plus/service/ImagesCache.1;"
    .local p1, ui1:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    .local p2, ui2:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getUsageCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getUsageCount()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 289
    const/4 v0, 0x1

    .line 293
    :goto_b
    return v0

    .line 290
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getUsageCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getUsageCount()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 291
    const/4 v0, 0x0

    goto :goto_b

    .line 293
    :cond_18
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$1;,"Lcom/google/android/apps/plus/service/ImagesCache.1;"
    check-cast p1, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    .end local p1
    check-cast p2, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/service/ImagesCache$1;->compare(Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;)I

    move-result v0

    return v0
.end method
