.class public Lcom/google/android/gm/provider/ProtoBufHelpers;
.super Ljava/lang/Object;
.source "ProtoBufHelpers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V
    .registers 7
    .parameter "proto"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, results:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 106
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 107
    invoke-virtual {p0, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 109
    :cond_15
    return-void
.end method

.method public static getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V
    .registers 6
    .parameter "proto"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, results:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/common/io/protocol/ProtoBuf;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 120
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 121
    invoke-virtual {p0, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 123
    :cond_11
    return-void
.end method

.method public static getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V
    .registers 6
    .parameter "proto"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, results:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 134
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 135
    invoke-virtual {p0, p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 137
    :cond_11
    return-void
.end method

.method public static printConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 11
    .parameter "proto"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 140
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 141
    .local v0, durationDays:J
    const-string v4, "Gmail"

    const-string v5, "ConfigInfoProto: Conversation Age Days: %d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 143
    .local v3, includeLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 144
    .local v2, durationLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x2

    invoke-static {p0, v4, v3}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 145
    const-string v4, "Gmail"

    const-string v5, "ConfigInfoProto: Included Canonical Label Name: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v9

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    const/4 v4, 0x3

    invoke-static {p0, v4, v2}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 147
    const-string v4, "Gmail"

    const-string v5, "ConfigInfoProto: Duration Canonical Label Name: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    return-void
.end method

.method public static printForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 28
    .parameter "proto"

    .prologue
    .line 240
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v19

    .line 241
    .local v19, operationId:J
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: operationid: %d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_e4

    .line 243
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 245
    .local v14, labeledOrUnlabeled:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 247
    .local v4, conversationId:J
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 249
    .local v3, change:I
    if-nez v3, :cond_da

    const/4 v7, 0x1

    .line 251
    .local v7, labelAdded:Z
    :goto_4a
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_dd

    const/4 v12, 0x1

    .line 253
    .local v12, labelRemoved:Z
    :goto_51
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v3, v0, :cond_e0

    const/16 v16, 0x1

    .line 255
    .local v16, messagesExpunged:Z
    :goto_59
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: ThreadLabelOrUnlabeled, conversationId: %d,labelAdded: %b labelRemoved: %b messagesExpunged: %b"

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    if-nez v7, :cond_8c

    if-eqz v12, :cond_ab

    .line 259
    :cond_8c
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 261
    .local v10, labelId:J
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: ThreadLabelOrUnLabel, labelId: %d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 263
    .end local v10           #labelId:J
    :cond_ab
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v21

    .line 265
    .local v21, syncRationale:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 266
    .local v15, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-static {v14, v0, v15}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 270
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: syncRationale: %d, messageIds: %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v15, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    .end local v3           #change:I
    .end local v4           #conversationId:J
    .end local v7           #labelAdded:Z
    .end local v12           #labelRemoved:Z
    .end local v14           #labeledOrUnlabeled:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v15           #messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16           #messagesExpunged:Z
    .end local v21           #syncRationale:I
    :cond_d9
    :goto_d9
    return-void

    .line 249
    .restart local v3       #change:I
    .restart local v4       #conversationId:J
    .restart local v14       #labeledOrUnlabeled:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_da
    const/4 v7, 0x0

    goto/16 :goto_4a

    .line 251
    .restart local v7       #labelAdded:Z
    :cond_dd
    const/4 v12, 0x0

    goto/16 :goto_51

    .line 253
    .restart local v12       #labelRemoved:Z
    :cond_e0
    const/16 v16, 0x0

    goto/16 :goto_59

    .line 272
    .end local v3           #change:I
    .end local v4           #conversationId:J
    .end local v7           #labelAdded:Z
    .end local v12           #labelRemoved:Z
    .end local v14           #labeledOrUnlabeled:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_e4
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_132

    .line 273
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 275
    .local v8, labelCreated:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 277
    .restart local v10       #labelId:J
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, canonicalName:Ljava/lang/String;
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, displayName:Ljava/lang/String;
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: LabelCreated, labelId: %d canonicalName: %sdisplayName: %s"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v2, v24, v25

    const/16 v25, 0x2

    aput-object v6, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_d9

    .line 283
    .end local v2           #canonicalName:Ljava/lang/String;
    .end local v6           #displayName:Ljava/lang/String;
    .end local v8           #labelCreated:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v10           #labelId:J
    :cond_132
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_181

    .line 284
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v13

    .line 286
    .local v13, labelRenamed:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 288
    .restart local v10       #labelId:J
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 290
    .local v17, newCanonicalName:Ljava/lang/String;
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 292
    .local v18, newDisplayName:Ljava/lang/String;
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: LabelRenamed, labelId: %d newCanonicalName: %s newDisplayName: %s"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aput-object v17, v24, v25

    const/16 v25, 0x2

    aput-object v18, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_d9

    .line 294
    .end local v10           #labelId:J
    .end local v13           #labelRenamed:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v17           #newCanonicalName:Ljava/lang/String;
    .end local v18           #newDisplayName:Ljava/lang/String;
    :cond_181
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_d9

    .line 295
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 297
    .local v9, labelDeleted:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 299
    .restart local v10       #labelId:J
    const-string v22, "Gmail"

    const-string v23, "ForwardSyncProto: LabelDeleted, labelId: %d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v22 .. v24}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_d9
.end method

.method public static printHttpResponseChunkProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter "proto"

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "HttpResponseChunk: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 331
    const-string v1, "ConfigInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :cond_13
    :goto_13
    const-string v1, "Gmail"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    return-void

    .line 332
    :cond_20
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 333
    const-string v1, "ConfigAccepted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 334
    :cond_2d
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 335
    const-string v1, "StartSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 336
    :cond_3a
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 337
    const-string v1, "UphillSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 338
    :cond_47
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 339
    const-string v1, "ForwardSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 340
    :cond_54
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 341
    const-string v1, "CheckConversation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 342
    :cond_62
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 343
    const-string v1, "BeginConversation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 344
    :cond_70
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 345
    const-string v1, "BeginMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 346
    :cond_7e
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 347
    const-string v1, "NoConversation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 348
    :cond_8c
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 349
    const-string v1, "NoMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_13

    .line 350
    :cond_9b
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 351
    const-string v1, "SyncPostamble"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_13
.end method

.method public static printHttpResponseProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 15
    .parameter "proto"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    .line 305
    const/4 v4, -0x1

    .line 306
    .local v4, serverVersion:I
    invoke-virtual {p0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 307
    invoke-virtual {p0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 309
    :cond_10
    invoke-virtual {p0, v13}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-virtual {p0, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v8

    if-eqz v8, :cond_68

    move v2, v6

    .line 311
    .local v2, hasVersionError:Z
    :goto_1d
    const-wide/16 v0, -0x1

    .line 312
    .local v0, delay:J
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 313
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    int-to-long v0, v8

    .line 315
    :cond_2c
    const-string v5, "noWipeDescription"

    .line 316
    .local v5, wipeDescription:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 317
    invoke-virtual {p0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 319
    :cond_38
    const/4 v3, -0x1

    .line 320
    .local v3, responseVersion:I
    invoke-virtual {p0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 321
    invoke-virtual {p0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 323
    :cond_43
    const-string v8, "Gmail"

    const-string v9, "HttpProtoResponse: serverVersion: %d, hasVersionError: %b, delay: %d, responseVersion: %d wipeDescription: %s"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v13

    const/4 v6, 0x4

    aput-object v5, v10, v6

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    return-void

    .end local v0           #delay:J
    .end local v2           #hasVersionError:Z
    .end local v3           #responseVersion:I
    .end local v5           #wipeDescription:Ljava/lang/String;
    :cond_68
    move v2, v7

    .line 309
    goto :goto_1d
.end method

.method public static printStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 18
    .parameter "proto"

    .prologue
    .line 152
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v9

    .line 153
    .local v9, numLabels:I
    const-string v12, "Gmail"

    const-string v13, "StartSyncInfoProto: Labels: numLabels: %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v9, :cond_88

    .line 155
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 156
    .local v6, labelProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 157
    .local v4, labelId:J
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, canonicalName:Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, name:Ljava/lang/String;
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 161
    .local v8, numConversations:I
    const/4 v12, 0x5

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    .line 163
    .local v10, numUnreadConversations:I
    const/4 v2, -0x1

    .line 164
    .local v2, color:I
    const/4 v12, 0x6

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 165
    const/4 v12, 0x6

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 167
    :cond_48
    const-string v11, "Default"

    .line 168
    .local v11, visibility:Ljava/lang/String;
    const/4 v12, 0x7

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 169
    const/4 v12, 0x7

    invoke-virtual {v6, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    :cond_56
    const-string v12, "Gmail"

    const-string v13, "StartSyncInfoProto: Label id: %d canonicalName: %s displayName: %snumConversations: %d numUnreadConversations: %d color: %d visibility: %s"

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/4 v15, 0x2

    aput-object v7, v14, v15

    const/4 v15, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    aput-object v11, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 176
    .end local v1           #canonicalName:Ljava/lang/String;
    .end local v2           #color:I
    .end local v4           #labelId:J
    .end local v6           #labelProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #numConversations:I
    .end local v10           #numUnreadConversations:I
    .end local v11           #visibility:Ljava/lang/String;
    :cond_88
    return-void
.end method

.method public static printSyncPostambleProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 15
    .parameter "proto"

    .prologue
    .line 216
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 217
    .local v6, protoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/io/protocol/ProtoBuf;>;"
    const/4 v9, 0x5

    invoke-static {p0, v9, v6}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 219
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/io/protocol/ProtoBuf;

    .line 220
    .local v3, labelCountProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 221
    .local v1, count:I
    const v0, 0x7fffffff

    .line 222
    .local v0, color:I
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 223
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 225
    :cond_2c
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 227
    .local v7, unreadCount:I
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 229
    .local v4, labelId:J
    const-string v8, "SHOW"

    .line 230
    .local v8, visibility:Ljava/lang/String;
    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 231
    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 234
    :cond_44
    const-string v9, "Gmail"

    const-string v10, "SyncPostAmbleProto: labelId: %d, count: %d, unreadCount: %d, color: %d, visibility: %s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object v8, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_c

    .line 237
    .end local v0           #color:I
    .end local v1           #count:I
    .end local v3           #labelCountProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v4           #labelId:J
    .end local v7           #unreadCount:I
    .end local v8           #visibility:Ljava/lang/String;
    :cond_6e
    return-void
.end method

.method public static printUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .registers 21
    .parameter "proto"

    .prologue
    .line 179
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v12

    .line 180
    .local v12, numNotHandled:I
    const-string v15, "Gmail"

    const-string v16, "UphillSyncProto: numNothandled: %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1f
    if-ge v6, v12, :cond_50

    .line 183
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 185
    .local v11, notHandled:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 187
    .local v7, messageId:J
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, error:Ljava/lang/String;
    const-string v15, "Gmail"

    const-string v16, "UphillSyncProto: Nothandled: messageId: %d, error: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 193
    .end local v3           #error:Ljava/lang/String;
    .end local v7           #messageId:J
    .end local v11           #notHandled:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_50
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v13

    .line 194
    .local v13, numSavedOrSent:I
    const-string v15, "Gmail"

    const-string v16, "UphillSyncProto: numSavedOrSent: %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    const/4 v6, 0x0

    :goto_6f
    if-ge v6, v13, :cond_b1

    .line 197
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 199
    .local v14, savedOrSent:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v9

    .line 201
    .local v9, messageIdOnClient:J
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 203
    .restart local v7       #messageId:J
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 205
    .local v1, conversationId:J
    const-string v15, "Gmail"

    const-string v16, "UphillSyncProto: SavedOrSent: messageIDOnClient: %d messageId: %d conversationId: %d"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 209
    .end local v1           #conversationId:J
    .end local v7           #messageId:J
    .end local v9           #messageIdOnClient:J
    .end local v14           #savedOrSent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_b1
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v15

    if-eqz v15, :cond_d8

    .line 210
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 211
    .local v4, handledOperationId:J
    const-string v15, "Gmail"

    const-string v16, "UphillSyncProto: handledOperationId: %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 213
    .end local v4           #handledOperationId:J
    :cond_d8
    return-void
.end method
