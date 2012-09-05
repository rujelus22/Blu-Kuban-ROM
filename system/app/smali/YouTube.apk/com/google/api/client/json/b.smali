.class public Lcom/google/api/client/json/b;
.super Lcom/google/api/client/util/p;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/google/api/client/json/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/util/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Lcom/google/api/client/util/p;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/b;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/json/b;->a:Lcom/google/api/client/json/c;

    invoke-virtual {v0, p0}, Lcom/google/api/client/json/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
