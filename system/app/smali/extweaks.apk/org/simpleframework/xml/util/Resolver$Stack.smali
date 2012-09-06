.class Lorg/simpleframework/xml/util/Resolver$Stack;
.super Ljava/util/LinkedList;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<TM;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/Resolver;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/util/Resolver;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/util/Resolver;Lorg/simpleframework/xml/util/Resolver$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;-><init>(Lorg/simpleframework/xml/util/Resolver;)V

    return-void
.end method


# virtual methods
.method public purge(I)V
    .registers 3
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    #getter for: Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;
    invoke-static {v0}, Lorg/simpleframework/xml/util/Resolver;->access$100(Lorg/simpleframework/xml/util/Resolver;)Lorg/simpleframework/xml/util/Resolver$Cache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 357
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->remove(I)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method public push(Lorg/simpleframework/xml/util/Match;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    #getter for: Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;
    invoke-static {v0}, Lorg/simpleframework/xml/util/Resolver;->access$100(Lorg/simpleframework/xml/util/Resolver;)Lorg/simpleframework/xml/util/Resolver$Cache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 345
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->addFirst(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public sequence()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;-><init>(Lorg/simpleframework/xml/util/Resolver$Stack;)V

    return-object v0
.end method
