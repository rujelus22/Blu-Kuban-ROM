.class Ld/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/t;


# instance fields
.field final synthetic a:Ld/m;

.field final synthetic b:Ld/o;


# direct methods
.method constructor <init>(Ld/o;Ld/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ld/p;->b:Ld/o;

    iput-object p2, p0, Ld/p;->a:Ld/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Ld/p;->a:Ld/m;

    invoke-virtual {v0, p1}, Ld/m;->a(I)Ld/f;

    move-result-object v0

    .line 74
    if-nez v0, :cond_a

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Ld/f;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Ld/p;->a:Ld/m;

    invoke-virtual {v0, p1, p2}, Ld/m;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_24

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/f;

    .line 64
    invoke-virtual {v0}, Ld/f;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 66
    :cond_24
    return-object v3
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ld/p;->a:Ld/m;

    invoke-virtual {v0, p1, p2, p3}, Ld/m;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
