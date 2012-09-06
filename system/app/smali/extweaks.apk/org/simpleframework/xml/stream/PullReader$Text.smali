.class Lorg/simpleframework/xml/stream/PullReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "PullReader.java"


# instance fields
.field private final source:Lorg/xmlpull/v1/XmlPullParser;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    .line 464
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->text:Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->source:Lorg/xmlpull/v1/XmlPullParser;

    .line 466
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isText()Z
    .registers 2

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method
