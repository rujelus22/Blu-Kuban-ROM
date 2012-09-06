.class Lcom/google/android/apps/reader/widget/ItemViewFactory$DataProxy;
.super Ljava/lang/Object;
.source "ItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataProxy"
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemViewFactory$DataProxy;->mMap:Ljava/util/Map;

    .line 197
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ItemViewFactory$DataProxy;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const-string v1, ""

    goto :goto_c
.end method
