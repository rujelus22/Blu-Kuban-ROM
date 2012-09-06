.class Lorg/simpleframework/xml/convert/ScannerBuilder;
.super Lorg/simpleframework/xml/util/WeakCache;
.source "ScannerBuilder.java"


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

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Scanner;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/simpleframework/xml/convert/Scanner;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Scanner;

    .line 61
    if-nez v0, :cond_10

    .line 62
    new-instance v0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;-><init>(Ljava/lang/Class;)V

    .line 63
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/convert/ScannerBuilder;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    :cond_10
    return-object v0
.end method
