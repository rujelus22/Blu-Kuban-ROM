.class public Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;
.super Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;
.source "TaggedResultsParser.java"


# static fields
.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private final ATTRIBUTE_C:I

.field private final ATTRIBUTE_CA:I

.field private final ATTRIBUTE_CF:I

.field private final ATTRIBUTE_CSF:I

.field private final ATTRIBUTE_GUTTID:I

.field private final ATTRIBUTE_ID:I

.field private final ATTRIBUTE_N:I

.field private final ATTRIBUTE_NAME:I

.field private final ATTRIBUTE_NS:I

.field private final ATTRIBUTE_NSD:I

.field private final ATTRIBUTE_R:I

.field private final ATTRIBUTE_TYPE:I

.field private final RESULT_ALT:I

.field private final RESULT_CHOICE:I

.field private final RESULT_PARSE_GRP:I

.field private final RESULT_RECOGNITION:I

.field private final RESULT_TAG:I

.field private final RESULT_TAG_CHOICE:I

.field private final RESULT_TAG_LIST:I

.field private final RESULT_UTT_LIST:I

.field private final RESULT_WORD:I

.field private final RESULT_WORD_LIST:I

.field private choiceCount:I

.field private curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

.field private guttid:Ljava/lang/String;

.field private recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

.field srResultsParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

.field private tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

