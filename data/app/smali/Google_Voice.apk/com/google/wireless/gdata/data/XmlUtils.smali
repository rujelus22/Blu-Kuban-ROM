.class public final Lcom/google/wireless/gdata/data/XmlUtils;
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

.method public static extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 42
    .local v3, parentDepth:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 43
    .local v2, eventType:I
    const/4 v0, 0x0

    .line 44
    .local v0, child:Ljava/lang/String;
    :goto_9
    const/4 v4, 0x1

    if-eq v2, v4, :cond_24

    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 47
    .local v1, depth:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1e

    .line 48
    if-nez v0, :cond_19

    .line 49
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 55
    goto :goto_9

    .line 51
    :cond_1e
    const/4 v4, 0x3

    if-ne v2, v4, :cond_19

    if-ne v1, v3, :cond_19

    .line 52
    return-object v0

    .line 56
    .end local v1           #depth:I
    :cond_24
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;
    .registers 8
    .parameter "parser"
    .parameter "parentDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    add-int/lit8 v2, p1, 0x1

    .line 63
    .local v2, targetDepth:I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 64
    .local v1, eventType:I
    :goto_6
    const/4 v3, 0x1

    if-eq v1, v3, :cond_23

    .line 65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 67
    .local v0, depth:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_17

    if-ne v0, v2, :cond_17

    .line 68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 72
    :goto_16
    return-object v3

    .line 71
    :cond_17
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1e

    if-ne v0, p1, :cond_1e

    .line 72
    const/4 v3, 0x0

    goto :goto_16

    .line 74
    :cond_1e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 75
    goto :goto_6

    .line 76
    .end local v0           #depth:I
    :cond_23
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of document reached; never saw expected end tag at depth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public skipSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 89
    .local v1, level:I
    :goto_1
    if-lez v1, :cond_11

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 91
    .local v0, eventType:I
    packed-switch v0, :pswitch_data_12

    goto :goto_1

    .line 93
    :pswitch_b
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_1

    .line 96
    :pswitch_e
    add-int/lit8 v1, v1, -0x1

    .line 97
    goto :goto_1

    .line 102
    .end local v0           #eventType:I
    :cond_11
    return-void

    .line 91
    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method
