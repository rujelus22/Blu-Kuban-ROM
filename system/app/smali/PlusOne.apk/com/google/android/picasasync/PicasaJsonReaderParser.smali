.class abstract Lcom/google/android/picasasync/PicasaJsonReaderParser;
.super Ljava/lang/Object;
.source "PicasaJsonReaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;,
        Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;,
        Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    }
.end annotation


# instance fields
.field entryCount:I

.field private final mHandler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;

.field totalCount:I


# direct methods
.method protected constructor <init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->mHandler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .line 144
    return-void
.end method

.method protected static newObjectField(Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;)Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    .registers 5
    .parameter "column"

    .prologue
    .line 110
    iget v1, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v1, :pswitch_data_42

    .line 130
    :pswitch_5
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

    .line 131
    const/16 v0, 0xb

    .line 133
    .local v0, type:I
    :goto_2d
    new-instance v1, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 112
    .end local v0           #type:I
    :pswitch_35
    const/4 v0, 0x0

    .line 113
    .restart local v0       #type:I
    goto :goto_2d

    .line 115
    .end local v0           #type:I
    :pswitch_37
    const/4 v0, 0x1

    .line 116
    .restart local v0       #type:I
    goto :goto_2d

    .line 118
    .end local v0           #type:I
    :pswitch_39
    const/4 v0, 0x3

    .line 119
    .restart local v0       #type:I
    goto :goto_2d

    .line 121
    .end local v0           #type:I
    :pswitch_3b
    const/4 v0, 0x4

    .line 122
    .restart local v0       #type:I
    goto :goto_2d

    .line 124
    .end local v0           #type:I
    :pswitch_3d
    const/4 v0, 0x5

    .line 125
    .restart local v0       #type:I
    goto :goto_2d

    .line 127
    .end local v0           #type:I
    :pswitch_3f
    const/4 v0, 0x6

    .line 128
    .restart local v0       #type:I
    goto :goto_2d

    .line 110
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_35
        :pswitch_37
        :pswitch_5
        :pswitch_39
        :pswitch_3b
        :pswitch_3d
        :pswitch_3f
    .end packed-switch
.end method

.method private static parseAtomTimestamp(Ljava/lang/String;)J
    .registers 4
    .parameter "timestamp"

    .prologue
    .line 328
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 329
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 330
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private parseEntry(Lcom/google/android/picasasync/JsonReader;)V
    .registers 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->getEntryFieldMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->mHandler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    invoke-interface {v1, v0}, Lcom/google/android/picasasync/PicasaApi$EntryHandler;->handleEntry(Landroid/content/ContentValues;)V

    .line 199
    return-void
.end method

.method private parseFeed(Lcom/google/android/picasasync/JsonReader;)V
    .registers 7
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, etag:Ljava/lang/String;
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    .line 168
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->totalCount:I

    .line 169
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 171
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 172
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, name:Ljava/lang/String;
    const-string v2, "gd$etag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 174
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 175
    :cond_21
    const-string v2, "openSearch$totalResults"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 176
    const-string v2, "$t"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->totalCount:I

    goto :goto_a

    .line 177
    :cond_36
    const-string v2, "entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 179
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginArray()V

    .line 180
    :goto_41
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseEntry(Lcom/google/android/picasasync/JsonReader;)V

    .line 182
    iget v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    goto :goto_41

    .line 184
    :cond_51
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endArray()V

    goto :goto_a

    .line 186
    :cond_55
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_a

    .line 189
    .end local v1           #name:Ljava/lang/String;
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    .line 190
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

    iget v4, p0, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private parseFieldValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V
    .registers 8
    .parameter "reader"
    .parameter "field"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 256
    .local v0, columnName:Ljava/lang/String;
    iget v2, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1b

    .line 258
    iget v2, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    packed-switch v2, :pswitch_data_50

    .line 263
    iget v2, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->handleComplexValue(Lcom/google/android/picasasync/JsonReader;ILandroid/content/ContentValues;)V

    .line 279
    .end local p2
    :goto_12
    return-void

    .line 260
    .restart local p2
    :pswitch_13
    check-cast p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;

    .end local p2
    iget-object v2, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$NestedObjectField;->map:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V

    goto :goto_12

    .line 265
    .restart local p2
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    if-ne v2, v3, :cond_4c

    .line 267
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 268
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 269
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, name:Ljava/lang/String;
    const-string v2, "$t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parsePrimitiveValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    .line 272
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    :goto_43
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 274
    .end local v1           #name:Ljava/lang/String;
    :cond_46
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    goto :goto_12

    .line 272
    .restart local v1       #name:Ljava/lang/String;
    :cond_4a
    const/4 v2, 0x0

    goto :goto_43

    .line 277
    .end local v1           #name:Ljava/lang/String;
    :cond_4c
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parsePrimitiveValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    goto :goto_12

    .line 258
    :pswitch_data_50
    .packed-switch 0xc
        :pswitch_13
    .end packed-switch
