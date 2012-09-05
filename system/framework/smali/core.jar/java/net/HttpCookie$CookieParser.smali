.class Ljava/net/HttpCookie$CookieParser;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookieParser"
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME_TERMINATORS:Ljava/lang/String; = ",;= \t"

.field private static final WHITESPACE:Ljava/lang/String; = " \t"


# instance fields
.field hasExpires:Z

.field hasMaxAge:Z

.field hasVersion:Z

.field private final input:Ljava/lang/String;

.field private final inputLowerCase:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "input"

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 224
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    .line 225
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    .line 226
    iput-boolean v0, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    .line 229
    iput-object p1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    .line 230
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    .line 231
    return-void
.end method

.method private find(Ljava/lang/String;)I
    .registers 5
    .parameter "chars"

    .prologue
    .line 407
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .local v0, c:I
    :goto_2
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 408
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 412
    .end local v0           #c:I
    :goto_17
    return v0

    .line 407
    .restart local v0       #c:I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    :cond_1b
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_17
.end method

.method private readAttributeName(Z)Ljava/lang/String;
    .registers 6
    .parameter "returnLowerCase"

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 354
    const-string v3, ",;= \t"

    invoke-direct {p0, v3}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    move-result v0

    .line 355
    .local v0, c:I
    if-eqz p1, :cond_1a

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    .line 356
    .local v1, forSubstring:Ljava/lang/String;
    :goto_d
    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    if-ge v3, v0, :cond_1d

    iget v3, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, result:Ljava/lang/String;
    :goto_17
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 358
    return-object v2

    .line 355
    .end local v1           #forSubstring:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :cond_1a
    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    goto :goto_d

    .line 356
    .restart local v1       #forSubstring:Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private readAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "terminators"

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 385
    iget v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v5, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_64

    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_25

    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_64

    .line 386
    :cond_25
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 387
    .local v2, quoteCharacter:C
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 388
    .local v1, closeQuote:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_57

    .line 389
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unterminated string literal in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 391
    :cond_57
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, result:Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 399
    .end local v1           #closeQuote:I
    .end local v2           #quoteCharacter:C
    :goto_63
    return-object v3

    .line 396
    .end local v3           #result:Ljava/lang/String;
    :cond_64
    invoke-direct {p0, p1}, Ljava/net/HttpCookie$CookieParser;->find(Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, c:I
    iget-object v4, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v5, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 398
    .restart local v3       #result:Ljava/lang/String;
    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_63
.end method

.method private readEqualsSign()Z
    .registers 3

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 366
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v0, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v1, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_21

    .line 367
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 368
    const/4 v0, 0x1

    .line 370
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "cookie"
    .parameter "name"
    .parameter "value"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 316
    const-string v1, "comment"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    #getter for: Ljava/net/HttpCookie;->comment:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$100(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    .line 317
    #setter for: Ljava/net/HttpCookie;->comment:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .end local p3
    :cond_14
    :goto_14
    return-void

    .line 318
    .restart local p3
    :cond_15
    const-string v1, "commenturl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    #getter for: Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$200(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    .line 319
    #setter for: Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 320
    :cond_27
    const-string v1, "discard"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 321
    #setter for: Ljava/net/HttpCookie;->discard:Z
    invoke-static {p1, v3}, Ljava/net/HttpCookie;->access$302(Ljava/net/HttpCookie;Z)Z

    goto :goto_14

    .line 322
    :cond_33
    const-string v1, "domain"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    #getter for: Ljava/net/HttpCookie;->domain:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$400(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_45

    .line 323
    #setter for: Ljava/net/HttpCookie;->domain:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 324
    :cond_45
    const-string v1, "expires"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 325
    iput-boolean v3, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    .line 326
    #getter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1}, Ljava/net/HttpCookie;->access$500(Ljava/net/HttpCookie;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_14

    .line 327
    invoke-static {p3}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 328
    .local v0, date:Ljava/util/Date;
    if-eqz v0, :cond_61

    .line 329
    #calls: Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V
    invoke-static {p1, v0}, Ljava/net/HttpCookie;->access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V

    goto :goto_14

    .line 331
    :cond_61
    const-wide/16 v1, 0x0

    #setter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1, v1, v2}, Ljava/net/HttpCookie;->access$502(Ljava/net/HttpCookie;J)J

    goto :goto_14

    .line 334
    .end local v0           #date:Ljava/util/Date;
    :cond_67
    const-string v1, "max-age"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    #getter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1}, Ljava/net/HttpCookie;->access$500(Ljava/net/HttpCookie;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-nez v1, :cond_81

    .line 335
    iput-boolean v3, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    .line 336
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    #setter for: Ljava/net/HttpCookie;->maxAge:J
    invoke-static {p1, v1, v2}, Ljava/net/HttpCookie;->access$502(Ljava/net/HttpCookie;J)J

    goto :goto_14

    .line 337
    :cond_81
    const-string v1, "path"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    #getter for: Ljava/net/HttpCookie;->path:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$700(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_93

    .line 338
    #setter for: Ljava/net/HttpCookie;->path:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_14

    .line 339
    :cond_93
    const-string v1, "port"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    #getter for: Ljava/net/HttpCookie;->portList:Ljava/lang/String;
    invoke-static {p1}, Ljava/net/HttpCookie;->access$800(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ab

    .line 340
    if-eqz p3, :cond_a8

    .end local p3
    :goto_a3
    #setter for: Ljava/net/HttpCookie;->portList:Ljava/lang/String;
    invoke-static {p1, p3}, Ljava/net/HttpCookie;->access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_14

    .restart local p3
    :cond_a8
    const-string p3, ""

    goto :goto_a3

    .line 341
    :cond_ab
    const-string v1, "secure"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 342
    #setter for: Ljava/net/HttpCookie;->secure:Z
    invoke-static {p1, v3}, Ljava/net/HttpCookie;->access$902(Ljava/net/HttpCookie;Z)Z

    goto/16 :goto_14

    .line 343
    :cond_b8
    const-string v1, "version"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    if-nez v1, :cond_14

    .line 344
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {p1, v1}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_14
.end method

.method private skipWhitespace()V
    .registers 4

    .prologue
    .line 416
    :goto_0
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 417
    const-string v0, " \t"

    iget-object v1, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v2, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 421
    :cond_1b
    return-void

    .line 416
    :cond_1c
    iget v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v3, cookies:Ljava/util/List;,"Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v5, 0x1

    .line 238
    .local v5, pre2965:Z
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    const-string v11, "set-cookie2:"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 239
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    const-string v11, "set-cookie2:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 240
    const/4 v5, 0x0

    .line 241
    iput-boolean v10, p0, Ljava/net/HttpCookie$CookieParser;->hasVersion:Z

    .line 251
    :cond_21
    :goto_21
    invoke-direct {p0, v9}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, name:Ljava/lang/String;
    if-nez v4, :cond_5e

    .line 253
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_114

    .line 254
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No cookies in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 242
    .end local v4           #name:Ljava/lang/String;
    :cond_48
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->inputLowerCase:Ljava/lang/String;

    const-string v11, "set-cookie:"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 243
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    const-string v11, "set-cookie:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_21

    .line 259
    .restart local v4       #name:Ljava/lang/String;
    :cond_5e
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    move-result v8

    if-nez v8, :cond_89

    .line 260
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected \'=\' after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 264
    :cond_89
    if-eqz v5, :cond_b5

    const-string v8, ";"

    :goto_8d
    invoke-direct {p0, v8}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, value:Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v4, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v2, cookie:Ljava/net/HttpCookie;
    if-eqz v5, :cond_b8

    move v8, v9

    :goto_99
    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v8}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    .line 267
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_9f
    :goto_9f
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->skipWhitespace()V

    .line 276
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    iget-object v11, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v8, v11, :cond_ba

    .line 307
    :goto_ac
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasExpires:Z

    if-eqz v8, :cond_10b

    .line 308
    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v9}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_21

    .line 264
    .end local v2           #cookie:Ljava/net/HttpCookie;
    .end local v7           #value:Ljava/lang/String;
    :cond_b5
    const-string v8, ",;"

    goto :goto_8d

    .restart local v2       #cookie:Ljava/net/HttpCookie;
    .restart local v7       #value:Ljava/lang/String;
    :cond_b8
    move v8, v10

    .line 266
    goto :goto_99

    .line 280
    :cond_ba
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v11, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x2c

    if-ne v8, v11, :cond_cd

    .line 281
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    goto :goto_ac

    .line 283
    :cond_cd
    iget-object v8, p0, Ljava/net/HttpCookie$CookieParser;->input:Ljava/lang/String;

    iget v11, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x3b

    if-ne v8, v11, :cond_df

    .line 284
    iget v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/net/HttpCookie$CookieParser;->pos:I

    .line 287
    :cond_df
    invoke-direct {p0, v10}, Ljava/net/HttpCookie$CookieParser;->readAttributeName(Z)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, attributeName:Ljava/lang/String;
    if-eqz v0, :cond_9f

    .line 296
    if-nez v5, :cond_f7

    const-string v8, "expires"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f7

    const-string v8, "port"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_108

    :cond_f7
    const-string v6, ";"

    .line 300
    .local v6, terminators:Ljava/lang/String;
    :goto_f9
    const/4 v1, 0x0

    .line 301
    .local v1, attributeValue:Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/HttpCookie$CookieParser;->readEqualsSign()Z

    move-result v8

    if-eqz v8, :cond_104

    .line 302
    invoke-direct {p0, v6}, Ljava/net/HttpCookie$CookieParser;->readAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_104
    invoke-direct {p0, v2, v0, v1}, Ljava/net/HttpCookie$CookieParser;->setAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 296
    .end local v1           #attributeValue:Ljava/lang/String;
    .end local v6           #terminators:Ljava/lang/String;
    :cond_108
    const-string v6, ";,"

    goto :goto_f9

    .line 309
    .end local v0           #attributeName:Ljava/lang/String;
    :cond_10b
    iget-boolean v8, p0, Ljava/net/HttpCookie$CookieParser;->hasMaxAge:Z

    if-eqz v8, :cond_21

    .line 310
    #setter for: Ljava/net/HttpCookie;->version:I
    invoke-static {v2, v10}, Ljava/net/HttpCookie;->access$002(Ljava/net/HttpCookie;I)I

    goto/16 :goto_21

    .line 256
    .end local v2           #cookie:Ljava/net/HttpCookie;
    .end local v7           #value:Ljava/lang/String;
    :cond_114
    return-object v3
.end method
