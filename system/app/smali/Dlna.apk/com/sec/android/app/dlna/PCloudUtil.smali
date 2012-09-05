.class public Lcom/sec/android/app/dlna/PCloudUtil;
.super Ljava/lang/Object;
.source "PCloudUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ItemInfo2ContentItem(Ljava/util/HashMap;)Lcom/samsung/api/ContentItem;
    .registers 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/api/ContentItem;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, contentInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Lcom/samsung/xml/Node;

    const-string v24, "item"

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 70
    .local v15, node:Lcom/samsung/xml/Node;
    new-instance v18, Lcom/samsung/xml/Node;

    const-string v24, "upnp:storageMedium"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 71
    .local v18, storage:Lcom/samsung/xml/Node;
    const-string v24, "UNKNOWN"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 74
    new-instance v23, Lcom/samsung/xml/Node;

    const-string v24, "upnp:writeStatus"

    invoke-direct/range {v23 .. v24}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 75
    .local v23, writeStatus:Lcom/samsung/xml/Node;
    const-string v24, "UNKNOWN"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 79
    new-instance v8, Lcom/samsung/xml/Node;

    const-string v24, "dc:date"

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, date:Lcom/samsung/xml/Node;
    const-string v24, "2000-01-01"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v15, v8}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 83
    new-instance v14, Lcom/samsung/xml/Node;

    const-string v24, "dc:title"

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 84
    .local v14, nameNode:Lcom/samsung/xml/Node;
    const-string v24, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 86
    new-instance v6, Lcom/samsung/xml/Node;

    const-string v24, "upnp:class"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 87
    .local v6, classNode:Lcom/samsung/xml/Node;
    const-string v24, "mime_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 89
    .local v13, mimeType:Ljava/lang/String;
    new-instance v17, Lcom/samsung/xml/Node;

    const-string v24, "res"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 90
    .local v17, resNode:Lcom/samsung/xml/Node;
    const-string v24, "image"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_17b

    .line 91
    const-string v24, "object.item.imageItem"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 92
    new-instance v5, Lcom/samsung/xml/Attribute;

    const-string v25, "size"

    const-string v24, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v5, attrSize:Lcom/samsung/xml/Attribute;
    new-instance v4, Lcom/samsung/xml/Attribute;

    const-string v25, "resolution"

    const-string v24, "resolution"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v4, attrResolution:Lcom/samsung/xml/Attribute;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 95
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 97
    new-instance v16, Lcom/samsung/xml/Attribute;

    const-string v24, "protocolInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "http-get:*:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":DLNA.ORG_OP=01"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v16, protocolInfo:Lcom/samsung/xml/Attribute;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 99
    const-string v24, "contentUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 138
    .end local v4           #attrResolution:Lcom/samsung/xml/Attribute;
    .end local v5           #attrSize:Lcom/samsung/xml/Attribute;
    .end local v16           #protocolInfo:Lcom/samsung/xml/Attribute;
    :cond_10b
    :goto_10b
    invoke-virtual {v15, v14}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 139
    invoke-virtual {v15, v6}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 140
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 142
    const-string v24, "thumbnail"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 143
    .local v22, thumbnailUrl:Ljava/lang/String;
    if-eqz v22, :cond_175

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_175

    .line 144
    new-instance v20, Lcom/samsung/xml/Node;

    const-string v24, "res"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 145
    .local v20, thumbResNode:Lcom/samsung/xml/Node;
    new-instance v21, Lcom/samsung/xml/Attribute;

    const-string v24, "resolution"

    const-string v25, "120X120"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v21, thumbResolution:Lcom/samsung/xml/Attribute;
    new-instance v19, Lcom/samsung/xml/Attribute;

    const-string v24, "protocolInfo"

    const-string v25, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_TN;DLNA.ORG_OP=01;DLNA.ORG_CI=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v19, thumbProtocolInfo:Lcom/samsung/xml/Attribute;
    const-string v24, "thumbnail"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 149
    invoke-virtual/range {v20 .. v21}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 151
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 153
    .end local v19           #thumbProtocolInfo:Lcom/samsung/xml/Attribute;
    .end local v20           #thumbResNode:Lcom/samsung/xml/Node;
    .end local v21           #thumbResolution:Lcom/samsung/xml/Attribute;
    :cond_175
    new-instance v7, Lcom/samsung/api/ContentItem;

    invoke-direct {v7, v15}, Lcom/samsung/api/ContentItem;-><init>(Lcom/samsung/xml/Node;)V

    .line 154
    .local v7, contentItem:Lcom/samsung/api/ContentItem;
    return-object v7

    .line 100
    .end local v7           #contentItem:Lcom/samsung/api/ContentItem;
    .end local v22           #thumbnailUrl:Ljava/lang/String;
    :cond_17b
    const-string v24, "video"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_22e

    .line 101
    const-string v24, "object.item.videoItem.movie"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 102
    new-instance v5, Lcom/samsung/xml/Attribute;

    const-string v25, "size"

    const-string v24, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .restart local v5       #attrSize:Lcom/samsung/xml/Attribute;
    new-instance v4, Lcom/samsung/xml/Attribute;

    const-string v25, "resolution"

    const-string v24, "resolution"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .restart local v4       #attrResolution:Lcom/samsung/xml/Attribute;
    :try_start_1ba
    const-string v24, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 107
    .local v11, longduration:J
    invoke-static {v11, v12}, Lcom/sec/android/app/dlna/PCloudUtil;->stringForTime(J)Ljava/lang/String;
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1cd} :catch_22a

    move-result-object v9

    .line 111
    .end local v11           #longduration:J
    .local v9, duration:Ljava/lang/String;
    :goto_1ce
    new-instance v3, Lcom/samsung/xml/Attribute;

    const-string v24, "duration"

    move-object/from16 v0, v24

    invoke-direct {v3, v0, v9}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v3, attrDuration:Lcom/samsung/xml/Attribute;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 113
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 114
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 116
    new-instance v16, Lcom/samsung/xml/Attribute;

    const-string v24, "protocolInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "http-get:*:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":DLNA.ORG_OP=01"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .restart local v16       #protocolInfo:Lcom/samsung/xml/Attribute;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 118
    const-string v24, "contentUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    goto/16 :goto_10b

    .line 108
    .end local v3           #attrDuration:Lcom/samsung/xml/Attribute;
    .end local v9           #duration:Ljava/lang/String;
    .end local v16           #protocolInfo:Lcom/samsung/xml/Attribute;
    :catch_22a
    move-exception v10

    .line 109
    .local v10, e:Ljava/lang/Exception;
    const-string v9, "00:00:00"

    .restart local v9       #duration:Ljava/lang/String;
    goto :goto_1ce

    .line 119
    .end local v4           #attrResolution:Lcom/samsung/xml/Attribute;
    .end local v5           #attrSize:Lcom/samsung/xml/Attribute;
    .end local v9           #duration:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    :cond_22e
    const-string v24, "audio"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_10b

    .line 120
    const-string v24, "object.item.audioItem"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 121
    new-instance v5, Lcom/samsung/xml/Attribute;

    const-string v25, "size"

    const-string v24, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .restart local v5       #attrSize:Lcom/samsung/xml/Attribute;
    :try_start_256
    const-string v24, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 125
    .restart local v11       #longduration:J
    invoke-static {v11, v12}, Lcom/sec/android/app/dlna/PCloudUtil;->stringForTime(J)Ljava/lang/String;
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_269} :catch_2c1

    move-result-object v9

    .line 129
    .end local v11           #longduration:J
    .restart local v9       #duration:Ljava/lang/String;
    :goto_26a
    new-instance v3, Lcom/samsung/xml/Attribute;

    const-string v24, "duration"

    move-object/from16 v0, v24

    invoke-direct {v3, v0, v9}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .restart local v3       #attrDuration:Lcom/samsung/xml/Attribute;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 131
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 133
    new-instance v16, Lcom/samsung/xml/Attribute;

    const-string v24, "protocolInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "http-get:*:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":DLNA.ORG_OP=01"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .restart local v16       #protocolInfo:Lcom/samsung/xml/Attribute;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    .line 135
    const-string v24, "contentUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    goto/16 :goto_10b

    .line 126
    .end local v3           #attrDuration:Lcom/samsung/xml/Attribute;
    .end local v9           #duration:Ljava/lang/String;
    .end local v16           #protocolInfo:Lcom/samsung/xml/Attribute;
    :catch_2c1
    move-exception v10

    .line 127
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v9, "00:00:00"

    .restart local v9       #duration:Ljava/lang/String;
    goto :goto_26a
