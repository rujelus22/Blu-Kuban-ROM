.class public Lcom/syncmldstmo/base/sml$SML_ATOMIC;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_ATOMIC"
.end annotation


# instance fields
.field public cmdid:I

.field public is_noresp:I

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseAtomic(Lcom/syncmldstmo/base/smlParser;)I
    .registers 18
    .parameter "p"

    .prologue
    .line 2125
    const/4 v7, -0x1

    .line 2127
    .local v7, id:I
    const/4 v2, 0x1

    .line 2129
    .local v2, call_start_atomic:Z
    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v10

    .line 2131
    .local v10, res:I
    if-eqz v10, :cond_e

    move v13, v10

    .line 2286
    :goto_d
    return v13

    .line 2140
    :cond_e
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_35

    move-result v7

    .line 2147
    :goto_12
    const/4 v13, 0x1

    if-ne v7, v13, :cond_3e

    .line 2149
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 2278
    if-eqz v2, :cond_28

    .line 2280
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2281
    const/4 v2, 0x0

    .line 2284
    :cond_28
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicEnd(Ljava/lang/Object;)V

    .line 2286
    const/4 v13, 0x0

    goto :goto_d

    .line 2142
    :catch_35
    move-exception v5

    .line 2144
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_12

    .line 2153
    .end local v5           #e:Ljava/io/IOException;
    :cond_3e
    sparse-switch v7, :sswitch_data_192

    .line 2267
    const/high16 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2268
    const/4 v10, 0x2

    .line 2272
    :goto_56
    if-eqz v10, :cond_e

    move v13, v10

    .line 2274
    goto :goto_d

    .line 2157
    :sswitch_5a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->cmdid:I

    goto :goto_56

    .line 2161
    :sswitch_69
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->is_noresp:I

    goto :goto_56

    .line 2165
    :sswitch_74
    new-instance v13, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v13}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 2166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_56

    .line 2171
    :sswitch_87
    if-eqz v2, :cond_97

    .line 2173
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2174
    const/4 v2, 0x0

    .line 2176
    :cond_97
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_ADD;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_ADD;-><init>()V

    .line 2177
    .local v1, add:Lcom/syncmldstmo/base/sml$SML_ADD;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/sml$SML_ADD;->__smlparParseAdd(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2178
    goto :goto_56

    .line 2181
    .end local v1           #add:Lcom/syncmldstmo/base/sml$SML_ADD;
    :sswitch_a3
    if-eqz v2, :cond_b3

    .line 2183
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2184
    const/4 v2, 0x0

    .line 2186
    :cond_b3
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_DELETE;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_DELETE;-><init>()V

    .line 2187
    .local v4, delete:Lcom/syncmldstmo/base/sml$SML_DELETE;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/syncmldstmo/base/sml$SML_DELETE;->__smlparParseDelete(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2188
    goto :goto_56

    .line 2191
    .end local v4           #delete:Lcom/syncmldstmo/base/sml$SML_DELETE;
    :sswitch_bf
    if-eqz v2, :cond_cf

    .line 2193
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2194
    const/4 v2, 0x0

    .line 2196
    :cond_cf
    new-instance v6, Lcom/syncmldstmo/base/sml$SML_EXEC;

    invoke-direct {v6}, Lcom/syncmldstmo/base/sml$SML_EXEC;-><init>()V

    .line 2197
    .local v6, exec:Lcom/syncmldstmo/base/sml$SML_EXEC;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/syncmldstmo/base/sml$SML_EXEC;->__smlparParseExec(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2198
    goto/16 :goto_56

    .line 2201
    .end local v6           #exec:Lcom/syncmldstmo/base/sml$SML_EXEC;
    :sswitch_dc
    if-eqz v2, :cond_ec

    .line 2203
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2204
    const/4 v2, 0x0

    .line 2206
    :cond_ec
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_COPY;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_COPY;-><init>()V

    .line 2207
    .local v3, copy:Lcom/syncmldstmo/base/sml$SML_COPY;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/syncmldstmo/base/sml$SML_COPY;->__smlparParseCopy(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2208
    goto/16 :goto_56

    .line 2211
    .end local v3           #copy:Lcom/syncmldstmo/base/sml$SML_COPY;
    :sswitch_f9
    if-eqz v2, :cond_109

    .line 2213
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2214
    const/4 v2, 0x0

    .line 2216
    :cond_109
    invoke-virtual/range {p0 .. p1}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->__smlparParseAtomic(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2217
    goto/16 :goto_56

    .line 2220
    :sswitch_10f
    if-eqz v2, :cond_11f

    .line 2222
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2223
    const/4 v2, 0x0

    .line 2225
    :cond_11f
    new-instance v8, Lcom/syncmldstmo/base/sml$SML_MAP;

    invoke-direct {v8}, Lcom/syncmldstmo/base/sml$SML_MAP;-><init>()V

    .line 2226
    .local v8, map:Lcom/syncmldstmo/base/sml$SML_MAP;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/syncmldstmo/base/sml$SML_MAP;->__smlparParseMap(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2227
    goto/16 :goto_56

    .line 2230
    .end local v8           #map:Lcom/syncmldstmo/base/sml$SML_MAP;
    :sswitch_12c
    if-eqz v2, :cond_13c

    .line 2232
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2233
    const/4 v2, 0x0

    .line 2235
    :cond_13c
    new-instance v9, Lcom/syncmldstmo/base/sml$SML_REPLACE;

    invoke-direct {v9}, Lcom/syncmldstmo/base/sml$SML_REPLACE;-><init>()V

    .line 2236
    .local v9, replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/syncmldstmo/base/sml$SML_REPLACE;->__smlparParseReplace(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2237
    goto/16 :goto_56

    .line 2240
    .end local v9           #replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;
    :sswitch_149
    if-eqz v2, :cond_159

    .line 2242
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2243
    const/4 v2, 0x0

    .line 2245
    :cond_159
    new-instance v11, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;

    invoke-direct {v11}, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;-><init>()V

    .line 2246
    .local v11, sequence:Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->__smlparParseSequence(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2247
    goto/16 :goto_56

    .line 2250
    .end local v11           #sequence:Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
    :sswitch_166
    if-eqz v2, :cond_176

    .line 2252
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V

    .line 2253
    const/4 v2, 0x0

    .line 2255
    :cond_176
    new-instance v12, Lcom/syncmldstmo/base/sml$SML_SYNC;

    invoke-direct {v12}, Lcom/syncmldstmo/base/sml$SML_SYNC;-><init>()V

    .line 2256
    .local v12, sync:Lcom/syncmldstmo/base/sml$SML_SYNC;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/syncmldstmo/base/sml$SML_SYNC;->__smlparParseSync(Lcom/syncmldstmo/base/smlParser;)I

    move-result v10

    .line 2257
    goto/16 :goto_56

    .line 2260
    .end local v12           #sync:Lcom/syncmldstmo/base/sml$SML_SYNC;
    :sswitch_183
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v7

    .line 2261
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v7

    .line 2263
    move-object/from16 v0, p1

    iput v7, v0, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto/16 :goto_56

    .line 2153
    nop

    :sswitch_data_192
    .sparse-switch
        0x0 -> :sswitch_183
        0x5 -> :sswitch_87
        0x8 -> :sswitch_f9
        0xb -> :sswitch_5a
        0xd -> :sswitch_dc
        0x10 -> :sswitch_a3
        0x11 -> :sswitch_bf
        0x18 -> :sswitch_10f
        0x1a -> :sswitch_74
        0x1d -> :sswitch_69
        0x20 -> :sswitch_12c
        0x24 -> :sswitch_149
        0x2a -> :sswitch_166
    .end sparse-switch
.end method
