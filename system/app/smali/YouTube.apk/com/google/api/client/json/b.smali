.class public Lcom/google/api/client/json/b;
.super Lcom/google/api/client/util/o;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private jsonFactory:Lcom/google/api/client/json/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/util/o;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/json/b;
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/api/client/util/o;->clone()Lcom/google/api/client/util/o;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/b;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/o;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    return-object v0
.end method

.method public final getFactory()Lcom/google/api/client/json/c;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/json/b;->jsonFactory:Lcom/google/api/client/json/c;

    return-object v0
.end method

.method public final setFactory(Lcom/google/api/client/json/c;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/api/client/json/b;->jsonFactory:Lcom/google/api/client/json/c;

    .line 59
    return-void
.end method

.method public toPrettyString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/json/b;->jsonFactory:Lcom/google/api/client/json/c;

    if-eqz v0, :cond_b

    .line 77
    iget-object v0, p0, Lcom/google/api/client/json/b;->jsonFactory:Lcom/google/api/client/json/c;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/c;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/google/api/client/util/o;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/json/b;->jsonFactory:Lcom/google/api/client/json/c;

    if-eqz v0, :cond_b

    .line 64
    iget-object v0, p0, Lcom/google/api/client/json/b;->jsonFactory:Lcom/google/api/client/json/c;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/google/api/client/util/o;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
