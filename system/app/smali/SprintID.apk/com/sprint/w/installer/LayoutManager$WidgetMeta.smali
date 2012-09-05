.class Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetMeta"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field h:I

.field packageName:Ljava/lang/String;

.field screen:I

.field w:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    .registers 5
    .parameter "elem"
    .parameter "offset"

    .prologue
    .line 238
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;

    invoke-direct {v0}, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;-><init>()V

    .line 239
    .local v0, w:Lcom/sprint/w/installer/LayoutManager$WidgetMeta;
    const-string v1, "screen"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->screen:I

    .line 240
    const-string v1, "x"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->x:I

    .line 241
    const-string v1, "y"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->y:I

    .line 242
    const-string v1, "w"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->w:I

    .line 243
    const-string v1, "h"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->h:I

    .line 244
    const-string v1, "package"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->packageName:Ljava/lang/String;

    .line 245
    const-string v1, "class"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    .line 246
    iget-object v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$WidgetMeta;->className:Ljava/lang/String;

    .line 249
    :cond_77
    return-object v0
.end method