.end method

.method private parsePrimitiveValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V
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
    .line 284
    iget-object v2, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->columnName:Ljava/lang/String;

    .line 285
    .local v2, columnName:Ljava/lang/String;
    iget v5, p2, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;->type:I

    .line 287
    .local v5, type:I
    packed-switch v5, :pswitch_data_a6

    .line 319
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

    .line 321
    :catch_2a
    move-exception v3

    .line 322
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "PicasaAPI"

    const-string v8, "error parsing value"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    .line 325
    .end local v3           #e:Ljava/lang/Exception;
    :cond_35
    :goto_35
    return-void

    .line 289
    :pswitch_36
    :try_start_36
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 292
    :pswitch_3e
    move-object v0, p2

    check-cast v0, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;

    move-object v1, v0

    .line 293
    .local v1, booleanField:Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 294
    .local v4, onOff:Z
    invoke-virtual {v1, v4}, Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;->getValue(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_35

    .line 297
    .end local v1           #booleanField:Lcom/google/android/picasasync/PicasaJsonReaderParser$BooleanObjectField;
    .end local v4           #onOff:Z
    :pswitch_56
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_35

    .line 300
    :pswitch_62
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_35

    .line 303
    :pswitch_6e
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_35

    .line 306
    :pswitch_7b
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextDouble()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_35

    .line 309
    :pswitch_87
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_8e} :catch_2a

    move-result v7

    if-nez v7, :cond_35

    .line 312
    :try_start_91
    invoke-static {v6}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseAtomTimestamp(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9c} :catch_9d

    goto :goto_35

    .line 313
    :catch_9d
    move-exception v3

    .line 314
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_9e
    const-string v7, "PicasaAPI"

    const-string v8, "parseAtomTimestamp"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_2a

    goto :goto_35

    .line 287
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3e
        :pswitch_7
        :pswitch_56
        :pswitch_62
        :pswitch_6e
        :pswitch_7b
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_87
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
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleComplexValue(Lcom/google/android/picasasync/JsonReader;ILandroid/content/ContentValues;)V
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
    .line 147
    new-instance v1, Lcom/google/android/picasasync/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v1, reader:Lcom/google/android/picasasync/JsonReader;
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 150
    :goto_f
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 151
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, name:Ljava/lang/String;
    const-string v2, "feed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 153
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseFeed(Lcom/google/android/picasasync/JsonReader;)V

    .line 160
    .end local v0           #name:Ljava/lang/String;
    :goto_24
    return-void

    .line 156
    .restart local v0       #name:Ljava/lang/String;
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_f

    .line 159
    .end local v0           #name:Ljava/lang/String;
    :cond_29
    invoke-virtual {v1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    goto :goto_24
.end method

.method protected final parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "reader"
    .parameter "jsonKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 225
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 226
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 227
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->peek()Lcom/google/android/picasasync/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    if-ne v1, v2, :cond_2f

    .line 229
    const-string v1, "$t"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_22
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 235
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_22

    .line 231
    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 240
    :cond_34
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_4

    .line 243
    :cond_38
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    .line 244
    return-object v0
.end method

.method protected final parseObject(Lcom/google/android/picasasync/JsonReader;Ljava/util/Map;Landroid/content/ContentValues;)V
    .registers 7
    .parameter "reader"
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/picasasync/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;",
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
    .line 205
    .local p2, objectFieldMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;>;"
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->beginObject()V

    .line 206
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 207
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, name:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;

    .line 209
    .local v0, field:Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    if-eqz v0, :cond_19

    .line 210
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/picasasync/PicasaJsonReaderParser;->parseFieldValue(Lcom/google/android/picasasync/JsonReader;Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;Landroid/content/ContentValues;)V

    goto :goto_3

    .line 212
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->skipValue()V

    goto :goto_3

    .line 215
    .end local v0           #field:Lcom/google/android/picasasync/PicasaJsonReaderParser$ObjectField;
    .end local v1           #name:Ljava/lang/String;
    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/picasasync/JsonReader;->endObject()V

    .line 216
    return-void
.end method
