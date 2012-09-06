.class LzX;
.super Ljava/util/LinkedHashMap;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:LzW;


# direct methods
.method constructor <init>(LzW;IFZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, LzX;->a:LzW;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, LzX;->a:LzW;

    invoke-static {v0}, LzW;->b(LzW;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, LzW;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
