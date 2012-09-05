.class Lcom/google/android/location/internal/server/g;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/f;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/f;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/location/internal/server/g;->a:Lcom/google/android/location/internal/server/f;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/location/internal/server/g;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
