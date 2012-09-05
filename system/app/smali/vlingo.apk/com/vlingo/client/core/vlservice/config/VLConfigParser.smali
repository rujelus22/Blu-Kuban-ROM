.class public Lcom/vlingo/client/core/vlservice/config/VLConfigParser;
.super Lcom/vlingo/client/core/xml/SimpleXmlParser;
.source "VLConfigParser.java"


# static fields
.field public static final TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field public static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field final ATTR_MIN_APP_VERSION:I

.field final ATTR_N:I

.field final ATTR_T:I

.field final ATTR_V:I

.field final ELEM_SETTING:I

.field final ELEM_VLCONFIG:I

.field minimumAppVersion:Ljava/lang/String;

.field settings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/SimpleXmlParser;-><init>()V

    .line 38
    const-string v0, "Setting"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ELEM_SETTING:I

    .line 39
    const-string v0, "VLConfig"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ELEM_VLCONFIG:I

    .line 41
    const-string v0, "n"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_N:I

    .line 42
    const-string v0, "v"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_V:I

    .line 43
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_T:I

    .line 44
    const-string v0, "MinAppVersion"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_MIN_APP_VERSION:I

    .line 45
    return-void
.end method

.method private addSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 71
    if-eqz p1, :cond_28

    .line 72
    if-nez p2, :cond_6

    .line 73
    const-string p2, ""

    .line 75
    :cond_6
    if-nez p3, :cond_1a

    .line 76
    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 77
    :cond_18
    const-string p3, "boolean"

    .line 83
    :cond_1a
    :goto_1a
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 84
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->settings:Ljava/util/Hashtable;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_28
    return-void

    .line 80
    :cond_29
    const-string p3, "string"

    goto :goto_1a
.end method


# virtual methods
.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 9
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 53
    iget v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ELEM_VLCONFIG:I

    if-ne v3, p1, :cond_d

    .line 54
    iget v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_MIN_APP_VERSION:I

    invoke-virtual {p2, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->minimumAppVersion:Ljava/lang/String;

    .line 65
    :cond_c
    :goto_c
    return-void

    .line 56
    :cond_d
    iget v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ELEM_SETTING:I

    if-ne v3, p1, :cond_c

    .line 57
    iget v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_N:I

    invoke-virtual {p2, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, name:Ljava/lang/String;
    iget v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_T:I

    invoke-virtual {p2, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, type:Ljava/lang/String;
    iget v3, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->ATTR_V:I

    invoke-virtual {p2, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 61
    new-instance v2, Ljava/lang/String;

    .end local v2           #value:Ljava/lang/String;
    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    .line 63
    .restart local v2       #value:Ljava/lang/String;
    :cond_2a
    invoke-direct {p0, v0, v2, v1}, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->addSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public endElement(II)V
    .registers 3
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    .line 68
    return-void
.end method

.method public getMinimumAppVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->minimumAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->settings:Ljava/util/Hashtable;

    return-object v0
.end method

.method public onParseBegin([C)V
    .registers 3
    .parameter "xml"

    .prologue
    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->settings:Ljava/util/Hashtable;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/vlservice/config/VLConfigParser;->minimumAppVersion:Ljava/lang/String;

    .line 50
    return-void
.end method
