.class public Li/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/SortedMap;

.field private final d:Ljava/util/List;

.field private final e:Ljava/io/File;

.field private final f:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Li/v;->e:Ljava/io/File;

    .line 165
    iput-object p2, p0, Li/v;->f:Ljava/util/zip/ZipFile;

    .line 167
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Li/v;->a:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Li/v;->b:Ljava/util/Map;

    .line 169
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Li/v;->c:Ljava/util/SortedMap;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/v;->d:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 173
    invoke-direct {p0, v0}, Li/v;->a(Ljava/io/Reader;)V

    .line 174
    return-void
.end method

.method public static a(Ljava/io/File;)Li/v;
    .registers 5
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 193
    new-instance v0, Ljava/util/zip/ZipFile;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 195
    const-string v1, "messages.xml"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 202
    :goto_20
    new-instance v3, Li/v;

    invoke-direct {v3, v2, v0, v1}, Li/v;-><init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ljava/io/InputStream;)V

    return-object v3

    .line 198
    :cond_26
    const/4 v0, 0x0

    .line 199
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_20
.end method

.method private a(I)Li/z;
    .registers 4
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Li/v;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 368
    iget-object v0, p0, Li/v;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Li/v;->a(Ljava/lang/String;)Li/z;

    move-result-object v0

    .line 370
    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {}, Li/z;->b()Li/z;

    move-result-object v0

    goto :goto_1c
.end method

.method private a(Ljava/lang/String;)Li/z;
    .registers 3
    .parameter

    .prologue
    .line 400
    if-nez p1, :cond_7

    .line 401
    invoke-static {}, Li/z;->a()Li/z;

    move-result-object v0

    .line 403
    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1}, Li/v;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Li/z;->a(Ljava/io/File;)Li/z;

    move-result-object v0

    goto :goto_6
.end method

.method static synthetic a(Li/v;)Ljava/util/zip/ZipFile;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Li/v;->f:Ljava/util/zip/ZipFile;

    return-object v0
.end method

.method private a(Ljava/io/Reader;)V
    .registers 4
    .parameter

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 210
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 211
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 212
    invoke-direct {p0, v0}, Li/v;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_12} :catch_23

    .line 220
    return-void

    .line 213
    :catch_13
    move-exception v0

    .line 214
    const-string v1, "Unable to parse messages.xml"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :catch_23
    move-exception v0

    .line 217
    const-string v1, "Unable to parse messages.xml"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 228
    :goto_6
    if-eq v0, v5, :cond_71

    .line 229
    const/4 v2, 0x2

    if-ne v0, v2, :cond_33

    .line 230
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v2, "caption"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v3, "maneuver_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 234
    invoke-direct {p0, p1}, Li/v;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_21
    if-eqz v0, :cond_33

    if-eqz v2, :cond_33

    .line 251
    new-instance v3, Li/A;

    invoke-direct {p0, v0}, Li/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Li/A;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Li/v;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_6

    .line 235
    :cond_38
    const-string v3, "distance_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 236
    invoke-direct {p0, p1}, Li/v;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 237
    :cond_45
    const-string v3, "predefined_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 238
    invoke-direct {p0, p1}, Li/v;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 239
    :cond_52
    const-string v3, "voice_instructions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    move-object v0, v1

    goto :goto_21

    .line 243
    :cond_5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 245
    :cond_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 246
    if-eq v3, v5, :cond_6f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_60

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_60

    :cond_6f
    move-object v0, v1

    goto :goto_21

    .line 258
    :cond_71
    return-void
.end method

.method private b(I)Li/z;
    .registers 4
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Li/v;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 376
    iget-object v0, p0, Li/v;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Li/v;->a(Ljava/lang/String;)Li/z;

    move-result-object v0

    .line 378
    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {}, Li/z;->b()Li/z;

    move-result-object v0

    goto :goto_1c
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li/v;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/._"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 266
    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 267
    const-string v2, "suppressed"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 270
    iget-object v2, p0, Li/v;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_26
    :goto_26
    return-object v0

    .line 272
    :cond_27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v2, p0, Li/v;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 274
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated maneuver message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_50
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 277
    iget-object v2, p0, Li/v;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method private c(I)Li/z;
    .registers 4
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Li/v;->c:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 387
    invoke-static {}, Li/z;->b()Li/z;

    move-result-object v0

    .line 395
    :goto_1c
    return-object v0

    .line 390
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/y;

    .line 392
    invoke-virtual {v0, p1}, Li/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 393
    invoke-virtual {v0}, Li/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Li/v;->a(Ljava/lang/String;)Li/z;

    move-result-object v0

    goto :goto_1c

    .line 395
    :cond_32
    invoke-static {}, Li/z;->b()Li/z;

    move-result-object v0

    goto :goto_1c
