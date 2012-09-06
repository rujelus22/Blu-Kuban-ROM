.class final Lcom/anddoes/launcher/c/j;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/c/j;->a:Ljava/util/List;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/anddoes/launcher/c/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/anddoes/launcher/c/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public final characters([CII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    return-void
.end method

.method public final endDocument()V
    .registers 1

    .prologue
    .line 202
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    return-void
.end method

.method public final startDocument()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 209
    const-string v0, "drawable"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 211
    iget-object v1, p0, Lcom/anddoes/launcher/c/j;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_19
    return-void
.end method
