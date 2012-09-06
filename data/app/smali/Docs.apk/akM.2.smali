.class LakM;
.super LaiH;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LaiH",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final a:LakK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakK",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LakK;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LakK",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p1}, LakK;->a(LakK;)[LakN;

    move-result-object v0

    invoke-static {p1}, LakK;->a(LakK;)I

    move-result v1

    invoke-direct {p0, v0, v1}, LaiH;-><init>([Ljava/lang/Object;I)V

    .line 230
    iput-object p1, p0, LakM;->a:LakK;

    .line 231
    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 223
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, LakM;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, LakM;->a:LakK;

    invoke-virtual {v0, p1}, LakK;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
