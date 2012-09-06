.class public Lcom/google/android/apps/translatedecoder/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private beamSize:I

.field private convertSymbol:Z

.field private dominateCost:D

.field private inputFile:Ljava/lang/String;

.field private lmFile:Ljava/lang/String;

.field private lmOrder:I

.field private lmSymbolTblFile:Ljava/lang/String;

.field private maxNumCachedNgrams:I

.field private maxPhraseLength:I

.field private maxSearchError:D

.field private ngramQueriedFile:Ljava/lang/String;

.field private oovLmCost:D

.field private oovTmCost:D

.field private outputFile:Ljava/lang/String;

.field private preprocDataFile:Ljava/lang/String;

.field private printBracket:Z

.field private ptSymbolTblFile:Ljava/lang/String;

.field private rapidRespFile:Ljava/lang/String;

.field private readSymbolFromFile:Z

.field private relativeLmWeight:D

.field private removeDiacritics:Z

.field private runPostprocess:Z

.field private runPreprocess:Z

.field private simulateProdlm:Z

.field private srcLang:Ljava/lang/String;

.field private tgtLang:Ljava/lang/String;

.field private tmFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/google/android/apps/translatedecoder/util/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/Config;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess:Z

    .line 25
    const-string v0, "ENGLISH"

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang:Ljava/lang/String;

    .line 26
    const-string v0, "FRENCH"

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang:Ljava/lang/String;

    .line 27
    iput-boolean v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->removeDiacritics:Z

    .line 28
    iput-boolean v1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess:Z

    .line 31
    iput-boolean v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile:Z

    .line 34
    iput-boolean v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->convertSymbol:Z

    .line 38
    iput v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength:I

    .line 42
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight:D

    .line 43
    iput v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder:I

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->simulateProdlm:Z

    .line 48
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxNumCachedNgrams:I

    .line 51
    iput-boolean v2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket:Z

    .line 54
    iput-wide v3, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost:D

    .line 55
    iput-wide v3, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost:D

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile:Ljava/lang/String;

    .line 59
    const-wide/high16 v0, -0x3fdc

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->dominateCost:D

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize:I

    .line 65
    const-wide v0, 0x3fa999999999999aL

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxSearchError:D

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "configFile"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v5, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess:Z

    .line 25
    const-string v4, "ENGLISH"

    iput-object v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang:Ljava/lang/String;

    .line 26
    const-string v4, "FRENCH"

    iput-object v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang:Ljava/lang/String;

    .line 27
    iput-boolean v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->removeDiacritics:Z

    .line 28
    iput-boolean v5, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess:Z

    .line 31
    iput-boolean v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile:Z

    .line 34
    iput-boolean v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->convertSymbol:Z

    .line 38
    iput v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength:I

    .line 42
    const-wide/high16 v4, 0x3ff0

    iput-wide v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight:D

    .line 43
    iput v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder:I

    .line 45
    iput-boolean v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->simulateProdlm:Z

    .line 48
    const/16 v4, 0x2710

    iput v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxNumCachedNgrams:I

    .line 51
    iput-boolean v6, p0, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket:Z

    .line 54
    iput-wide v7, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost:D

    .line 55
    iput-wide v7, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost:D

    .line 58
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile:Ljava/lang/String;

    .line 59
    const-wide/high16 v4, -0x3fdc

    iput-wide v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->dominateCost:D

    .line 62
    const/4 v4, 0x3

    iput v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize:I

    .line 65
    const-wide v4, 0x3fa999999999999aL

    iput-wide v4, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxSearchError:D

    .line 72
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 74
    .local v0, configProperties:Ljava/util/Properties;
    :try_start_43
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_89

    .line 78
    :goto_4b
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :goto_4f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 79
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/translatedecoder/util/Config;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; val="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4f

    .line 75
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v3           #key:Ljava/lang/String;
    :catch_89
    move-exception v2

    .line 76
    .local v2, eta:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    .line 83
    .end local v2           #eta:Ljava/lang/Exception;
    .restart local v1       #e:Ljava/util/Enumeration;
    :cond_8e
    return-void
.end method


# virtual methods
.method public beamSize()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize:I

    return v0
.end method

.method public convertSymbol()Z
    .registers 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->convertSymbol:Z

    return v0
.end method

.method public dominateCost()D
    .registers 3

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->dominateCost:D

    return-wide v0
.end method

.method public inputFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->inputFile:Ljava/lang/String;

    return-object v0
.end method

.method public lmFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmFile:Ljava/lang/String;

    return-object v0
.end method

.method public lmOrder()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder:I

    return v0
.end method

.method public lmSymbolTblFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmSymbolTblFile:Ljava/lang/String;

    return-object v0
.end method

.method public maxNumCachedNgrams()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxNumCachedNgrams:I

    return v0
.end method

.method public maxPhraseLength()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength:I

    return v0
.end method

.method public maxSearchError()D
    .registers 3

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxSearchError:D

    return-wide v0
.end method

