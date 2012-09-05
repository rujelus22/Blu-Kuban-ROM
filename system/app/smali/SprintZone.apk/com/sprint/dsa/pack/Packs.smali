.class public Lcom/sprint/dsa/pack/Packs;
.super Ljava/lang/Object;
.source "Packs.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Packs"

.field public static _instance:Lcom/sprint/dsa/pack/Packs;


# instance fields
.field public map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sprint/dsa/pack/Pack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/pack/Packs;->_instance:Lcom/sprint/dsa/pack/Packs;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/sprint/dsa/pack/Packs;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/sprint/dsa/pack/Packs;->_instance:Lcom/sprint/dsa/pack/Packs;

    return-object v0
.end method

.method public static load(Landroid/content/Context;)Lcom/sprint/dsa/pack/Packs;
    .registers 6
    .parameter "context"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/sprint/dsa/pack/DbPacks;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3}, Lcom/sprint/dsa/pack/DbPacks;->readAll(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sprint/dsa/pack/Packs;

    move-result-object v2

    .line 34
    .local v2, stylePackages:Lcom/sprint/dsa/pack/Packs;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/sprint/dsa/pack/Packs;->all()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_27

    .line 35
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 36
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "promo"

    invoke-static {v1, v3}, Lcom/sprint/dsa/data/ContentParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v0

    .line 37
    .local v0, content:Lcom/sprint/dsa/data/Content;
    iget-object v2, v0, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    .line 41
    .end local v0           #content:Lcom/sprint/dsa/data/Content;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_27
    return-object v2
.end method

.method public static loadFromFile(Ljava/lang/String;)Lcom/sprint/dsa/pack/Packs;
    .registers 3
    .parameter "xml"

    .prologue
    .line 50
    const-string v1, "promo"

    invoke-static {p0, v1}, Lcom/sprint/dsa/data/ContentParser;->parseContent(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v0

    .line 51
    .local v0, content:Lcom/sprint/dsa/data/Content;
    iget-object v1, v0, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    sput-object v1, Lcom/sprint/dsa/pack/Packs;->_instance:Lcom/sprint/dsa/pack/Packs;

    .line 52
    sget-object v1, Lcom/sprint/dsa/pack/Packs;->_instance:Lcom/sprint/dsa/pack/Packs;

    return-object v1
.end method


# virtual methods
.method public add(Lcom/sprint/dsa/pack/Pack;)V
    .registers 4
    .parameter "pack"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    iget-object v1, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public all()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sprint/dsa/pack/Pack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public array()[Lcom/sprint/dsa/pack/Pack;
    .registers 7

    .prologue
    .line 73
    iget-object v4, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v0, v4, [Lcom/sprint/dsa/pack/Pack;

    .line 74
    .local v0, a:[Lcom/sprint/dsa/pack/Pack;
    const/4 v1, 0x0

    .line 75
    .local v1, i:I
    iget-object v4, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 78
    return-object v0

    .line 75
    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/dsa/pack/Pack;

    .line 76
    .local v3, pack:Lcom/sprint/dsa/pack/Pack;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-object v3, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_13
.end method

.method public empty()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;
    .registers 3
    .parameter "id"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/pack/Pack;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/pack/Pack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sprint/dsa/pack/Packs;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public random()Lcom/sprint/dsa/pack/Pack;
    .registers 5

    .prologue
    .line 87
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 88
    .local v2, rand:Ljava/util/Random;
    invoke-virtual {p0}, Lcom/sprint/dsa/pack/Packs;->array()[Lcom/sprint/dsa/pack/Pack;

    move-result-object v0

    .line 89
    .local v0, a:[Lcom/sprint/dsa/pack/Pack;
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 90
    .local v1, i:I
    aget-object v3, v0, v1

    return-object v3
.end method
