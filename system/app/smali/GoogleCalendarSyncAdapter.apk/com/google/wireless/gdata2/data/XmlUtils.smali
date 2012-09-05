.class public final Lcom/google/wireless/gdata2/data/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 33
    .local v0, eventType:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 34
    const/4 v1, 0x0

    .line 36
    :goto_8
    return-object v1

    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static matchNameSpaceUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4
    .parameter "parser"
    .parameter "uri"

    .prologue
    .line 109
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, elementNamespaceUri:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 111
    if-nez p1, :cond_a

    const/4 v1, 0x1

    .line 113
    :goto_9
    return v1

    .line 111
    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    .line 113
    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method