.method public ngramQueriedFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->ngramQueriedFile:Ljava/lang/String;

    return-object v0
.end method

.method public oovLmCost()D
    .registers 3

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost:D

    return-wide v0
.end method

.method public oovTmCost()D
    .registers 3

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost:D

    return-wide v0
.end method

.method public outputFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->outputFile:Ljava/lang/String;

    return-object v0
.end method

.method public preprocDataFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->preprocDataFile:Ljava/lang/String;

    return-object v0
.end method

.method public printBracket()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket:Z

    return v0
.end method

.method public ptSymbolTblFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->ptSymbolTblFile:Ljava/lang/String;

    return-object v0
.end method

.method public rapidRespFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile:Ljava/lang/String;

    return-object v0
.end method

.method public readSymbolFromFile()Z
    .registers 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile:Z

    return v0
.end method

.method public relativeLmWeight()D
    .registers 3

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight:D

    return-wide v0
.end method

.method public removeDiacritics()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->removeDiacritics:Z

    return v0
.end method

.method public runPostprocess()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess:Z

    return v0
.end method

.method public runPreprocess()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess:Z

    return v0
.end method

.method public setBeamSize(I)V
    .registers 2
    .parameter "beamSize"

    .prologue
    .line 347
    iput p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize:I

    .line 348
    return-void
.end method

.method public setConvertSymbol(Z)V
    .registers 2
    .parameter "convertSymbol"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->convertSymbol:Z

    .line 244
    return-void
.end method

.method public setDominateCost(D)V
    .registers 3
    .parameter "dominateCost"

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->dominateCost:D

    .line 340
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "val"

    .prologue
    .line 86
    const-string v0, "inputFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->inputFile:Ljava/lang/String;

    .line 144
    :goto_a
    return-void

    .line 88
    :cond_b
    const-string v0, "runPreprocess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 89
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess:Z

    goto :goto_a

    .line 90
    :cond_1f
    const-string v0, "runPostprocess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 91
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess:Z

    goto :goto_a

    .line 92
    :cond_33
    const-string v0, "outputFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 93
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->outputFile:Ljava/lang/String;

    goto :goto_a

    .line 94
    :cond_3e
    const-string v0, "preprocDataFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 95
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->preprocDataFile:Ljava/lang/String;

    goto :goto_a

    .line 96
    :cond_49
    const-string v0, "srcLang"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 97
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang:Ljava/lang/String;

    goto :goto_a

    .line 98
    :cond_54
    const-string v0, "tgtLang"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 99
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang:Ljava/lang/String;

    goto :goto_a

    .line 100
    :cond_5f
    const-string v0, "removeDiacritics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 101
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->removeDiacritics:Z

    goto :goto_a

    .line 102
    :cond_73
    const-string v0, "readSymbolFromFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 103
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile:Z

    goto :goto_a

    .line 104
    :cond_87
    const-string v0, "ptSymbolTblFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 105
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->ptSymbolTblFile:Ljava/lang/String;

    goto/16 :goto_a

    .line 106
    :cond_93
    const-string v0, "lmSymbolTblFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 107
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmSymbolTblFile:Ljava/lang/String;

    goto/16 :goto_a

    .line 108
    :cond_9f
    const-string v0, "convertSymbol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 109
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->convertSymbol:Z

    goto/16 :goto_a

    .line 110
    :cond_b4
    const-string v0, "tmFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 111
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tmFile:Ljava/lang/String;

    goto/16 :goto_a

    .line 112
    :cond_c0
    const-string v0, "maxPhraseLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength:I

    goto/16 :goto_a

    .line 114
    :cond_d4
    const-string v0, "lmFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 115
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmFile:Ljava/lang/String;

    goto/16 :goto_a

    .line 116
    :cond_e0
    const-string v0, "relativeLmWeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 117
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight:D

    goto/16 :goto_a

    .line 118
    :cond_f5
    const-string v0, "lmOrder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder:I

    goto/16 :goto_a

    .line 120
    :cond_109
    const-string v0, "ngramQueriedFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 121
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/Config;->ngramQueriedFile:Ljava/lang/String;

    goto/16 :goto_a

    .line 122
    :cond_115
    const-string v0, "simulateProdlm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 123
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->simulateProdlm:Z

    goto/16 :goto_a

    .line 124
    :cond_12a
    const-string v0, "maxNumCachedNgrams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxNumCachedNgrams:I

    goto/16 :goto_a

    .line 126
    :cond_13e
    const-string v0, "printBracket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 127
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket:Z

    goto/16 :goto_a

    .line 128
    :cond_153
    const-string v0, "oovTmCost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 129
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost:D

    goto/16 :goto_a

    .line 130
    :cond_168
    const-string v0, "oovLmCost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 131
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost:D

    goto/16 :goto_a

    .line 132
    :cond_17d
    const-string v0, "rapidRespFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile:Ljava/lang/String;

    goto/16 :goto_a

    .line 134
    :cond_18d
    const-string v0, "dominateCost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 135
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->dominateCost:D

    goto/16 :goto_a

    .line 136
    :cond_1a2
    const-string v0, "beamSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 137
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->beamSize:I

    goto/16 :goto_a

    .line 138
    :cond_1b7
    const-string v0, "maxSearchError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 139
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxSearchError:D

    goto/16 :goto_a

    .line 141
    :cond_1cc
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/Config;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong configuration line! key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_a
.end method

