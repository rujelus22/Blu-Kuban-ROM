.class Lorg/simpleframework/xml/util/Resolver$Cache;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<TM;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/Resolver;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Resolver;)V
    .registers 5

    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Cache;->this$0:Lorg/simpleframework/xml/util/Resolver;

    const/16 v0, 0x400

    const/high16 v1, 0x3f40

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Cache;->size()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
