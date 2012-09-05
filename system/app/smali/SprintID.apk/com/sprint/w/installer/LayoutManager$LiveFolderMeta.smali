.class Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LiveFolderMeta"
.end annotation


# instance fields
.field icon:Ljava/lang/String;

.field iconPackage:Ljava/lang/String;

.field intent:Ljava/lang/String;

.field screen:I

.field title:Ljava/lang/String;

.field uri:Ljava/lang/String;

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromElement(Lorg/w3c/dom/Element;I)Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
    .registers 5
    .parameter "elem"
    .parameter "offset"

    .prologue
    .line 156
    new-instance v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;

    invoke-direct {v0}, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;-><init>()V

    .line 157
    .local v0, m:Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;
    const-string v1, "screen"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->screen:I

    .line 158
    const-string v1, "x"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->x:I

    .line 159
    const-string v1, "y"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->y:I

    .line 160
    const-string v1, "title"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->title:Ljava/lang/String;

    .line 161
    const-string v1, "uri"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->uri:Ljava/lang/String;

    .line 162
    const-string v1, "intent"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->intent:Ljava/lang/String;

    .line 163
    const-string v1, "iconPackage"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->iconPackage:Ljava/lang/String;

    .line 164
    const-string v1, "icon"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    if-eqz v1, :cond_7b

    iget-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->iconPackage:Ljava/lang/String;

    if-eqz v1, :cond_7b

    iget-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->iconPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/w/installer/LayoutManager$LiveFolderMeta;->icon:Ljava/lang/String;

    .line 168
    :cond_7b
    return-object v0
.end method
