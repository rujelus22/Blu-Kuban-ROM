.class public Lacj;
.super Ljava/lang/Object;
.source "AndroidXmlParserFactory.java"

# interfaces
.implements Lasu;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    .prologue
    .line 21
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/xmlpull/v1/XmlSerializer;
    .registers 2

    .prologue
    .line 29
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method
