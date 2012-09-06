.class final Laek;
.super Ljava/lang/Object;
.source "DataMap.java"

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
.field private a:I

.field final synthetic a:Laei;

.field private a:Laen;

.field private a:Ljava/lang/Object;

.field private a:Z

.field private b:Laen;

.field private b:Z


# direct methods
.method constructor <init>(Laei;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Laek;->a:Laei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Laek;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 5
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Laek;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 165
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 167
    :cond_e
    iget-object v0, p0, Laek;->a:Laen;

    iput-object v0, p0, Laek;->b:Laen;

    .line 168
    iget-object v0, p0, Laek;->a:Ljava/lang/Object;

    .line 169
    iput-boolean v1, p0, Laek;->b:Z

    .line 170
    iput-boolean v1, p0, Laek;->a:Z

    .line 171
    iput-object v2, p0, Laek;->a:Laen;

    .line 172
    iput-object v2, p0, Laek;->a:Ljava/lang/Object;

    .line 173
    new-instance v1, Laej;

    iget-object v2, p0, Laek;->a:Laei;

    iget-object v3, p0, Laek;->b:Laen;

    invoke-direct {v1, v2, v3, v0}, Laej;-><init>(Laei;Laen;Ljava/lang/Object;)V

    return-object v1
.end method

.method public hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-boolean v0, p0, Laek;->b:Z

    if-nez v0, :cond_45

    .line 153
    iput-boolean v1, p0, Laek;->b:Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Laek;->a:Ljava/lang/Object;

    .line 155
    :goto_a
    iget-object v0, p0, Laek;->a:Ljava/lang/Object;

    if-nez v0, :cond_45

    iget v0, p0, Laek;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laek;->a:I

    iget-object v2, p0, Laek;->a:Laei;

    iget-object v2, v2, Laei;->a:Laef;

    iget-object v2, v2, Laef;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 156
    iget-object v0, p0, Laek;->a:Laei;

    iget-object v2, v0, Laei;->a:Laef;

    iget-object v0, p0, Laek;->a:Laei;

    iget-object v0, v0, Laei;->a:Laef;

    iget-object v0, v0, Laef;->a:Ljava/util/List;

    iget v3, p0, Laek;->a:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    iput-object v0, p0, Laek;->a:Laen;

    .line 157
    iget-object v0, p0, Laek;->a:Laen;

    iget-object v2, p0, Laek;->a:Laei;

    iget-object v2, v2, Laei;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Laek;->a:Ljava/lang/Object;

    goto :goto_a

    .line 160
    :cond_45
    iget-object v0, p0, Laek;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4b

    move v0, v1

    :goto_4a
    return v0

    :cond_4b
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Laek;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Laek;->b:Laen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Laek;->a:Z

    if-nez v0, :cond_1a

    move v0, v1

    :goto_a
    invoke-static {v0}, LafQ;->b(Z)V

    .line 178
    iput-boolean v1, p0, Laek;->a:Z

    .line 179
    iget-object v0, p0, Laek;->b:Laen;

    iget-object v1, p0, Laek;->a:Laei;

    iget-object v1, v1, Laei;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    return-void

    .line 177
    :cond_1a
    const/4 v0, 0x0

    goto :goto_a
.end method
