.class final Lcom/anddoes/launcher/c/d;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/anddoes/launcher/c/c;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/c/c;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/anddoes/launcher/c/d;->e:Lcom/anddoes/launcher/c/c;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public final endDocument()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method public final startDocument()V
    .registers 1

    .prologue
    .line 134
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "preview"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 146
    const-string v0, "img1"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/d;->a:Ljava/lang/String;

    .line 147
    const-string v0, "img2"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/d;->b:Ljava/lang/String;

    .line 148
    const-string v0, "img3"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/d;->c:Ljava/lang/String;

    .line 149
    const-string v0, "img4"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/c/d;->d:Ljava/lang/String;

    .line 151
    :cond_28
    return-void
.end method