.field private wordCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/recognizer/results/SRResponseParser;)V
    .registers 5
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    iget-object v0, p1, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->parser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseSectionParser;-><init>(Lcom/vlingo/client/core/vlservice/response/VLResponseParser;)V

    .line 44
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 45
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    .line 46
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    .line 48
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    .line 57
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->srResultsParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    .line 60
    const-string v0, "Recognition"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_RECOGNITION:I

    .line 61
    const-string v0, "Alternates"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_ALT:I

    .line 62
    const-string v0, "UL"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_UTT_LIST:I

    .line 63
    const-string v0, "WL"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_WORD_LIST:I

    .line 64
    const-string v0, "T"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG_LIST:I

    .line 65
    const-string v0, "w"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_WORD:I

    .line 66
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_CHOICE:I

    .line 67
    const-string v0, "pg"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_PARSE_GRP:I

    .line 68
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG:I

    .line 69
    const-string v0, "tl"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerElement(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG_CHOICE:I

    .line 72
    const-string v0, "guttid"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_GUTTID:I

    .line 73
    const-string v0, "n"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    .line 74
    const-string v0, "r"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_R:I

    .line 75
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_ID:I

    .line 76
    const-string v0, "ns"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NS:I

    .line 77
    const-string v0, "nsd"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NSD:I

    .line 78
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_C:I

    .line 79
    const-string v0, "cf"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CF:I

    .line 80
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_TYPE:I

    .line 81
    const-string v0, "nm"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NAME:I

    .line 82
    const-string v0, "ca"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CA:I

    .line 83
    const-string v0, "csf"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->registerAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CSF:I

    .line 84
    return-void
.end method

.method private handleChoiceInUL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V
    .registers 14
    .parameter "attributes"
    .parameter "cData"

    .prologue
    const/4 v10, 0x0

    .line 359
    if-eqz p1, :cond_65

    .line 361
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_C:I

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, -0x4080

    invoke-static {v8, v9}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseFloat(Ljava/lang/String;F)F

    move-result v1

    .line 362
    .local v1, confidence:F
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CF:I

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, cannonical:Ljava/lang/String;
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CSF:I

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, csf:Ljava/lang/String;
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 365
    .local v3, numWords:I
    if-lez v3, :cond_62

    .line 366
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v4, v8, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 367
    .local v4, uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    array-length v8, v4

    iget v9, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    if-lt v8, v9, :cond_62

    .line 368
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    new-array v9, v3, [Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aput-object v9, v4, v8

    .line 369
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v7, v8, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListConf:[F

    .line 370
    .local v7, uttListConf:[F
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aput v1, v7, v8

    .line 371
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v6, v8, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    .line 372
    .local v6, uttListCannonical:[Ljava/lang/String;
    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v5, v8, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    .line 373
    .local v5, uttListCSF:[Ljava/lang/String;
    if-eqz v6, :cond_54

    .line 374
    if-eqz v0, :cond_54

    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aget-object v8, v6, v8

    if-nez v8, :cond_54

    .line 375
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aput-object v0, v6, v8

    .line 378
    :cond_54
    if-eqz v5, :cond_62

    .line 379
    if-eqz v2, :cond_62

    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aget-object v8, v5, v8

    if-nez v8, :cond_62

    .line 380
    iget v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aput-object v2, v5, v8

    .line 385
    .end local v4           #uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .end local v5           #uttListCSF:[Ljava/lang/String;
    .end local v6           #uttListCannonical:[Ljava/lang/String;
    .end local v7           #uttListConf:[F
    :cond_62
    iput v10, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    .line 389
    .end local v0           #cannonical:Ljava/lang/String;
    .end local v1           #confidence:F
    .end local v2           #csf:Ljava/lang/String;
    .end local v3           #numWords:I
    :goto_64
    return-void

    .line 387
    :cond_65
    sget-object v8, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v9, "PAR5"

    const-string v10, "warning: no attributes for choice in utt list"

    invoke-virtual {v8, v9, v10}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64
.end method

.method private handleChoiceInWL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V
    .registers 15
    .parameter "attributes"
    .parameter "cData"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 321
    if-eqz p2, :cond_30

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    .line 324
    .local v1, choiceString:Ljava/lang/String;
    :goto_9
    const/4 v7, 0x1

    .line 325
    .local v7, numAlign:I
    const/4 v5, 0x0

    .line 326
    .local v5, ns:Z
    const/4 v6, 0x0

    .line 327
    .local v6, nsd:Z
    const/4 v2, 0x0

    .line 329
    .local v2, ct:Z
    if-eqz p1, :cond_6e

    .line 330
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    invoke-virtual {p1}, Lcom/vlingo/client/core/xml/XmlAttributes;->getLength()I

    move-result v11

    if-ge v3, v11, :cond_6e

    .line 331
    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getType(I)I

    move-result v0

    .line 332
    .local v0, attributeType:I
    iget v11, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CA:I

    if-ne v11, v0, :cond_35

    .line 333
    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 334
    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_33

    const-string v11, "t"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    move v2, v9

    .line 330
    .end local v8           #s:Ljava/lang/String;
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 321
    .end local v0           #attributeType:I
    .end local v1           #choiceString:Ljava/lang/String;
    .end local v2           #ct:Z
    .end local v3           #i:I
    .end local v5           #ns:Z
    .end local v6           #nsd:Z
    .end local v7           #numAlign:I
    :cond_30
    const-string v1, "(null)"

    goto :goto_9

    .restart local v0       #attributeType:I
    .restart local v1       #choiceString:Ljava/lang/String;
    .restart local v2       #ct:Z
    .restart local v3       #i:I
    .restart local v5       #ns:Z
    .restart local v6       #nsd:Z
    .restart local v7       #numAlign:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_33
    move v2, v10

    .line 334
    goto :goto_2d

    .line 336
    .end local v8           #s:Ljava/lang/String;
    :cond_35
    iget v11, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_R:I

    if-ne v11, v0, :cond_42

    .line 337
    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2d

    .line 339
    :cond_42
    iget v11, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NS:I

    if-ne v11, v0, :cond_58

    .line 340
    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 341
    .restart local v8       #s:Ljava/lang/String;
    if-eqz v8, :cond_56

    const-string v11, "t"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_56

    move v5, v9

    :goto_55
    goto :goto_2d

    :cond_56
    move v5, v10

    goto :goto_55

    .line 343
    .end local v8           #s:Ljava/lang/String;
    :cond_58
    iget v11, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NSD:I

    if-ne v11, v0, :cond_2d

    .line 344
    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 345
    .restart local v8       #s:Ljava/lang/String;
    if-eqz v8, :cond_6c

    const-string v11, "t"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    move v6, v9

    :goto_6b
    goto :goto_2d

    :cond_6c
    move v6, v10

    goto :goto_6b

    .line 350
    .end local v0           #attributeType:I
    .end local v3           #i:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6e
    iget-object v9, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    invoke-virtual {v9, v1, v7}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->addResultsFromString(Ljava/lang/String;I)Lcom/vlingo/client/core/recognizer/results/RecChoice;

    move-result-object v4

    .line 351
    .local v4, newChoice:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    if-eqz v4, :cond_7c

    .line 352
    iput-boolean v5, v4, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpace:Z

    .line 353
    iput-boolean v6, v4, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpaceNumber:Z

    .line 354
    iput-boolean v2, v4, Lcom/vlingo/client/core/recognizer/results/RecChoice;->capitalized:Z

    .line 356
    :cond_7c
    return-void
.end method

.method private handleWordInUL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V
    .registers 19
    .parameter "attributes"
    .parameter "cData"

    .prologue
    .line 266
    if-eqz p2, :cond_36

    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([C)V

    .line 269
    .local v11, wordString:Ljava/lang/String;
    :goto_9
    const/4 v4, -0x1

    .line 270
    .local v4, id:I
    const/4 v6, 0x0

    .line 271
    .local v6, ns:Z
    const/4 v7, 0x0

    .line 272
    .local v7, nsd:Z
    const/4 v2, 0x0

    .line 274
    .local v2, ct:Z
    if-eqz p1, :cond_80

    .line 275
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/core/xml/XmlAttributes;->getLength()I

    move-result v12

    if-ge v3, v12, :cond_80

    .line 276
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getType(I)I

    move-result v1

    .line 277
    .local v1, attributeType:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CA:I

    if-ne v12, v1, :cond_3b

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, s:Ljava/lang/String;
    if-eqz v8, :cond_39

    const-string v12, "t"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    const/4 v2, 0x1

    .line 275
    .end local v8           #s:Ljava/lang/String;
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 266
    .end local v1           #attributeType:I
    .end local v2           #ct:Z
    .end local v3           #i:I
    .end local v4           #id:I
    .end local v6           #ns:Z
    .end local v7           #nsd:Z
    .end local v11           #wordString:Ljava/lang/String;
    :cond_36
    const-string v11, "(null)"

    goto :goto_9

    .line 279
    .restart local v1       #attributeType:I
    .restart local v2       #ct:Z
    .restart local v3       #i:I
    .restart local v4       #id:I
    .restart local v6       #ns:Z
    .restart local v7       #nsd:Z
    .restart local v8       #s:Ljava/lang/String;
    .restart local v11       #wordString:Ljava/lang/String;
    :cond_39
    const/4 v2, 0x0

    goto :goto_33

    .line 281
    .end local v8           #s:Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_ID:I

    if-ne v12, v1, :cond_4c

    .line 282
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_33

    .line 284
    :cond_4c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NS:I

    if-ne v12, v1, :cond_66

    .line 285
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    .restart local v8       #s:Ljava/lang/String;
    if-eqz v8, :cond_64

    const-string v12, "t"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    const/4 v6, 0x1

    :goto_63
    goto :goto_33

    :cond_64
    const/4 v6, 0x0

    goto :goto_63

    .line 288
    .end local v8           #s:Ljava/lang/String;
    :cond_66
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NSD:I

    if-ne v12, v1, :cond_33

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    .restart local v8       #s:Ljava/lang/String;
    if-eqz v8, :cond_7e

    const-string v12, "t"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7e

    const/4 v7, 0x1

    :goto_7d
    goto :goto_33

    :cond_7e
    const/4 v7, 0x0

    goto :goto_7d

    .line 294
    .end local v1           #attributeType:I
    .end local v3           #i:I
    .end local v8           #s:Ljava/lang/String;
    :cond_80
    new-instance v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;

    invoke-direct {v5, v11}, Lcom/vlingo/client/core/recognizer/results/RecNBest;-><init>(Ljava/lang/String;)V

    .line 295
    .local v5, newWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iput-boolean v6, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    .line 296
    iput-boolean v7, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    .line 297
    iput-boolean v2, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->capitalized:Z

    .line 298
    if-ltz v4, :cond_ad

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v12, v12, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v12, v12

    if-gt v4, v12, :cond_ad

    .line 299
    iput v4, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v12, v12, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aget-object v10, v12, v4

    .line 301
    .local v10, wordListWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    if-eqz v10, :cond_e8

    .line 302
    iget-object v12, v10, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    iput-object v12, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 303
    iget v12, v10, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    iput v12, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iN:I

    .line 304
    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->adjustChoiceIndex()Z

    .line 309
    .end local v10           #wordListWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_ad
    :goto_ad
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    if-nez v12, :cond_c2

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/RecNBest;->copy()Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/vlingo/client/core/recognizer/results/RecResults;->addNBest(ILcom/vlingo/client/core/recognizer/results/RecNBest;)V

    .line 314
    :cond_c2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v9, v12, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 315
    .local v9, uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aget-object v13, v9, v13

    array-length v13, v13

    if-ge v12, v13, :cond_e7

    .line 316
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    aget-object v12, v9, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    aput-object v5, v12, v13

    .line 318
    :cond_e7
    return-void

    .line 306
    .end local v9           #uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .restart local v10       #wordListWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_e8
    sget-object v12, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v13, "PAR4"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "warning: word at index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad
.end method

.method private handleWordInWL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V
    .registers 12
    .parameter "attributes"
    .parameter "cData"

    .prologue
    .line 237
    if-eqz p1, :cond_69

    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, n:I
    const/4 v2, -0x1

    .line 241
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {p1}, Lcom/vlingo/client/core/xml/XmlAttributes;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_2b

    .line 242
    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->getType(I)I

    move-result v0

    .line 243
    .local v0, attributeType:I
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    if-ne v5, v0, :cond_1e

    .line 244
    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 241
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 246
    :cond_1e
    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_ID:I

    if-ne v5, v0, :cond_1b

    .line 247
    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1b

    .line 250
    .end local v0           #attributeType:I
    :cond_2b
    new-instance v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;

    invoke-direct {v5, v3}, Lcom/vlingo/client/core/recognizer/results/RecNBest;-><init>(I)V

    iput-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 252
    if-ltz v2, :cond_48

    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v5, v5, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v5, v5

    if-gt v2, v5, :cond_48

    .line 253
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    iput v2, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 254
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v4, v5, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 255
    .local v4, wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    aput-object v5, v4, v2

    .line 263
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #n:I
    .end local v4           #wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :goto_47
    return-void

    .line 258
    .restart local v1       #i:I
    .restart local v2       #id:I
    .restart local v3       #n:I
    :cond_48
    sget-object v5, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v6, "PAR2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "warning: word id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " out of range"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 261
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #n:I
    :cond_69
    sget-object v5, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v6, "PAR3"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "warning: no attributes for word "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v8, v8, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in word list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method private newRecResults()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 92
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    .line 93
    iput v2, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    .line 95
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    if-eqz v1, :cond_1f

    .line 97
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 99
    .local v0, wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    new-instance v1, Lcom/vlingo/client/core/recognizer/results/RecResults;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vlingo/client/core/recognizer/results/RecResults;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 100
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 103
    .end local v0           #wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_1f
    return-void
.end method

.method private static parseFloat(Ljava/lang/String;F)F
    .registers 3
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 393
    move v0, p1

    .line 394
    .local v0, result:F
    if-eqz p0, :cond_7

    .line 395
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 397
    :cond_7
    return v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .registers 3
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 402
    move v0, p1

    .line 403
    .local v0, result:I
    if-eqz p0, :cond_7

    .line 404
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 406
    :cond_7
    return v0
.end method


# virtual methods
.method public beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V
    .registers 27
    .parameter "elementType"
    .parameter "attributes"
    .parameter "cData"
    .parameter "elementEndPosition"

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_RECOGNITION:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_54

    .line 108
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 109
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    .line 110
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->wordCount:I

    .line 111
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_GUTTID:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->srResultsParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->getResponse()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->setGUttId(Ljava/lang/String;)V

    .line 215
    :cond_53
    :goto_53
    return-void

    .line 115
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_ALT:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_7a

    .line 116
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 117
    new-instance v19, Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    goto :goto_53

    .line 119
    :cond_7a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_WORD_LIST:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_de

    .line 120
    if-eqz p2, :cond_d3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    if-nez v19, :cond_a3

    .line 122
    new-instance v19, Lcom/vlingo/client/core/recognizer/results/RecResults;

    const/16 v20, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/vlingo/client/core/recognizer/results/RecResults;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 123
    :cond_a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 124
    .local v8, numNBests:I
    if-lez v8, :cond_53

    .line 125
    new-array v0, v8, [Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-object/from16 v18, v0

    .line 126
    .local v18, wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 127
    const/4 v6, 0x0

    .local v6, i:I
    :goto_ca
    if-ge v6, v8, :cond_53

    .line 128
    const/16 v19, 0x0

    aput-object v19, v18, v6

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_ca

    .line 131
    .end local v6           #i:I
    .end local v8           #numNBests:I
    .end local v18           #wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_d3
    sget-object v19, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v20, "PAR1"

    const-string v21, "warning: no attributes for word list"

    invoke-virtual/range {v19 .. v21}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    .line 134
    :cond_de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_UTT_LIST:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_161

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    if-nez v19, :cond_105

    .line 137
    new-instance v19, Lcom/vlingo/client/core/recognizer/results/RecResults;

    const/16 v20, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->guttid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/vlingo/client/core/recognizer/results/RecResults;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 138
    :cond_105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 139
    .local v10, numSentences:I
    if-lez v10, :cond_141

    .line 140
    new-array v14, v10, [[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 141
    .local v14, uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    new-array v0, v10, [F

    move-object/from16 v17, v0

    .line 142
    .local v17, uttListConf:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListConf:[F

    .line 144
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_138
    if-ge v6, v10, :cond_141

    .line 145
    const/16 v19, 0x0

    aput-object v19, v14, v6

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_138

    .line 148
    .end local v6           #i:I
    .end local v14           #uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .end local v17           #uttListConf:[F
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->choiceIndex:I

    .line 149
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 150
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    goto/16 :goto_53

    .line 152
    .end local v10           #numSentences:I
    :cond_161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG_LIST:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_18e

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 154
    .local v11, numTagList:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->onTagList(I)V

    goto/16 :goto_53

    .line 156
    .end local v11           #numTagList:I
    :cond_18e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_PARSE_GRP:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1dd

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_C:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    const/high16 v20, -0x4080

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseFloat(Ljava/lang/String;F)F

    move-result v4

    .line 158
    .local v4, confidence:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_TYPE:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, parseType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 160
    .local v9, numParseGroups:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v13, v9}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->onParseGroup(FLjava/lang/String;I)V

    goto/16 :goto_53

    .line 162
    .end local v4           #confidence:F
    .end local v9           #numParseGroups:I
    .end local v13           #parseType:Ljava/lang/String;
    :cond_1dd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_29f

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->newRecResults()V

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_NAME:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CF:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, cannonical:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_CSF:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, csf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->ATTRIBUTE_N:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->lookup(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 168
    .local v12, numTagSentences:I
    if-lez v12, :cond_292

    .line 169
    new-array v14, v12, [[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 170
    .restart local v14       #uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    new-array v0, v12, [F

    move-object/from16 v17, v0

    .line 171
    .restart local v17       #uttListConf:[F
    new-array v0, v12, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 172
    .local v16, uttListCannonical:[Ljava/lang/String;
    new-array v15, v12, [Ljava/lang/String;

    .line 173
    .local v15, uttListCSF:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListConf:[F

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    .line 177
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_265
    if-ge v6, v12, :cond_26e

    .line 178
    const/16 v19, 0x0

    aput-object v19, v14, v6

    .line 177
    add-int/lit8 v6, v6, 0x1

    goto :goto_265

    .line 180
    :cond_26e
    if-eqz v3, :cond_280

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v3, v19, v20

    .line 186
    :cond_280
    if-eqz v5, :cond_292

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCSF:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    .line 193
    .end local v6           #i:I
    .end local v14           #uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .end local v15           #uttListCSF:[Ljava/lang/String;
    .end local v16           #uttListCannonical:[Ljava/lang/String;
    .end local v17           #uttListConf:[F
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->onTag(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 195
    .end local v3           #cannonical:Ljava/lang/String;
    .end local v5           #csf:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v12           #numTagSentences:I
    :cond_29f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_WORD:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2df

    .line 196
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    if-eqz v19, :cond_53

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2d4

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->handleWordInUL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V

    goto/16 :goto_53

    .line 202
    :cond_2d4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->handleWordInWL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V

    goto/16 :goto_53

    .line 206
    :cond_2df
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG_CHOICE:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_2f7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_CHOICE:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_53

    .line 207
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    if-eqz v19, :cond_53

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-object/from16 v19, v0

    if-eqz v19, :cond_318

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->handleChoiceInUL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V

    goto/16 :goto_53

    .line 210
    :cond_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->curParsedWord:Lcom/vlingo/client/core/recognizer/results/RecNBest;

    move-object/from16 v19, v0

    if-eqz v19, :cond_53

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->handleChoiceInWL(Lcom/vlingo/client/core/xml/XmlAttributes;[C)V

    goto/16 :goto_53
.end method

.method public endElement(II)V
    .registers 5
    .parameter "elementType"
    .parameter "elementStartPosition"

    .prologue
    .line 219
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_ALT:I

    if-ne v0, p1, :cond_15

    .line 220
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->srResultsParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;->getResponse()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->setTaggedResults(Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V

    .line 221
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->responseParser:Lcom/vlingo/client/core/vlservice/response/VLResponseParser;

    invoke-virtual {v0}, Lcom/vlingo/client/core/vlservice/response/VLResponseParser;->onSectionComplete()V

    .line 234
    :cond_14
    :goto_14
    return-void

    .line 223
    :cond_15
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_UTT_LIST:I

    if-ne v0, p1, :cond_21

    .line 224
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->onUttResults(Lcom/vlingo/client/core/recognizer/results/RecResults;)V

    goto :goto_14

    .line 226
    :cond_21
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG:I

    if-ne v0, p1, :cond_2d

    .line 227
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->tagResults:Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->onTagResults(Lcom/vlingo/client/core/recognizer/results/RecResults;)V

    goto :goto_14

    .line 229
    :cond_2d
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_CHOICE:I

    if-eq v0, p1, :cond_35

    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_TAG_CHOICE:I

    if-ne v0, p1, :cond_14

    .line 230
    :cond_35
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->recResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v0, v0, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    if-eqz v0, :cond_14

    .line 231
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->choiceCount:I

    goto :goto_14
.end method

.method public handlesElement(I)Z
    .registers 3
    .parameter "elementType"

    .prologue
    .line 87
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResultsParser;->RESULT_RECOGNITION:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