.end method

.method private c(Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 419
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Li/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 460
    :cond_10
    :goto_10
    return-object v0

    .line 427
    :cond_11
    iget-object v2, p0, Li/v;->f:Ljava/util/zip/ZipFile;

    if-nez v2, :cond_17

    move-object v0, v1

    .line 428
    goto :goto_10

    .line 433
    :cond_17
    :try_start_17
    iget-object v2, p0, Li/v;->f:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 434
    if-nez v2, :cond_21

    move-object v0, v1

    .line 436
    goto :goto_10

    .line 439
    :cond_21
    new-instance v3, Li/w;

    invoke-direct {v3, p0, v2}, Li/w;-><init>(Li/v;Ljava/util/zip/ZipEntry;)V

    new-instance v4, Li/x;

    invoke-direct {v4, p0, v0}, Li/x;-><init>(Li/v;Ljava/io/File;)V

    invoke-static {v3, v4}, LH/a;->a(LH/e;LH/f;)J

    move-result-wide v3

    .line 451
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_10

    .line 452
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Copy incomplete"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3f} :catch_3f

    .line 454
    :catch_3f
    move-exception v2

    .line 456
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 457
    goto :goto_10
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 290
    const-string v0, "min"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    const-string v0, "max"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    const/high16 v1, -0x8000

    const v0, 0x7fffffff

    .line 293
    if-eqz v2, :cond_1c

    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 296
    :cond_1c
    if-eqz v3, :cond_26

    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    :cond_26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 301
    iget-object v3, p0, Li/v;->c:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-nez v3, :cond_48

    invoke-direct {p0, v0}, Li/v;->c(I)Li/z;

    move-result-object v3

    invoke-virtual {v3}, Li/z;->e()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 303
    :cond_48
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlapping distance message: min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " max="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_6b
    iget-object v3, p0, Li/v;->c:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Li/y;

    invoke-direct {v5, v1, v0, v2}, Li/y;-><init>(IILjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-object v2
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 321
    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Li/l;->a(Ljava/lang/String;)I

    move-result v2

    .line 324
    if-gez v2, :cond_e

    .line 340
    :goto_d
    return-object v0

    .line 329
    :cond_e
    iget-object v3, p0, Li/v;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 330
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated predefined message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_33
    const-string v1, "suppressed"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 336
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_45
    iget-object v1, p0, Li/v;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method


# virtual methods
.method public a(Li/l;)Li/z;
    .registers 3
    .parameter

    .prologue
    .line 350
    instance-of v0, p1, Li/r;

    if-eqz v0, :cond_f

    .line 351
    check-cast p1, Li/r;

    invoke-virtual {p1}, Li/r;->b()I

    move-result v0

    .line 353
    invoke-direct {p0, v0}, Li/v;->b(I)Li/z;

    move-result-object v0

    .line 363
    :goto_e
    return-object v0

    .line 354
    :cond_f
    instance-of v0, p1, Li/p;

    if-eqz v0, :cond_1e

    .line 355
    check-cast p1, Li/p;

    invoke-virtual {p1}, Li/p;->b()I

    move-result v0

    .line 357
    invoke-direct {p0, v0}, Li/v;->c(I)Li/z;

    move-result-object v0

    goto :goto_e

    .line 358
    :cond_1e
    instance-of v0, p1, Li/s;

    if-eqz v0, :cond_2d

    .line 359
    check-cast p1, Li/s;

    invoke-virtual {p1}, Li/s;->b()I

    move-result v0

    .line 361
    invoke-direct {p0, v0}, Li/v;->a(I)Li/z;

    move-result-object v0

    goto :goto_e

    .line 363
    :cond_2d
    invoke-static {}, Li/z;->b()Li/z;

    move-result-object v0

    goto :goto_e
.end method

.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Li/v;->d:Ljava/util/List;

    return-object v0
.end method
