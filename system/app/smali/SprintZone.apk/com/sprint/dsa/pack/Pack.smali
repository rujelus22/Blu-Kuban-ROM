.class public Lcom/sprint/dsa/pack/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# instance fields
.field public active:Z

.field public alertIcon:Landroid/graphics/Bitmap;

.field public alertIconUrl:Ljava/lang/String;

.field public backgroundImage:Landroid/graphics/Bitmap;

.field public backgroundImageUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field private lastStyle:Lcom/sprint/dsa/pack/Style;

.field public name:Ljava/lang/String;

.field protected strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/pack/Style;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->version:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/pack/Pack;->active:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/Pack;->strings:Ljava/util/Map;

    .line 26
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->version:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/pack/Pack;->active:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/Pack;->strings:Ljava/util/Map;

    .line 26
    iput-object v1, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    .line 34
    iput-object p1, p0, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->strings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public addStyle(Lcom/sprint/dsa/pack/Style;)V
    .registers 3
    .parameter "style"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    return-void
.end method

.method public addStyleAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, style:Lcom/sprint/dsa/pack/Style;
    iget-object v1, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    iget-object v1, v1, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 65
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    .line 71
    :goto_11
    if-nez v0, :cond_1f

    .line 72
    new-instance v0, Lcom/sprint/dsa/pack/Style;

    .end local v0           #style:Lcom/sprint/dsa/pack/Style;
    invoke-direct {v0}, Lcom/sprint/dsa/pack/Style;-><init>()V

    .line 73
    .restart local v0       #style:Lcom/sprint/dsa/pack/Style;
    iput-object p1, v0, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/pack/Pack;->addStyle(Lcom/sprint/dsa/pack/Style;)V

    .line 75
    iput-object v0, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    .line 78
    :cond_1f
    invoke-virtual {v0, p2, p3}, Lcom/sprint/dsa/pack/Style;->setAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 68
    :cond_23
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/Pack;->getStyleByTag(Ljava/lang/String;)Lcom/sprint/dsa/pack/Style;

    move-result-object v0

    goto :goto_11
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStrings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->strings:Ljava/util/Map;

    return-object v0
.end method

.method public getStyleByTag(Ljava/lang/String;)Lcom/sprint/dsa/pack/Style;
    .registers 5
    .parameter "tag"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 57
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 50
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/pack/Style;

    .line 51
    .local v0, style:Lcom/sprint/dsa/pack/Style;
    iget-object v2, v0, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 52
    iput-object v0, p0, Lcom/sprint/dsa/pack/Pack;->lastStyle:Lcom/sprint/dsa/pack/Style;

    goto :goto_d
.end method

.method public getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/pack/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    return-object v0
.end method
