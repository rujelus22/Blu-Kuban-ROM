.class abstract Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;
.super Ljava/lang/Object;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;,
        Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;,
        Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;
    }
.end annotation


# instance fields
.field entryCount:I

.field private final mHandler:Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;

.field totalCount:I


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->mHandler:Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;

    .line 134
    return-void
.end method

.method protected static newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;
    .registers 5
    .parameter "column"

    .prologue
    .line 98
    iget v1, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v1, :pswitch_data_4a

    .line 118
    :pswitch_5
    const-string v1, "PicasaAPI"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 119
    const-string v1, "PicasaAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_34
    const/16 v0, 0xb

    .line 123
    .local v0, type:I
    :goto_36
    new-instance v1, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 100
    .end local v0           #type:I
    :pswitch_3e
    const/4 v0, 0x0

    .line 101
    .restart local v0       #type:I
    goto :goto_36

    .line 103
    .end local v0           #type:I
    :pswitch_40
    const/4 v0, 0x1

    .line 104
    .restart local v0       #type:I
    goto :goto_36

    .line 106
    .end local v0           #type:I
    :pswitch_42
    const/4 v0, 0x3

    .line 107
    .restart local v0       #type:I
    goto :goto_36

    .line 109
    .end local v0           #type:I
    :pswitch_44
    const/4 v0, 0x4

    .line 110
    .restart local v0       #type:I
    goto :goto_36

    .line 112
    .end local v0           #type:I
    :pswitch_46
    const/4 v0, 0x5

    .line 113
    .restart local v0       #type:I
    goto :goto_36

    .line 115
    .end local v0           #type:I
    :pswitch_48
    const/4 v0, 0x6

    .line 116
    .restart local v0       #type:I
    goto :goto_36

    .line 98
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_40
        :pswitch_5
        :pswitch_42
        :pswitch_44
        :pswitch_46
        :pswitch_48
    .end packed-switch
.end method

.method private static parseAtomTimestamp(Ljava/lang/String;)J
    .registers 4
    .parameter "timestamp"

    .prologue
    .line 322
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 323
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private parseEntry(Lcom/google/android/apps/plus/json/JsonReader;)V
    .registers 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->getEntryFieldMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->mHandler:Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;->handleEntry(Landroid/content/ContentValues;)V

    .line 191
    return-void
.end method

.method private parseFeed(Lcom/google/android/apps/plus/json/JsonReader;)V
    .registers 7
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, etag:Ljava/lang/String;
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->entryCount:I

    .line 158
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->totalCount:I

    .line 159
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 161
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 162
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, name:Ljava/lang/String;
    const-string v2, "gd$etag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 164
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 165
    :cond_21
    const-string v2, "openSearch$totalResults"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 166
    const-string v2, "$t"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->totalCount:I

    goto :goto_a

    .line 167
    :cond_36
    const-string v2, "entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 169
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginArray()V

    .line 170
    :goto_41
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseEntry(Lcom/google/android/apps/plus/json/JsonReader;)V

    .line 172
    iget v2, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->entryCount:I

    goto :goto_41

    .line 174
    :cond_51
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endArray()V

    goto :goto_a

    .line 176
    :cond_55
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_a

    .line 179
    .end local v1           #name:Ljava/lang/String;
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    .line 180
    const-string v2, "PicasaAPI"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 181
    const-string v2, "PicasaAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   etag: --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",entryCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->entryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_89
    return-void
.end method

