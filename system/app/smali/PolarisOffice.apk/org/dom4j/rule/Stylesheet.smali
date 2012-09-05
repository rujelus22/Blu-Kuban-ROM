.class public Lorg/dom4j/rule/Stylesheet;
.super Ljava/lang/Object;
.source "Stylesheet.java"


# instance fields
.field private modeName:Ljava/lang/String;

.field private ruleManager:Lorg/dom4j/rule/RuleManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/dom4j/rule/RuleManager;

    invoke-direct {v0}, Lorg/dom4j/rule/RuleManager;-><init>()V

    iput-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    .line 38
    return-void
.end method


# virtual methods
.method public addRule(Lorg/dom4j/rule/Rule;)V
    .registers 3
    .parameter "rule"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->addRule(Lorg/dom4j/rule/Rule;)V

    .line 48
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;)V
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 12
    .parameter "input"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v8, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v8, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v4

    .line 222
    .local v4, mod:Lorg/dom4j/rule/Mode;
    instance-of v8, p1, Lorg/dom4j/Element;

    if-eqz v8, :cond_1f

    move-object v1, p1

    .line 224
    check-cast v1, Lorg/dom4j/Element;

    .line 225
    .local v1, element:Lorg/dom4j/Element;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v7

    .local v7, size:I
    :goto_12
    if-lt v2, v7, :cond_15

    .line 249
    .end local v1           #element:Lorg/dom4j/Element;
    .end local v2           #i:I
    .end local v7           #size:I
    :cond_14
    return-void

    .line 226
    .restart local v1       #element:Lorg/dom4j/Element;
    .restart local v2       #i:I
    .restart local v7       #size:I
    :cond_15
    invoke-interface {v1, v2}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    .line 227
    .local v5, node:Lorg/dom4j/Node;
    invoke-virtual {v4, v5}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 229
    .end local v1           #element:Lorg/dom4j/Element;
    .end local v2           #i:I
    .end local v5           #node:Lorg/dom4j/Node;
    .end local v7           #size:I
    :cond_1f
    instance-of v8, p1, Lorg/dom4j/Document;

    if-eqz v8, :cond_37

    move-object v0, p1

    .line 231
    check-cast v0, Lorg/dom4j/Document;

    .line 232
    .local v0, document:Lorg/dom4j/Document;
    const/4 v2, 0x0

    .restart local v2       #i:I
    invoke-interface {v0}, Lorg/dom4j/Document;->nodeCount()I

    move-result v7

    .restart local v7       #size:I
    :goto_2b
    if-ge v2, v7, :cond_14

    .line 233
    invoke-interface {v0, v2}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    .line 234
    .restart local v5       #node:Lorg/dom4j/Node;
    invoke-virtual {v4, v5}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 236
    .end local v0           #document:Lorg/dom4j/Document;
    .end local v2           #i:I
    .end local v5           #node:Lorg/dom4j/Node;
    .end local v7           #size:I
    :cond_37
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_14

    move-object v3, p1

    .line 237
    check-cast v3, Ljava/util/List;

    .line 239
    .local v3, list:Ljava/util/List;
    const/4 v2, 0x0

    .restart local v2       #i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .restart local v7       #size:I
    :goto_43
    if-ge v2, v7, :cond_14

    .line 240
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 242
    .local v6, object:Ljava/lang/Object;
    instance-of v8, v6, Lorg/dom4j/Element;

    if-eqz v8, :cond_55

    .line 243
    check-cast v6, Lorg/dom4j/Element;

    .end local v6           #object:Ljava/lang/Object;
    invoke-virtual {p0, v6, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 244
    .restart local v6       #object:Ljava/lang/Object;
    :cond_55
    instance-of v8, v6, Lorg/dom4j/Document;

    if-eqz v8, :cond_52

    .line 245
    check-cast v6, Lorg/dom4j/Document;

    .end local v6           #object:Ljava/lang/Object;
    invoke-virtual {p0, v6, p2}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_52
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;)V
    .registers 4
    .parameter "input"
    .parameter "xpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/dom4j/XPath;Ljava/lang/String;)V
    .registers 9
    .parameter "input"
    .parameter "xpath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v4, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v4, p3}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v3

    .line 137
    .local v3, mod:Lorg/dom4j/rule/Mode;
    invoke-interface {p2, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, it:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    .line 143
    return-void

    .line 140
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 141
    .local v0, current:Lorg/dom4j/Node;
    invoke-virtual {v3, v0}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    goto :goto_e
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/jaxen/XPath;)V
    .registers 4
    .parameter "input"
    .parameter "xpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/dom4j/rule/Stylesheet;->applyTemplates(Ljava/lang/Object;Lorg/jaxen/XPath;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public applyTemplates(Ljava/lang/Object;Lorg/jaxen/XPath;Ljava/lang/String;)V
    .registers 9
    .parameter "input"
    .parameter "xpath"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v4, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v4, p3}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v3

    .line 181
    .local v3, mod:Lorg/dom4j/rule/Mode;
    invoke-interface {p2, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 182
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, it:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    .line 187
    return-void

    .line 184
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 185
    .local v0, current:Lorg/dom4j/Node;
    invoke-virtual {v3, v0}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    goto :goto_e
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0}, Lorg/dom4j/rule/RuleManager;->clear()V

    .line 253
    return-void
.end method

.method public getModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueOfAction()Lorg/dom4j/rule/Action;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0}, Lorg/dom4j/rule/RuleManager;->getValueOfAction()Lorg/dom4j/rule/Action;

    move-result-object v0

    return-object v0
.end method

.method public removeRule(Lorg/dom4j/rule/Rule;)V
    .registers 3
    .parameter "rule"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->removeRule(Lorg/dom4j/rule/Rule;)V

    .line 58
    return-void
.end method

.method public run(Ljava/lang/Object;)V
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public run(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter "input"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_a

    .line 76
    check-cast p1, Lorg/dom4j/Node;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 80
    :cond_9
    :goto_9
    return-void

    .line 77
    .restart local p1
    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 78
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public run(Ljava/util/List;)V
    .registers 3
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Ljava/util/List;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public run(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .parameter "list"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 94
    return-void

    .line 88
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, object:Ljava/lang/Object;
    instance-of v3, v1, Lorg/dom4j/Node;

    if-eqz v3, :cond_15

    .line 91
    check-cast v1, Lorg/dom4j/Node;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {p0, v1, p2}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 87
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public run(Lorg/dom4j/Node;)V
    .registers 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/rule/Stylesheet;->run(Lorg/dom4j/Node;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public run(Lorg/dom4j/Node;Ljava/lang/String;)V
    .registers 5
    .parameter "node"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v1, p2}, Lorg/dom4j/rule/RuleManager;->getMode(Ljava/lang/String;)Lorg/dom4j/rule/Mode;

    move-result-object v0

    .line 102
    .local v0, mod:Lorg/dom4j/rule/Mode;
    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->fireRule(Lorg/dom4j/Node;)V

    .line 103
    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 2
    .parameter "modeName"

    .prologue
    .line 274
    iput-object p1, p0, Lorg/dom4j/rule/Stylesheet;->modeName:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setValueOfAction(Lorg/dom4j/rule/Action;)V
    .registers 3
    .parameter "valueOfAction"

    .prologue
    .line 295
    iget-object v0, p0, Lorg/dom4j/rule/Stylesheet;->ruleManager:Lorg/dom4j/rule/RuleManager;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/RuleManager;->setValueOfAction(Lorg/dom4j/rule/Action;)V

    .line 296
    return-void
.end method
