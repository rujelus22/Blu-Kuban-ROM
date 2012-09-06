.class final Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;
.super Ljava/lang/Object;
.source "EsApiProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsApiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateResults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 258
    .local p0, this:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<TT;>;"
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceResult;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ServiceResult;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 262
    .local p0, this:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;-><init>(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Map;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/util/Map;)V
    .registers 3
    .parameter "serviceResult"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;,"Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults<TT;>;"
    .local p2, results:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;

    .line 251
    iput-object p2, p0, Lcom/google/android/apps/plus/content/EsApiProvider$UpdateResults;->mResults:Ljava/util/Map;

    .line 252
    return-void
.end method
