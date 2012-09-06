.class final Laep;
.super Ljava/lang/Object;
.source "GenericData.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laeo;

.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private a:Z

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Laeo;Lael;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Laep;->a:Laeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p2}, Lael;->a()Laek;

    move-result-object v0

    iput-object v0, p0, Laep;->a:Ljava/util/Iterator;

    .line 244
    iget-object v0, p1, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Laep;->b:Ljava/util/Iterator;

    .line 245
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-boolean v0, p0, Laep;->a:Z

    if-nez v0, :cond_18

    .line 253
    iget-object v0, p0, Laep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 254
    iget-object v0, p0, Laep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    :goto_14
    return-object v0

    .line 256
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Laep;->a:Z

    .line 258
    :cond_18
    iget-object v0, p0, Laep;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_14
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Laep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Laep;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Laep;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Laep;->a:Z

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Laep;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 265
    :cond_9
    iget-object v0, p0, Laep;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 266
    return-void
.end method
