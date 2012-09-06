.class Lcom/google/android/apps/plus/json/EsJson$SimpleJson;
.super Lcom/google/android/apps/plus/json/EsJson;
.source "EsJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/json/EsJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleJson"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/plus/json/EsJson",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson$SimpleJson;,"Lcom/google/android/apps/plus/json/EsJson$SimpleJson<TE;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/json/EsJson;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/EsJson$SimpleJson;->buildDefaultConfiguration()V

    .line 116
    return-void
.end method
