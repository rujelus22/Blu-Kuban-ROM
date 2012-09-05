.class Lcom/google/android/location/internal/server/ServiceThread$1;
.super Ljava/util/LinkedHashMap;
.source "ServiceThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/server/ServiceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/internal/server/ServiceThread;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/ServiceThread;I)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/location/internal/server/ServiceThread$1;->this$0:Lcom/google/android/location/internal/server/ServiceThread;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter "eldest"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/location/internal/server/ServiceThread$1;->size()I

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
