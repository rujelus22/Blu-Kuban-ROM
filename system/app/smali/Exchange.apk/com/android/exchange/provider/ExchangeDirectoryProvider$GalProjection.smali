.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GalProjection"
.end annotation


# instance fields
.field final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 6
    .parameter "projection"

    .prologue
    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->columnMap:Ljava/util/HashMap;

    .line 201
    array-length v1, p1

    iput v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->size:I

    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 203
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->columnMap:Ljava/util/HashMap;

    aget-object v2, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 205
    :cond_1f
    return-void
.end method
