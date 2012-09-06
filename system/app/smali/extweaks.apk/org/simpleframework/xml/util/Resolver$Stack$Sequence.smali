.class Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TM;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field final synthetic this$1:Lorg/simpleframework/xml/util/Resolver$Stack;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Resolver$Stack;)V
    .registers 3
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->this$1:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    invoke-virtual {p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->size()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    .line 394
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->next()Lorg/simpleframework/xml/util/Match;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/simpleframework/xml/util/Match;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 405
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->this$1:Lorg/simpleframework/xml/util/Resolver$Stack;

    iget v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Match;

    .line 407
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->this$1:Lorg/simpleframework/xml/util/Resolver$Stack;

    iget v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;->purge(I)V

    .line 428
    return-void
.end method