.method public setInputFile(Ljava/lang/String;)V
    .registers 2
    .parameter "inputFile"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->inputFile:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setLmFile(Ljava/lang/String;)V
    .registers 2
    .parameter "lmFile"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmFile:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setLmOrder(I)V
    .registers 2
    .parameter "lmOrder"

    .prologue
    .line 275
    iput p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmOrder:I

    .line 276
    return-void
.end method

.method public setLmSymbolTblFile(Ljava/lang/String;)V
    .registers 2
    .parameter "lmSymbolTblFile"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->lmSymbolTblFile:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setMaxNumCachedNgrams(I)V
    .registers 2
    .parameter "maxNumCachedNgrams"

    .prologue
    .line 283
    iput p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxNumCachedNgrams:I

    .line 284
    return-void
.end method

.method public setMaxPhraseLength(I)V
    .registers 2
    .parameter "maxPhraseLength"

    .prologue
    .line 251
    iput p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxPhraseLength:I

    .line 252
    return-void
.end method

.method public setMaxSearchError(D)V
    .registers 3
    .parameter "percentage"

    .prologue
    .line 355
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->maxSearchError:D

    .line 356
    return-void
.end method

.method public setNgramQueriedFile(Ljava/lang/String;)V
    .registers 2
    .parameter "ngramQueriedFile"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->ngramQueriedFile:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setOovLmCost(D)V
    .registers 3
    .parameter "oovLmCost"

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovLmCost:D

    .line 324
    return-void
.end method

.method public setOovTmCost(D)V
    .registers 3
    .parameter "oovTmCost"

    .prologue
    .line 315
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->oovTmCost:D

    .line 316
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .registers 2
    .parameter "outputFile"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->outputFile:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setParametersFromArgs([Ljava/lang/String;)V
    .registers 8
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 365
    if-nez p1, :cond_4

    .line 383
    :cond_3
    return-void

    .line 368
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 371
    aget-object v2, p1, v1

    const-string v3, "--\\w+=[^\\s]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 372
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, fds:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3f

    .line 374
    sget-object v2, Lcom/google/android/apps/translatedecoder/util/Config;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config option does not have two fields! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 375
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 377
    :cond_3f
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "--"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/translatedecoder/util/Config;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v0           #fds:[Ljava/lang/String;
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 379
    :cond_52
    sget-object v2, Lcom/google/android/apps/translatedecoder/util/Config;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong config option!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 380
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_4f
.end method

.method public setPreprocDataFile(Ljava/lang/String;)V
    .registers 2
    .parameter "preprocDataFile"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->preprocDataFile:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setPrintBracket(Z)V
    .registers 2
    .parameter "printBracket"

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->printBracket:Z

    .line 308
    return-void
.end method

.method public setPtSymbolTblFile(Ljava/lang/String;)V
    .registers 2
    .parameter "ptSymbolTblFile"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->ptSymbolTblFile:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setRapidRespFile(Ljava/lang/String;)V
    .registers 2
    .parameter "rapidRespFile"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->rapidRespFile:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setReadSymbolFile(Z)V
    .registers 2
    .parameter "readSymbolFromFile"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->readSymbolFromFile:Z

    .line 220
    return-void
.end method

.method public setRelativeLmWeight(D)V
    .registers 3
    .parameter "relativeLmWeight"

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->relativeLmWeight:D

    .line 268
    return-void
.end method

.method public setRemoveDiacritics(Z)V
    .registers 2
    .parameter "removeDiacritics"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->removeDiacritics:Z

    .line 188
    return-void
.end method

.method public setRunPostprocess(Z)V
    .registers 2
    .parameter "runPostprocess"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPostprocess:Z

    .line 172
    return-void
.end method

.method public setRunPreprocess(Z)V
    .registers 2
    .parameter "runPreprocess"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->runPreprocess:Z

    .line 164
    return-void
.end method

.method public setSimulateProdlm(Z)V
    .registers 2
    .parameter "simulateProdlm"

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->simulateProdlm:Z

    .line 304
    return-void
.end method

.method public setSrcLang(Ljava/lang/String;)V
    .registers 2
    .parameter "language"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setTgtLang(Ljava/lang/String;)V
    .registers 2
    .parameter "language"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setTmFile(Ljava/lang/String;)V
    .registers 2
    .parameter "tmFile"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tmFile:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public simulateProdlm()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->simulateProdlm:Z

    return v0
.end method

.method public srcLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->srcLang:Ljava/lang/String;

    return-object v0
.end method

.method public tgtLang()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tgtLang:Ljava/lang/String;

    return-object v0
.end method

.method public tmFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/Config;->tmFile:Ljava/lang/String;

    return-object v0
.end method
