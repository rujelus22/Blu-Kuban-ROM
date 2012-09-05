.class Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
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
    name = "ShortcutMeta"
.end annotation


# instance fields
.field icon:Ljava/lang/String;

.field iconPackage:Ljava/lang/String;

.field intent:Ljava/lang/String;

.field screen:I

.field title:Ljava/lang/String;

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    .registers 6
    .parameter "elem"
    .parameter "offset"

    .prologue
    .line 207
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;

    invoke-direct {v0}, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;-><init>()V

    .line 208
    .local v0, m:Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;
    const-string v2, "screen"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, screen:Ljava/lang/String;
    if-eqz v1, :cond_76

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->screen:I

    .line 214
    :goto_14
    const-string v2, "x"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->x:I

    .line 215
    const-string v2, "y"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->y:I

    .line 216
    const-string v2, "intent"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->intent:Ljava/lang/String;

    .line 217
    const-string v2, "title"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->title:Ljava/lang/String;

    .line 218
    const-string v2, "iconPackage"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->iconPackage:Ljava/lang/String;

    .line 219
    const-string v2, "icon"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->icon:Ljava/lang/String;

    .line 220
    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->icon:Ljava/lang/String;

    if-eqz v2, :cond_75

    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->iconPackage:Ljava/lang/String;

    if-eqz v2, :cond_75

    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->icon:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->iconPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->icon:Ljava/lang/String;

    .line 223
    :cond_75
    return-object v0

    .line 212
    :cond_76
    const/4 v2, -0x1

    iput v2, v0, Lcom/sprint/w/installer/LayoutManager$ShortcutMeta;->screen:I

    goto :goto_14
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method
