.class Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlagDescriptionHandler"
.end annotation


# instance fields
.field private flagContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flagDescriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation
.end field

.field private flagFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final flagNodeChildren:[Ljava/lang/String;

.field private nodeData:Ljava/lang/StringBuilder;

.field private parseState:Lcom/google/common/flags/XmlSupport$ParseState;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagContainers:Ljava/util/List;

    .line 135
    sget-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->nodeData:Ljava/lang/StringBuilder;

    .line 139
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "shortname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "doc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "doclevel"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "altname"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagNodeChildren:[Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    .line 152
    iput-object p1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagDescriptions:Ljava/util/Map;

    .line 153
    invoke-direct {p0}, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->clearFlagFields()V

    .line 154
    return-void
.end method

.method private clearFlagFields()V
    .registers 7

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagNodeChildren:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 158
    .local v1, elementName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 160
    .end local v1           #elementName:Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private currentFlagName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, flagName:Ljava/lang/String;
    if-nez v0, :cond_e

    const-string v0, "<unknown>"

    .end local v0           #flagName:Ljava/lang/String;
    :cond_e
    return-object v0
.end method

.method private makeFlagDescription()Lcom/google/common/flags/FlagDescription;
    .registers 10

    .prologue
    .line 240
    iget-object v6, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v7, "name"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    .local v3, fullyQualifiedFieldName:Ljava/lang/String;
    if-nez v3, :cond_14

    .line 242
    new-instance v6, Lcom/google/common/flags/MalformedFlagDescriptionException;

    const-string v7, "name missing"

    invoke-direct {v6, v7}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    :cond_14
    iget-object v6, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v7, "doclevel"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, level:Ljava/lang/String;
    if-nez v4, :cond_39

    .line 247
    new-instance v6, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doclevel missing for flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 253
    :cond_39
    :try_start_39
    const-class v6, Lcom/google/common/flags/DocLevel;

    invoke-static {v6, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/DocLevel;
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_41} :catch_66

    .line 259
    .local v1, docLevel:Lcom/google/common/flags/DocLevel;
    iget-object v6, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v7, "doc"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, doc:Ljava/lang/String;
    if-nez v0, :cond_8a

    .line 261
    new-instance v6, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doc missing for flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    .end local v0           #doc:Ljava/lang/String;
    .end local v1           #docLevel:Lcom/google/common/flags/DocLevel;
    :catch_66
    move-exception v2

    .line 255
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal doclevel for flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #doc:Ljava/lang/String;
    .restart local v1       #docLevel:Lcom/google/common/flags/DocLevel;
    :cond_8a
    iget-object v6, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v7, "type"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    .local v5, type:Ljava/lang/String;
    if-nez v5, :cond_af

    .line 267
    new-instance v6, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type missing for flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :cond_af
    invoke-static {v3}, Lcom/google/common/flags/FlagDescription;->createFlagFromField(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v7

    iget-object v6, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v8, "shortname"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/common/flags/FlagDescription$Builder;->shortFlagName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/common/flags/FlagDescription$Builder;->doc(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v7

    iget-object v6, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    const-string v8, "altname"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/common/flags/FlagDescription$Builder;->altName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/common/flags/FlagDescription$Builder;->docLevel(Lcom/google/common/flags/DocLevel;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/common/flags/FlagDescription$Builder;->type(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/flags/FlagDescription$Builder;->build()Lcom/google/common/flags/FlagDescription;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public characters([CII)V
    .registers 6
    .parameter "chunk"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

    if-ne v0, v1, :cond_7

    .line 200
    :goto_6
    return-void

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->nodeData:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public endDocument()V
    .registers 8

    .prologue
    .line 285
    iget-object v5, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagContainers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    .local v0, className:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/flags/XmlSupport;->discoverFlags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 287
    .local v2, flags:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 288
    .local v1, d:Lcom/google/common/flags/FlagDescription;
    iget-object v5, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagDescriptions:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 289
    iget-object v5, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagDescriptions:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 293
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #d:Lcom/google/common/flags/FlagDescription;
    .end local v2           #flags:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3c
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 207
    sget-object v1, Lcom/google/common/flags/XmlSupport$1;->$SwitchMap$com$google$common$flags$XmlSupport$ParseState:[I

    iget-object v2, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    invoke-virtual {v2}, Lcom/google/common/flags/XmlSupport$ParseState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ac

    .line 233
    new-instance v1, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_26
    invoke-direct {p0}, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->makeFlagDescription()Lcom/google/common/flags/FlagDescription;

    move-result-object v0

    .line 213
    .local v0, d:Lcom/google/common/flags/FlagDescription;
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagDescriptions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 214
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagDescriptions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_3f
    invoke-direct {p0}, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->clearFlagFields()V

    .line 217
    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    .line 236
    .end local v0           #d:Lcom/google/common/flags/FlagDescription;
    :goto_46
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->nodeData:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    :pswitch_4c
    return-void

    .line 220
    :pswitch_4d
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 221
    new-instance v1, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element encountered while parsing flag named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->currentFlagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_7c
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->nodeData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/common/flags/XmlSupport;->xmlUnescape(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/flags/XmlSupport;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    goto :goto_46

    .line 229
    :pswitch_94
    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagContainers:Ljava/util/List;

    iget-object v2, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->nodeData:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/common/flags/XmlSupport;->xmlUnescape(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/flags/XmlSupport;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/google/common/flags/XmlSupport$ParseState;->FLAGS:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    goto :goto_46

    .line 207
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_26
        :pswitch_94
        :pswitch_4d
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"

    .prologue
    .line 165
    sget-object v0, Lcom/google/common/flags/XmlSupport$1;->$SwitchMap$com$google$common$flags$XmlSupport$ParseState:[I

    iget-object v1, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    invoke-virtual {v1}, Lcom/google/common/flags/XmlSupport$ParseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 184
    new-instance v0, Lcom/google/common/flags/MalformedFlagDescriptionException;

    const-string v1, "Unexpected parse state"

    invoke-direct {v0, v1}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_15
    const-string v0, "flag"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 168
    sget-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    .line 186
    :cond_21
    :goto_21
    return-void

    .line 169
    :cond_22
    const-string v0, "flagcontainer"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 170
    sget-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG_CONTAINER:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    goto :goto_21

    .line 175
    :pswitch_2f
    iget-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->flagFields:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 176
    new-instance v0, Lcom/google/common/flags/MalformedFlagDescriptionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate element encountered while parsing flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->currentFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_5e
    sget-object v0, Lcom/google/common/flags/XmlSupport$ParseState;->FLAG_CHILD:Lcom/google/common/flags/XmlSupport$ParseState;

    iput-object v0, p0, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;->parseState:Lcom/google/common/flags/XmlSupport$ParseState;

    goto :goto_21

    .line 165
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2f
    .end packed-switch
.end method
