.class public Lorg/json/simple/ItemList;
.super Ljava/lang/Object;


# instance fields
.field items:Ljava/util/List;

.field private sp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    iget-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    iput-object p1, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method public add(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addAll(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public addAll(Lorg/json/simple/ItemList;)V
    .registers 4

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    iget-object v1, p1, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArray()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    const-string v0, ","

    iput-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setSP(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    const/4 v3, -0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_19

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-eq v1, v3, :cond_d

    move v0, v1

    goto :goto_7
.end method

.method public split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz p4, :cond_1e

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/simple/ItemList;->split(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/json/simple/ItemList;->sp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/simple/ItemList;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    if-nez v0, :cond_1c

    iget-object v2, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/json/simple/ItemList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_19

    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
