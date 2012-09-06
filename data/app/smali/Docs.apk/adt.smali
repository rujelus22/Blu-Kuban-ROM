.class public Ladt;
.super Ljava/lang/Object;
.source "UriTemplate.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ladu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ladt;->a:Ljava/util/Map;

    .line 83
    invoke-static {}, Ladu;->values()[Ladu;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method static a(Ljava/lang/String;)Ladu;
    .registers 3
    .parameter

    .prologue
    .line 195
    sget-object v0, Ladt;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladu;

    .line 196
    if-nez v0, :cond_15

    sget-object v0, Ladu;->h:Ladu;

    :cond_15
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-static {p1}, Ladt;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 281
    :goto_e
    if-ge v0, v5, :cond_25

    .line 282
    const/16 v1, 0x7b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 283
    const/4 v2, -0x1

    if-ne v1, v2, :cond_33

    .line 284
    if-nez v0, :cond_1e

    if-nez p2, :cond_1e

    .line 340
    :goto_1d
    return-object p0

    .line 288
    :cond_1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_25
    if-eqz p2, :cond_2e

    .line 338
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v4}, LacZ;->a(Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 340
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    .line 291
    :cond_33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 v0, 0x7d

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 293
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 294
    add-int/lit8 v2, v0, 0x1

    .line 296
    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 297
    invoke-static {v1}, Ladt;->a(Ljava/lang/String;)Ladu;

    move-result-object v7

    .line 299
    invoke-virtual {v7}, Ladu;->a()I

    move-result v8

    .line 300
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    if-eqz v6, :cond_60

    .line 303
    add-int/lit8 v0, v0, -0x1

    .line 306
    :cond_60
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    if-nez v0, :cond_6c

    move v0, v2

    .line 311
    goto :goto_e

    .line 313
    :cond_6c
    instance-of v8, v0, Ljava/util/Iterator;

    if-eqz v8, :cond_7b

    .line 315
    check-cast v0, Ljava/util/Iterator;

    .line 316
    invoke-static {v1, v0, v6, v7}, Ladt;->a(Ljava/lang/String;Ljava/util/Iterator;ZLadu;)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_76
    :goto_76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 335
    goto :goto_e

    .line 317
    :cond_7b
    instance-of v8, v0, Ljava/lang/Iterable;

    if-nez v8, :cond_89

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 319
    :cond_89
    invoke-static {v0}, Laez;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 320
    invoke-static {v1, v0, v6, v7}, Ladt;->a(Ljava/lang/String;Ljava/util/Iterator;ZLadu;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 321
    :cond_96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_b2

    move-object v1, v0

    .line 322
    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Laen;->a(Ljava/lang/Enum;)Laen;

    move-result-object v1

    invoke-virtual {v1}, Laen;->a()Ljava/lang/String;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_76

    .line 324
    invoke-static {v1}, LaeD;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 326
    :cond_b2
    invoke-static {v0}, Laeh;->b(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c1

    .line 328
    invoke-static {v0}, Ladt;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 329
    invoke-static {v1, v0, v6, v7}, Ladt;->a(Ljava/lang/String;Ljava/util/Map;ZLadu;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 332
    :cond_c1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaeD;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_76
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 247
    new-instance v0, LacZ;

    invoke-direct {v0, p0}, LacZ;-><init>(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LacZ;->a(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, LacZ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_26
    :goto_26
    invoke-static {p1, p2, p3}, Ladt;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_2b
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_26
.end method

.method private static a(Ljava/lang/String;Ljava/util/Iterator;ZLadu;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<*>;Z",
            "Ladu;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 359
    const-string v0, ""

    .line 379
    :goto_8
    return-object v0

    .line 361
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    invoke-virtual {p3}, Ladu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    if-eqz p2, :cond_3a

    .line 365
    invoke-virtual {p3}, Ladu;->b()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 374
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ladu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 367
    :cond_3a
    const-string v0, ","

    .line 368
    invoke-virtual {p3}, Ladu;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 369
    invoke-static {p0}, LaeD;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 379
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;ZLadu;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ladu;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    const-string v0, ""

    .line 427
    :goto_8
    return-object v0

    .line 400
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    invoke-virtual {p3}, Ladu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    if-eqz p2, :cond_5c

    .line 405
    invoke-virtual {p3}, Ladu;->b()Ljava/lang/String;

    move-result-object v1

    .line 406
    const-string v0, "="

    move-object v2, v0

    move-object v3, v1

    .line 415
    :goto_1f
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 416
    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 417
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ladu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ladu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 424
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 408
    :cond_5c
    const-string v1, ","

    .line 409
    const-string v0, ","

    .line 410
    invoke-virtual {p3}, Ladu;->a()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 411
    invoke-static {p0}, LaeD;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    move-object v2, v0

    move-object v3, v1

    goto :goto_1f

    .line 427
    :cond_75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 210
    invoke-static {p0}, Laeh;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_11

    invoke-static {v3}, Laeh;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 216
    :cond_31
    return-object v1
.end method
