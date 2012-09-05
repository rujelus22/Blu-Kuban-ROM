.class public Lcom/syncmldstmo/base/sml$SML_PCDATA;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_PCDATA"
.end annotation


# instance fields
.field public anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

.field public data:[C

.field public pProperty:Lcom/syncmldstmo/base/sml$SML_PROPERTY;

.field public size:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1947
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->pProperty:Lcom/syncmldstmo/base/sml$SML_PROPERTY;

    .line 1947
    return-void
.end method


# virtual methods
.method public __smlparParsePcdata(Lcom/syncmldstmo/base/smlParser;I)I
    .registers 14
    .parameter "p"
    .parameter "id"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1958
    const/4 v3, 0x0

    .line 1961
    .local v3, n:I
    invoke-virtual {p1, p2}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v4

    .line 1962
    .local v4, res:I
    if-eqz v4, :cond_c

    move v7, v4

    .line 2057
    :cond_b
    :goto_b
    return v7

    .line 1967
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecReadBufferByte()I

    move-result v3

    .line 1971
    const/4 v8, 0x3

    if-ne v3, v8, :cond_23

    .line 1973
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseStr_i()Ljava/lang/String;

    move-result-object v5

    .line 1974
    .local v5, tmp:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/sml$SML_PCDATA;->sml_string2pcdata(Ljava/lang/String;)V

    .line 2048
    .end local v5           #tmp:Ljava/lang/String;
    :goto_1a
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v4

    .line 2049
    if-eqz v4, :cond_b

    move v7, v4

    .line 2050
    goto :goto_b

    .line 1976
    :cond_23
    const/16 v8, 0x83

    if-ne v3, v8, :cond_38

    .line 1978
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseStr_t()Ljava/lang/String;

    move-result-object v5

    .line 1979
    .restart local v5       #tmp:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/sml$SML_PCDATA;->sml_string2pcdata(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2e} :catch_2f

    goto :goto_1a

    .line 2052
    .end local v5           #tmp:Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 2054
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_b

    .line 1981
    .end local v1           #e1:Ljava/io/IOException;
    :cond_38
    const/16 v8, 0xc3

    if-ne v3, v8, :cond_4d

    .line 1983
    :try_start_3c
    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->_smlwbxDecParseExtension(I)Ljava/lang/String;

    move-result-object v5

    .line 1984
    .restart local v5       #tmp:Ljava/lang/String;
    const/4 v8, 0x1

    iput v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 1985
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 1987
    invoke-virtual {p0, v5}, Lcom/syncmldstmo/base/sml$SML_PCDATA;->sml_string2pcdata(Ljava/lang/String;)V

    goto :goto_1a

    .line 1989
    .end local v5           #tmp:Ljava/lang/String;
    :cond_4d
    if-nez v3, :cond_af

    .line 1991
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v6

    .line 1998
    .local v6, tmpId:I
    iput v6, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    .line 2000
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v6

    .line 2003
    :cond_59
    iget v8, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    if-ne v8, v9, :cond_71

    const/4 v8, 0x5

    if-ne v6, v8, :cond_71

    .line 2005
    new-instance v8, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-direct {v8}, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;-><init>()V

    iput-object v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    .line 2006
    iget-object v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-virtual {v8, p1}, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->__smlparParseAnchor(Lcom/syncmldstmo/base/smlParser;)I

    move-result v4

    .line 2008
    if-eqz v4, :cond_89

    move v7, v4

    .line 2009
    goto :goto_b

    .line 2011
    :cond_71
    iget v8, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    if-ne v8, v10, :cond_90

    const/16 v8, 0xa

    if-ne v6, v8, :cond_90

    .line 2013
    new-instance v0, Lcom/syncmldstmo/base/sml$SML_DEVINF;

    invoke-direct {v0}, Lcom/syncmldstmo/base/sml$SML_DEVINF;-><init>()V

    .line 2014
    .local v0, devinf:Lcom/syncmldstmo/base/sml$SML_DEVINF;
    invoke-virtual {p1, v0}, Lcom/syncmldstmo/base/smlParser;->_smlparParseDevinfForDS(Lcom/syncmldstmo/base/sml$SML_DEVINF;)I

    move-result v4

    .line 2015
    if-eqz v4, :cond_86

    move v7, v4

    .line 2016
    goto :goto_b

    .line 2018
    :cond_86
    invoke-static {v0}, Lcom/syncmldstmo/base/smlParser;->_smldataStDeleteDevinf(Ljava/lang/Object;)V

    .line 2033
    .end local v0           #devinf:Lcom/syncmldstmo/base/sml$SML_DEVINF;
    :cond_89
    :goto_89
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I

    move-result v6

    .line 2034
    if-ne v6, v9, :cond_59

    goto :goto_1a

    .line 2020
    :cond_90
    iget v8, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    if-ne v8, v9, :cond_a6

    const/16 v8, 0xd

    if-ne v6, v8, :cond_a6

    .line 2022
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;-><init>()V

    .line 2023
    .local v2, mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;
    invoke-virtual {v2, p1}, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->__smlparParseMem(Lcom/syncmldstmo/base/smlParser;)I

    move-result v4

    .line 2024
    if-eqz v4, :cond_89

    move v7, v4

    .line 2025
    goto/16 :goto_b

    .line 2027
    .end local v2           #mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;
    :cond_a6
    if-nez v6, :cond_89

    .line 2029
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 2030
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    goto :goto_89

    .line 2039
    .end local v6           #tmpId:I
    :cond_af
    invoke-virtual {p1, p2}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipElement(I)I

    move-result v4

    .line 2040
    if-eqz v4, :cond_b8

    move v7, v4

    .line 2041
    goto/16 :goto_b

    .line 2043
    :cond_b8
    const/4 v8, 0x2

    iput v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 2044
    const/4 v8, 0x0

    iput v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 2045
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_c1} :catch_2f

    goto/16 :goto_1a
.end method

.method public sml_string2pcdata(Ljava/lang/String;)V
    .registers 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2064
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->type:I

    .line 2066
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->size:I

    .line 2073
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_PCDATA;->data:[C

    .line 2078
    return-void
.end method
