.class public LRL;
.super LRW;
.source "AclFeedClient.java"

# interfaces
.implements LRQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LRW;",
        "LRQ",
        "<",
        "LSx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LarP;LRY;LIG;)V
    .registers 4
    .parameter
        .annotation runtime Laqa;
            value = "AclFeed"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, LRW;-><init>(LarP;LRY;LIG;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSx;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const-class v0, LSq;

    invoke-virtual {p0, v0, p1, p2, p3}, LRL;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;

    move-result-object v0

    check-cast v0, LSx;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, LRL;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSx;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lasm;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "LSq;",
            ">;)",
            "Lasm;"
        }
    .end annotation

    .prologue
    .line 65
    const-class v0, LSq;

    invoke-virtual {p0, v0, p1, p2, p3}, LRL;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lasm;

    move-result-object v0

    return-object v0
.end method
