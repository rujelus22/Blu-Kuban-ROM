.class Lorg/simpleframework/xml/convert/ScannerBuilder;
.super Lorg/simpleframework/xml/util/WeakCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/WeakCache",
        "<",
        "Ljava/lang/Class;",
        "Lorg/simpleframework/xml/convert/Scanner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Scanner;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/simpleframework/xml/convert/Scanner;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Scanner;

    if-nez v0, :cond_10

    new-instance v0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/convert/ScannerBuilder;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method
