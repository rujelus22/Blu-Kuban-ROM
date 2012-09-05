.class abstract Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.super Lcom/infraware/common/util/text/CharsetRecognizer;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_da;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_de;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_en;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_es;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_fr;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_it;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_nl;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_no;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_pt;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_sv;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_cs;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_pl;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_ro;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_5;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_6;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_7;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_9;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;,
        Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;
    }
.end annotation


# instance fields
.field protected haveC1Bytes:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecognizer;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs;->haveC1Bytes:Z

    .line 17
    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Lcom/infraware/common/util/text/CharsetDetector;)I
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;[I[B)I
    .registers 5
    .parameter "det"
    .parameter "ngrams"
    .parameter "byteMap"

    .prologue
    .line 168
    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs;->match(Lcom/infraware/common/util/text/CharsetDetector;[I[BB)I

    move-result v0

    return v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;[I[BB)I
    .registers 7
    .parameter "det"
    .parameter "ngrams"
    .parameter "byteMap"
    .parameter "spaceChar"

    .prologue
    .line 173
    new-instance v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;

    invoke-direct {v0, p2, p3}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    .line 175
    .local v0, parser:Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;
    iget-boolean v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fC1Bytes:Z

    iput-boolean v1, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs;->haveC1Bytes:Z

    .line 177
    invoke-virtual {v0, p1, p4}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->parse(Lcom/infraware/common/util/text/CharsetDetector;B)I

    move-result v1

    return v1
.end method
