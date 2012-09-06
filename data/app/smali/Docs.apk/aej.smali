.class final Laej;
.super Ljava/lang/Object;
.source "DataMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laei;

.field private final a:Laen;

.field private a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Laei;Laen;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Laej;->a:Laei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Laej;->a:Laen;

    .line 203
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Laej;->a:Ljava/lang/Object;

    .line 204
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Laej;->a:Laen;

    invoke-virtual {v0}, Laen;->a()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Laej;->a:Laei;

    iget-object v1, v1, Laei;->a:Laef;

    invoke-virtual {v1}, Laef;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_14
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    if-ne p0, p1, :cond_5

    .line 239
    :cond_4
    :goto_4
    return v0

    .line 235
    :cond_5
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_b

    move v0, v1

    .line 236
    goto :goto_4

    .line 238
    :cond_b
    check-cast p1, Ljava/util/Map$Entry;

    .line 239
    invoke-virtual {p0}, Laej;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Laej;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Laej;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Laej;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Laej;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Laej;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Laej;->a:Ljava/lang/Object;

    .line 220
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Laej;->a:Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Laej;->a:Laen;

    iget-object v2, p0, Laej;->a:Laei;

    iget-object v2, v2, Laei;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-object v0
.end method