.end method

.method public static getContentItem(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v3, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "mime_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, mime_type:Ljava/lang/String;
    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v4, "mime_type"

    const-string v5, "mime_type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v4, "size"

    const-string v5, "size"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 36
    const-string v4, "resolution"

    const-string v5, "resolution"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v4, "duration"

    const-string v5, "duration"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "thumbnail"

    const-string v5, "thumbnail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v2           #mime_type:Ljava/lang/String;
    .end local v3           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5a
    :goto_5a
    return-object v3

    .line 40
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #mime_type:Ljava/lang/String;
    .restart local v3       #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5b
    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 41
    const-string v4, "resolution"

    const-string v5, "resolution"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v4, "thumbnail"

    const-string v5, "thumbnail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_79} :catch_7a

    goto :goto_5a

    .line 49
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v2           #mime_type:Ljava/lang/String;
    .end local v3           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_7a
    move-exception v0

    .line 50
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    const/4 v3, 0x0

    goto :goto_5a

    .line 43
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #mime_type:Ljava/lang/String;
    .restart local v3       #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_80
    :try_start_80
    const-string v4, "audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 44
    const-string v4, "duration"

    const-string v5, "duration"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v4, "thumbnail"

    const-string v5, "thumbnail"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_9e} :catch_7a

    goto :goto_5a
.end method

.method public static getStringFromUrl(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/String;
    .registers 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    .local p1, handler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 58
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 61
    .local v0, bContext:Lorg/apache/http/protocol/HttpContext;
    :try_start_f
    invoke-interface {v1, v3, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_15} :catch_16

    return-object v4

    .line 62
    :catch_16
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "HttpClient RuntimeException.."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static stringForTime(J)Ljava/lang/String;
    .registers 14
    .parameter "timeMs"

    .prologue
    const-wide/16 v10, 0x3c

    .line 158
    const-wide/16 v8, 0x3e8

    div-long v6, p0, v8

    .line 159
    .local v6, totalSeconds:J
    rem-long v4, v6, v10

    .line 160
    .local v4, seconds:J
    div-long v8, v6, v10

    rem-long v2, v8, v10

    .line 161
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 163
    .local v0, hours:J
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
