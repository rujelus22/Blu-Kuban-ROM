.class final Lorg/apache/james/mime4j/util/StringArrayMap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pValue:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->val$pValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->val$pValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/StringArrayMap$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    return-object v0
.end method
