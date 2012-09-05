.class public Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;
.super Ljava/lang/Object;
.source "SharedStatusProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 271
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SharedStatusProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 10
    .parameter "parser"
    .parameter "attributeName"
    .parameter "defVal"

    .prologue
    .line 35
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, valStr:Ljava/lang/String;
    move v1, p3

    .line 39
    .local v1, valInt:I
    if-eqz v2, :cond_c

    .line 40
    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v1

    .line 46
    :cond_c
    :goto_c
    return v1

    .line 42
    :catch_d
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SharedStatusProvider] parseAttributeIntValue caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private parseStatusList(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V
    .registers 10
    .parameter "protobuf"
    .parameter "sharedStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x7

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 234
    .local v3, show:I
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 237
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_1d

    .line 238
    invoke-virtual {p1, v6, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, status:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 245
    .end local v4           #status:Ljava/lang/String;
    :cond_1d
    if-nez v3, :cond_23

    .line 247
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDefaultStatusList(Ljava/util/List;)V

    .line 252
    :goto_22
    return-void

    .line 250
    :cond_23
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDndStatusList(Ljava/util/List;)V

    goto :goto_22
.end method

.method private parseStatusList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V
    .registers 11
    .parameter "parser"
    .parameter "sharedStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v6, 0x0

    const-string v7, "show"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, show:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 113
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_3b

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 115
    .local v1, eventType:I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2a

    .line 116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, nodeName:Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, status:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 124
    .end local v3           #nodeName:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    :cond_2a
    const/4 v6, 0x3

    if-ne v1, v6, :cond_d

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "status-list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 126
    const/4 v0, 0x1

    goto :goto_d

    .line 131
    .end local v1           #eventType:I
    :cond_3b
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 133
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDefaultStatusList(Ljava/util/List;)V

    .line 138
    :goto_46
    return-void

    .line 136
    :cond_47
    invoke-virtual {p2, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setDndStatusList(Ljava/util/List;)V

    goto :goto_46
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .registers 3

    .prologue
    .line 263
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_d
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->SHARED_STATUS:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .registers 3

    .prologue
    .line 255
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 256
    const/4 v0, 0x0

    .line 259
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x5

    goto :goto_6
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .registers 13
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    sget-byte v9, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 142
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "should not get called."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 145
    :cond_d
    new-instance v4, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 147
    .local v4, sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setUseServerAttributes(Z)V

    .line 150
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 151
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMax(I)V

    .line 156
    :cond_27
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 157
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListMax(I)V

    .line 163
    :cond_36
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 165
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListContentsMax(I)V

    .line 171
    :cond_45
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_ac

    .line 172
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setHasStatusMinVersion(Z)V

    .line 174
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 176
    .local v8, statusMinVersion:I
    invoke-virtual {v4, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMinVersion(I)V

    .line 177
    sget-boolean v9, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v9, :cond_74

    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseIQ: status-min-version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->log(Ljava/lang/String;)V

    .line 184
    .end local v8           #statusMinVersion:I
    :cond_74
    :goto_74
    const/4 v7, 0x0

    .line 185
    .local v7, status:Ljava/lang/String;
    const/4 v6, 0x0

    .line 188
    .local v6, showStr:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 189
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-virtual {v4, v7}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatus(Ljava/lang/String;)V

    .line 194
    :cond_85
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 195
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 196
    .local v5, show:I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_b1

    const-string v6, "dnd"

    .line 198
    :goto_96
    invoke-virtual {v4, v6}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setShow(Ljava/lang/String;)V

    .line 204
    .end local v5           #show:I
    :cond_99
    const/4 v9, 0x6

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 209
    .local v3, numLists:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9f
    if-ge v0, v3, :cond_b4

    .line 210
    const/4 v9, 0x6

    invoke-virtual {p1, v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 213
    .local v2, listPb:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v2, v4}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseStatusList(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 181
    .end local v0           #i:I
    .end local v2           #listPb:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v3           #numLists:I
    .end local v6           #showStr:Ljava/lang/String;
    .end local v7           #status:Ljava/lang/String;
    :cond_ac
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setHasStatusMinVersion(Z)V

    goto :goto_74

    .line 196
    .restart local v5       #show:I
    .restart local v6       #showStr:Ljava/lang/String;
    .restart local v7       #status:Ljava/lang/String;
    :cond_b1
    const-string v6, "default"

    goto :goto_96

    .line 217
    .end local v5           #show:I
    .restart local v0       #i:I
    .restart local v3       #numLists:I
    :cond_b4
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 218
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    .line 220
    .local v1, invisible:Z
    invoke-virtual {v4, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setInvisible(Z)V

    .line 223
    .end local v1           #invisible:Z
    :cond_c5
    return-object v4
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .registers 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, done:Z
    new-instance v5, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 53
    .local v5, sharedStatus:Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;
    invoke-virtual {v5, v10}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setUseServerAttributes(Z)V

    .line 55
    const-string v8, "status-max"

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMax(I)V

    .line 58
    const-string v8, "status-list-max"

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListMax(I)V

    .line 61
    const-string v8, "status-list-contents-max"

    invoke-direct {p0, p1, v8, v9}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusListContentsMax(I)V

    .line 64
    const-string v8, "status-min-ver"

    invoke-direct {p0, p1, v8, v11}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseAttributeIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, minStatusVer:I
    if-eq v3, v11, :cond_37

    .line 66
    invoke-virtual {v5, v3}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatusMinVersion(I)V

    .line 67
    invoke-virtual {v5, v10}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setHasStatusMinVersion(Z)V

    .line 70
    :cond_37
    :goto_37
    if-nez v0, :cond_9c

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 72
    .local v1, eventType:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_8b

    .line 73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, nodeName:Ljava/lang/String;
    const-string v8, "status"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, status:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setStatus(Ljava/lang/String;)V

    goto :goto_37

    .line 81
    .end local v7           #status:Ljava/lang/String;
    :cond_54
    const-string v8, "show"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, show:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setShow(Ljava/lang/String;)V

    goto :goto_37

    .line 85
    .end local v6           #show:Ljava/lang/String;
    :cond_64
    const-string v8, "status-list"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 86
    invoke-direct {p0, p1, v5}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatusProvider;->parseStatusList(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;)V

    goto :goto_37

    .line 87
    :cond_70
    const-string v8, "invisible"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 88
    const/4 v8, 0x0

    const-string v9, "value"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, invisibleStr:Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 91
    invoke-virtual {v5, v10}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setInvisible(Z)V

    goto :goto_37

    .line 95
    .end local v2           #invisibleStr:Ljava/lang/String;
    .end local v4           #nodeName:Ljava/lang/String;
    :cond_8b
    const/4 v8, 0x3

    if-ne v1, v8, :cond_37

    .line 96
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "query"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 98
    const/4 v0, 0x1

    goto :goto_37

    .line 103
    .end local v1           #eventType:I
    :cond_9c
    return-object v5
.end method
