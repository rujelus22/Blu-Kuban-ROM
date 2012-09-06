.class Lorg/simpleframework/xml/core/ModelSection;
.super Ljava/lang/Object;
.source "ModelSection.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Section;


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private context:Lorg/simpleframework/xml/core/Context;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private model:Lorg/simpleframework/xml/core/Model;

.field private models:Lorg/simpleframework/xml/core/ModelMap;

.field private style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Model;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->style:Lorg/simpleframework/xml/stream/Style;

    .line 78
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelSection;->context:Lorg/simpleframework/xml/core/Context;

    .line 79
    iput-object p2, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    .line 80
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 137
    if-nez v0, :cond_9

    .line 140
    :goto_8
    return-object p1

    :cond_9
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public getAttributes()Lorg/simpleframework/xml/core/LabelMap;
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    if-nez v0, :cond_e

    .line 219
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelSection;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Model;->buildAttributes(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    .line 221
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .registers 3
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lorg/simpleframework/xml/core/LabelMap;
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    if-nez v0, :cond_e

    .line 235
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelSection;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Model;->buildElements(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 237
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    return-object v0
.end method

.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    if-nez v0, :cond_e

    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelSection;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Model;->buildModels(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    .line 192
    :cond_e
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 118
    if-nez v0, :cond_9

    .line 121
    :goto_8
    return-object p1

    :cond_9
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;
    .registers 5
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    .line 276
    if-eqz v0, :cond_1a

    .line 277
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelList;->take()Lorg/simpleframework/xml/core/Model;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_1a

    .line 280
    new-instance v0, Lorg/simpleframework/xml/core/ModelSection;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ModelSection;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Model;)V

    .line 283
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public isSection(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lorg/simpleframework/xml/core/ModelSection;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v3, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_b

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 162
    :cond_23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