.method private parseFieldValue(Lcom/google/android/apps/plus/json/JsonReader;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "reader"
    .parameter "field"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget v1, p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;->type:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_19

    .line 248
    iget v1, p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;->type:I

    packed-switch v1, :pswitch_data_4e

    .line 253
    iget v1, p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;->type:I

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->handleComplexValue(Lcom/google/android/apps/plus/json/JsonReader;ILandroid/content/ContentValues;)V

    .line 269
    .end local p2
    :goto_10
    return-void

    .line 250
    .restart local p2
    :pswitch_11
    check-cast p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;

    .end local p2
    iget-object v1, p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$NestedObjectField;->map:Ljava/util/Map;

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    goto :goto_10

    .line 255
    .restart local p2
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    if-ne v1, v2, :cond_4a

    .line 257
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 258
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 259
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, name:Ljava/lang/String;
    const-string v1, "$t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parsePrimitiveValue(Lcom/google/android/apps/plus/json/JsonReader;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    .line 262
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_48

    const/4 v1, 0x1

    :goto_41
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 264
    .end local v0           #name:Ljava/lang/String;
    :cond_44
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    goto :goto_10

    .line 262
    .restart local v0       #name:Ljava/lang/String;
    :cond_48
    const/4 v1, 0x0

    goto :goto_41

    .line 267
    .end local v0           #name:Ljava/lang/String;
    :cond_4a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parsePrimitiveValue(Lcom/google/android/apps/plus/json/JsonReader;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    goto :goto_10

    .line 248
    :pswitch_data_4e
    .packed-switch 0xc
        :pswitch_11
    .end packed-switch
.end method

.method private parsePrimitiveValue(Lcom/google/android/apps/plus/json/JsonReader;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V
    .registers 14
    .parameter "reader"
    .parameter "field"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v2, p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 275
    .local v2, columnName:Ljava/lang/String;
    iget v5, p2, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;->type:I

    .line 277
    .local v5, type:I
    packed-switch v5, :pswitch_data_b8

    .line 311
    :pswitch_7
    :try_start_7
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2a

    .line 313
    :catch_2a
    move-exception v3

    .line 314
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "PicasaAPI"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 315
    const-string v7, "PicasaAPI"

    const-string v8, "error parsing value"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    .line 319
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void

    .line 279
    :pswitch_3f
    :try_start_3f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 282
    :pswitch_47
    move-object v0, p2

    check-cast v0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;

    move-object v1, v0

    .line 283
    .local v1, booleanField:Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 284
    .local v4, onOff:Z
    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;->getValue(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3e

    .line 287
    .end local v1           #booleanField:Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$BooleanObjectField;
    .end local v4           #onOff:Z
    :pswitch_5f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3e

    .line 290
    :pswitch_6b
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3e

    .line 293
    :pswitch_77
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_3e

    .line 296
    :pswitch_84
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_3e

    .line 299
    :pswitch_90
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_97} :catch_2a

    move-result v7

    if-nez v7, :cond_3e

    .line 302
    :try_start_9a
    invoke-static {v6}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a5} :catch_a6

    goto :goto_3e

    .line 303
    :catch_a6
    move-exception v3

    .line 304
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_a7
    const-string v7, "PicasaAPI"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 305
    const-string v7, "PicasaAPI"

    const-string v8, "parseAtomTimestamp"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b7} :catch_2a

    goto :goto_3e

    .line 277
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_47
        :pswitch_7
        :pswitch_5f
        :pswitch_6b
        :pswitch_77
        :pswitch_84
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_90
    .end packed-switch
.end method


# virtual methods
.method protected abstract getEntryFieldMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleComplexValue(Lcom/google/android/apps/plus/json/JsonReader;ILandroid/content/ContentValues;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final parse(Ljava/io/InputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Lcom/google/android/apps/plus/json/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/apps/plus/json/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 138
    .local v1, reader:Lcom/google/android/apps/plus/json/JsonReader;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 140
    :goto_f
    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 141
    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, name:Ljava/lang/String;
    const-string v2, "feed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 143
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseFeed(Lcom/google/android/apps/plus/json/JsonReader;)V

    .line 150
    .end local v0           #name:Ljava/lang/String;
    :goto_24
    return-void

    .line 146
    .restart local v0       #name:Ljava/lang/String;
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_f

    .line 149
    .end local v0           #name:Ljava/lang/String;
    :cond_29
    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    goto :goto_24
.end method

.method protected final parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "reader"
    .parameter "jsonKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 217
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 218
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 219
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->peek()Lcom/google/android/apps/plus/json/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/json/JsonToken;->BEGIN_OBJECT:Lcom/google/android/apps/plus/json/JsonToken;

    if-ne v1, v2, :cond_2f

    .line 221
    const-string v1, "$t"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_22
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 227
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_22

    .line 223
    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 232
    :cond_34
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_4

    .line 235
    :cond_38
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    .line 236
    return-object v0
.end method

.method protected final parseObject(Lcom/google/android/apps/plus/json/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "reader"
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/json/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    .local p2, objectFieldMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 198
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 199
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, name:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;

    .line 201
    .local v0, field:Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;
    if-eqz v0, :cond_19

    .line 202
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser;->parseFieldValue(Lcom/google/android/apps/plus/json/JsonReader;Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    goto :goto_3

    .line 204
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 207
    .end local v0           #field:Lcom/google/android/apps/plus/iu/PicasaJsonReaderParser$ObjectField;
    .end local v1           #name:Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    .line 208
    return-void
.end method
