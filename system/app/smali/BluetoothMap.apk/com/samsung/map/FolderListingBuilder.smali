.class public Lcom/samsung/map/FolderListingBuilder;
.super Ljava/lang/Object;
.source "FolderListingBuilder.java"


# instance fields
.field private hasparent:Z

.field private items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/FolderListingBuilder;->items:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/FolderListingBuilder;->items:Ljava/util/Vector;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/map/FolderListingBuilder;->hasparent:Z

    .line 49
    return-void
.end method


# virtual methods
.method public addFolderEntry(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/map/FolderListingBuilder;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 62
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 63
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 65
    .local v4, writer:Ljava/io/StringWriter;
    :try_start_9
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 66
    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 68
    const-string v5, ""

    const-string v6, "folder-listing"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v5, ""

    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget-boolean v5, p0, Lcom/samsung/map/FolderListingBuilder;->hasparent:Z

    if-eqz v5, :cond_38

    .line 71
    const-string v5, ""

    const-string v6, "parent-folder"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const-string v5, ""

    const-string v6, "parent-folder"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    :cond_38
    iget-object v5, p0, Lcom/samsung/map/FolderListingBuilder;->items:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, name:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "folder"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string v5, ""

    const-string v6, "name"

    invoke-interface {v3, v5, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v5, ""

    const-string v6, "folder"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5f} :catch_60

    goto :goto_3e

    .line 83
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :catch_60
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v5, ""

    .end local v0           #e:Ljava/lang/Exception;
    :goto_63
    return-object v5

    .line 79
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_64
    :try_start_64
    const-string v5, ""

    const-string v6, "folder-listing"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 82
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_71} :catch_60

    move-result-object v5

    goto :goto_63
.end method
