.class public final Lash;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# direct methods
.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 33
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 83
    add-int/lit8 v1, p1, 0x1

    .line 84
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 85
    :goto_6
    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    .line 86
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 88
    const/4 v3, 0x2

    if-ne v0, v3, :cond_17

    if-ne v2, v1, :cond_17

    .line 89
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_16
    return-object v0

    .line 92
    :cond_17
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1e

    if-ne v2, p1, :cond_1e

    .line 93
    const/4 v0, 0x0

    goto :goto_16

    .line 95
    :cond_1e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_6

    .line 97
    :cond_23
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
