.class Lorg/simpleframework/xml/stream/PullReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "PullReader.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final reference:Ljava/lang/String;

.field private final source:Lorg/xmlpull/v1/XmlPullParser;

.field final synthetic this$0:Lorg/simpleframework/xml/stream/PullReader;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/PullReader;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->this$0:Lorg/simpleframework/xml/stream/PullReader;

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventAttribute;-><init>()V

    .line 248
    invoke-interface {p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->reference:Ljava/lang/String;

    .line 249
    invoke-interface {p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->prefix:Ljava/lang/String;

    .line 250
    invoke-interface {p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->value:Ljava/lang/String;

    .line 251
    invoke-interface {p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->name:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->source:Lorg/xmlpull/v1/XmlPullParser;

    .line 253
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Entry;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isReserved()Z
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
