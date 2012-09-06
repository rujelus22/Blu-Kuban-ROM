.class final Lamt;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Class;
    .registers 4
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lamt;->a(LamW;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Class;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to serialize java.lang.Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Forgot to register a type adapter?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lamt;->a(Lanb;Ljava/lang/Class;)V

    return-void
.end method
