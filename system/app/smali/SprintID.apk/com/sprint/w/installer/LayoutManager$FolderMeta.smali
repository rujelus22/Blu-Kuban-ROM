.class Lcom/sprint/w/installer/LayoutManager$FolderMeta;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderMeta"
.end annotation


# instance fields
.field icon:Ljava/lang/String;

.field iconPackage:Ljava/lang/String;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/LayoutManager$Folderable;",
            ">;"
        }
    .end annotation
.end field

.field screen:I

.field title:Ljava/lang/String;

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$FolderMeta;
    .registers 10
    .parameter "elem"
    .parameter "offset"

    .prologue
    .line 108
    new-instance v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;

    invoke-direct {v3}, Lcom/sprint/w/installer/LayoutManager$FolderMeta;-><init>()V

    .line 109
    .local v3, m:Lcom/sprint/w/installer/LayoutManager$FolderMeta;
    const-string v6, "screen"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, p1

    iput v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->screen:I

    .line 110
    const-string v6, "x"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->x:I

    .line 111
    const-string v6, "y"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->y:I

    .line 112
    const-string v6, "title"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->title:Ljava/lang/String;

    .line 113
    const-string v6, "iconPackage"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->iconPackage:Ljava/lang/String;

    .line 114
    const-string v6, "icon"

    invoke-interface {p0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    .line 115
    iget-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    if-eqz v6, :cond_6b

    iget-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->iconPackage:Ljava/lang/String;

    if-eqz v6, :cond_6b

    iget-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->iconPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->icon:Ljava/lang/String;

    .line 119
    :cond_6b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->items:Ljava/util/ArrayList;

    .line 120
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 121
    .local v5, nl:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_77
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_cf

    .line 122
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 123
    .local v4, n:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a0

    move-object v0, v4

    .line 124
    check-cast v0, Lorg/w3c/dom/Element;

    .line 125
    .local v0, child:Lorg/w3c/dom/Element;
    const-string v6, "application"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 127
    :try_start_97
    iget-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->items:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/sprint/w/installer/LayoutManager$AppMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$AppMeta;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a0} :catch_a3

    .line 121
    .end local v0           #child:Lorg/w3c/dom/Element;
    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 128
    .restart local v0       #child:Lorg/w3c/dom/Element;
    :catch_a3
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v6

    const-string v7, "Skipping invalid application element"

    invoke-virtual {v6, v7, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a0

    .line 131
    .end local v1           #e:Ljava/lang/Exception;
    :cond_ae
    const-string v6, "shortcut"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 133
    :try_start_ba
    iget-object v6, v3, Lcom/sprint/w/installer/LayoutManager$FolderMeta;->items:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c3} :catch_c4

    goto :goto_a0

    .line 134
    :catch_c4
    move-exception v1

    .line 135
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/w/installer/LayoutManager;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v6

    const-string v7, "Skipping invalid application element"

    invoke-virtual {v6, v7, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a0

    .line 140
    .end local v0           #child:Lorg/w3c/dom/Element;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #n:Lorg/w3c/dom/Node;
    :cond_cf
    return-object v3
.end method
