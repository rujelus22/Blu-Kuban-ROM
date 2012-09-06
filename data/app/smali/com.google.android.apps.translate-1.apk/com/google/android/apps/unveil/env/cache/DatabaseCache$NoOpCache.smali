.class Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;
.super Lcom/google/android/apps/unveil/env/cache/AbstractCache;
.source "DatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/cache/DatabaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/apps/unveil/env/Picture;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 3
    .parameter "key"

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;->get(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/apps/unveil/env/Picture;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;->put(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Picture;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 153
    return-void
.end method
