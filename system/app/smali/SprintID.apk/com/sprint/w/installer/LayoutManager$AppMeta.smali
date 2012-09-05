.class Lcom/sprint/w/installer/LayoutManager$AppMeta;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/sprint/w/installer/LayoutManager$Folderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppMeta"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field intent:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field screen:I

.field title:Ljava/lang/String;

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$AppMeta;
    .registers 6
    .parameter "elem"
    .parameter "offset"

    .prologue
    .line 65
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;

    invoke-direct {v0}, Lcom/sprint/w/installer/LayoutManager$AppMeta;-><init>()V

    .line 66
    .local v0, app:Lcom/sprint/w/installer/LayoutManager$AppMeta;
    const-string v2, "screen"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, screen:Ljava/lang/String;
    if-eqz v1, :cond_7a

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    .line 72
    :goto_14
    const-string v2, "x"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->x:I

    .line 73
    const-string v2, "y"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->y:I

    .line 74
    const-string v2, "title"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->title:Ljava/lang/String;

    .line 75
    const-string v2, "intent"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->intent:Ljava/lang/String;

    .line 76
    const-string v2, "package"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->packageName:Ljava/lang/String;

    .line 77
    const-string v2, "class"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    .line 79
    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->className:Ljava/lang/String;

    .line 82
    :cond_79
    return-object v0

    .line 70
    :cond_7a
    const/4 v2, -0x1

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$AppMeta;->screen:I

    goto :goto_14
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
