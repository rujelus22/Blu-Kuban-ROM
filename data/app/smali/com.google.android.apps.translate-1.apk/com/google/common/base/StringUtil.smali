.class public final Lcom/google/common/base/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/StringUtil$1;,
        Lcom/google/common/base/StringUtil$CharEscaperBuilder;,
        Lcom/google/common/base/StringUtil$CharEscaper;,
        Lcom/google/common/base/StringUtil$CodePointSet;,
        Lcom/google/common/base/StringUtil$JsEscapingMode;
    }
.end annotation


# static fields
.field private static final CHARACTER_REFERENCE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final CJK_BLOCKS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_STRINGS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final FANCY_DOUBLE_QUOTE:Lcom/google/common/base/CharMatcher; = null

.field private static final FANCY_SINGLE_QUOTE:Lcom/google/common/base/CharMatcher; = null

.field private static final HEX_LETTER:Lcom/google/common/base/CharMatcher; = null

.field private static final HTML_TAG_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet; = null

.field private static final JSON_OR_JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet; = null

.field private static final JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet; = null

.field public static final LINE_BREAKS:Ljava/lang/String; = "\r\n"

.field private static final LT_GT_ESCAPE:Lcom/google/common/base/StringUtil$CharEscaper; = null

.field private static final NEWLINE_SPLITTER:Lcom/google/common/base/Splitter; = null

.field private static final TO_WORDS:Lcom/google/common/base/Splitter; = null

.field public static final WHITE_SPACES:Ljava/lang/String; = "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final hexChars:[C

.field private static final octalChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0xad

    const/16 v8, 0x3e

    const/16 v7, 0x3c

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 266
    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/common/base/Splitter;

    .line 321
    sget-object v2, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-static {v2}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->TO_WORDS:Lcom/google/common/base/Splitter;

    .line 498
    const-string v2, "\u0091\u0092\u2018\u2019"

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/common/base/CharMatcher;

    .line 500
    const-string v2, "\u0093\u0094\u201c\u201d"

    invoke-static {v2}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/common/base/CharMatcher;

    .line 747
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0xfc

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 749
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    const-string v2, "&nbsp"

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string v2, "&iexcl"

    const/16 v3, 0xa1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v2, "&cent"

    const/16 v3, 0xa2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v2, "&pound"

    const/16 v3, 0xa3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string v2, "&curren"

    const/16 v3, 0xa4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string v2, "&yen"

    const/16 v3, 0xa5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string v2, "&brvbar"

    const/16 v3, 0xa6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v2, "&sect"

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v2, "&uml"

    const/16 v3, 0xa8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v2, "&copy"

    const/16 v3, 0xa9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string v2, "&ordf"

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string v2, "&laquo"

    const/16 v3, 0xab

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v2, "&not"

    const/16 v3, 0xac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v2, "&shy"

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string v2, "&reg"

    const/16 v3, 0xae

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string v2, "&macr"

    const/16 v3, 0xaf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string v2, "&deg"

    const/16 v3, 0xb0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string v2, "&plusmn"

    const/16 v3, 0xb1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v2, "&sup2"

    const/16 v3, 0xb2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v2, "&sup3"

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v2, "&acute"

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v2, "&micro"

    const/16 v3, 0xb5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v2, "&para"

    const/16 v3, 0xb6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v2, "&middot"

    const/16 v3, 0xb7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v2, "&cedil"

    const/16 v3, 0xb8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v2, "&sup1"

    const/16 v3, 0xb9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v2, "&ordm"

    const/16 v3, 0xba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v2, "&raquo"

    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v2, "&frac14"

    const/16 v3, 0xbc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v2, "&frac12"

    const/16 v3, 0xbd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v2, "&frac34"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v2, "&iquest"

    const/16 v3, 0xbf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v2, "&Agrave"

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v2, "&Aacute"

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string v2, "&Acirc"

    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v2, "&Atilde"

    const/16 v3, 0xc3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v2, "&Auml"

    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v2, "&Aring"

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v2, "&AElig"

    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v2, "&Ccedil"

    const/16 v3, 0xc7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string v2, "&Egrave"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v2, "&Eacute"

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v2, "&Ecirc"

    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string v2, "&Euml"

    const/16 v3, 0xcb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v2, "&Igrave"

    const/16 v3, 0xcc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v2, "&Iacute"

    const/16 v3, 0xcd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v2, "&Icirc"

    const/16 v3, 0xce

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v2, "&Iuml"

    const/16 v3, 0xcf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v2, "&ETH"

    const/16 v3, 0xd0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v2, "&Ntilde"

    const/16 v3, 0xd1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v2, "&Ograve"

    const/16 v3, 0xd2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v2, "&Oacute"

    const/16 v3, 0xd3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v2, "&Ocirc"

    const/16 v3, 0xd4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string v2, "&Otilde"

    const/16 v3, 0xd5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string v2, "&Ouml"

    const/16 v3, 0xd6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v2, "&times"

    const/16 v3, 0xd7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v2, "&Oslash"

    const/16 v3, 0xd8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v2, "&Ugrave"

    const/16 v3, 0xd9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v2, "&Uacute"

    const/16 v3, 0xda

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v2, "&Ucirc"

    const/16 v3, 0xdb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v2, "&Uuml"

    const/16 v3, 0xdc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v2, "&Yacute"

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v2, "&THORN"

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v2, "&szlig"

    const/16 v3, 0xdf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v2, "&agrave"

    const/16 v3, 0xe0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v2, "&aacute"

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v2, "&acirc"

    const/16 v3, 0xe2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v2, "&atilde"

    const/16 v3, 0xe3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v2, "&auml"

    const/16 v3, 0xe4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v2, "&aring"

    const/16 v3, 0xe5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string v2, "&aelig"

    const/16 v3, 0xe6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v2, "&ccedil"

    const/16 v3, 0xe7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v2, "&egrave"

    const/16 v3, 0xe8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v2, "&eacute"

    const/16 v3, 0xe9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v2, "&ecirc"

    const/16 v3, 0xea

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v2, "&euml"

    const/16 v3, 0xeb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v2, "&igrave"

    const/16 v3, 0xec

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v2, "&iacute"

    const/16 v3, 0xed

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v2, "&icirc"

    const/16 v3, 0xee

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v2, "&iuml"

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string v2, "&eth"

    const/16 v3, 0xf0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v2, "&ntilde"

    const/16 v3, 0xf1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v2, "&ograve"

    const/16 v3, 0xf2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string v2, "&oacute"

    const/16 v3, 0xf3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v2, "&ocirc"

    const/16 v3, 0xf4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string v2, "&otilde"

    const/16 v3, 0xf5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string v2, "&ouml"

    const/16 v3, 0xf6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string v2, "&divide"

    const/16 v3, 0xf7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v2, "&oslash"

    const/16 v3, 0xf8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string v2, "&ugrave"

    const/16 v3, 0xf9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string v2, "&uacute"

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v2, "&ucirc"

    const/16 v3, 0xfb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string v2, "&uuml"

    const/16 v3, 0xfc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v2, "&yacute"

    const/16 v3, 0xfd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v2, "&thorn"

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v2, "&yuml"

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v2, "&fnof"

    const/16 v3, 0x192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string v2, "&Alpha"

    const/16 v3, 0x391

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string v2, "&Beta"

    const/16 v3, 0x392

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string v2, "&Gamma"

    const/16 v3, 0x393

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string v2, "&Delta"

    const/16 v3, 0x394

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    const-string v2, "&Epsilon"

    const/16 v3, 0x395

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string v2, "&Zeta"

    const/16 v3, 0x396

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const-string v2, "&Eta"

    const/16 v3, 0x397

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string v2, "&Theta"

    const/16 v3, 0x398

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string v2, "&Iota"

    const/16 v3, 0x399

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v2, "&Kappa"

    const/16 v3, 0x39a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v2, "&Lambda"

    const/16 v3, 0x39b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string v2, "&Mu"

    const/16 v3, 0x39c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string v2, "&Nu"

    const/16 v3, 0x39d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v2, "&Xi"

    const/16 v3, 0x39e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string v2, "&Omicron"

    const/16 v3, 0x39f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v2, "&Pi"

    const/16 v3, 0x3a0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string v2, "&Rho"

    const/16 v3, 0x3a1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v2, "&Sigma"

    const/16 v3, 0x3a3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v2, "&Tau"

    const/16 v3, 0x3a4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v2, "&Upsilon"

    const/16 v3, 0x3a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v2, "&Phi"

    const/16 v3, 0x3a6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v2, "&Chi"

    const/16 v3, 0x3a7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string v2, "&Psi"

    const/16 v3, 0x3a8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v2, "&Omega"

    const/16 v3, 0x3a9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string v2, "&alpha"

    const/16 v3, 0x3b1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string v2, "&beta"

    const/16 v3, 0x3b2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string v2, "&gamma"

    const/16 v3, 0x3b3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v2, "&delta"

    const/16 v3, 0x3b4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string v2, "&epsilon"

    const/16 v3, 0x3b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string v2, "&zeta"

    const/16 v3, 0x3b6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v2, "&eta"

    const/16 v3, 0x3b7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v2, "&theta"

    const/16 v3, 0x3b8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v2, "&iota"

    const/16 v3, 0x3b9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v2, "&kappa"

    const/16 v3, 0x3ba

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v2, "&lambda"

    const/16 v3, 0x3bb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v2, "&mu"

    const/16 v3, 0x3bc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v2, "&nu"

    const/16 v3, 0x3bd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v2, "&xi"

    const/16 v3, 0x3be

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v2, "&omicron"

    const/16 v3, 0x3bf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string v2, "&pi"

    const/16 v3, 0x3c0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v2, "&rho"

    const/16 v3, 0x3c1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v2, "&sigmaf"

    const/16 v3, 0x3c2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string v2, "&sigma"

    const/16 v3, 0x3c3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string v2, "&tau"

    const/16 v3, 0x3c4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v2, "&upsilon"

    const/16 v3, 0x3c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v2, "&phi"

    const/16 v3, 0x3c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v2, "&chi"

    const/16 v3, 0x3c7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string v2, "&psi"

    const/16 v3, 0x3c8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string v2, "&omega"

    const/16 v3, 0x3c9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string v2, "&thetasym"

    const/16 v3, 0x3d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string v2, "&upsih"

    const/16 v3, 0x3d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string v2, "&piv"

    const/16 v3, 0x3d6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string v2, "&bull"

    const/16 v3, 0x2022

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v2, "&hellip"

    const/16 v3, 0x2026

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v2, "&prime"

    const/16 v3, 0x2032

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string v2, "&Prime"

    const/16 v3, 0x2033

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string v2, "&oline"

    const/16 v3, 0x203e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v2, "&frasl"

    const/16 v3, 0x2044

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string v2, "&weierp"

    const/16 v3, 0x2118

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string v2, "&image"

    const/16 v3, 0x2111

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v2, "&real"

    const/16 v3, 0x211c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v2, "&trade"

    const/16 v3, 0x2122

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string v2, "&alefsym"

    const/16 v3, 0x2135

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v2, "&larr"

    const/16 v3, 0x2190

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v2, "&uarr"

    const/16 v3, 0x2191

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v2, "&rarr"

    const/16 v3, 0x2192

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v2, "&darr"

    const/16 v3, 0x2193

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v2, "&harr"

    const/16 v3, 0x2194

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v2, "&crarr"

    const/16 v3, 0x21b5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v2, "&lArr"

    const/16 v3, 0x21d0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v2, "&uArr"

    const/16 v3, 0x21d1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v2, "&rArr"

    const/16 v3, 0x21d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v2, "&dArr"

    const/16 v3, 0x21d3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v2, "&hArr"

    const/16 v3, 0x21d4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v2, "&forall"

    const/16 v3, 0x2200

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v2, "&part"

    const/16 v3, 0x2202

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v2, "&exist"

    const/16 v3, 0x2203

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v2, "&empty"

    const/16 v3, 0x2205

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v2, "&nabla"

    const/16 v3, 0x2207

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v2, "&isin"

    const/16 v3, 0x2208

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v2, "&notin"

    const/16 v3, 0x2209

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v2, "&ni"

    const/16 v3, 0x220b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v2, "&prod"

    const/16 v3, 0x220f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v2, "&sum"

    const/16 v3, 0x2211

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v2, "&minus"

    const/16 v3, 0x2212

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v2, "&lowast"

    const/16 v3, 0x2217

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v2, "&radic"

    const/16 v3, 0x221a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v2, "&prop"

    const/16 v3, 0x221d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v2, "&infin"

    const/16 v3, 0x221e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v2, "&ang"

    const/16 v3, 0x2220

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v2, "&and"

    const/16 v3, 0x2227

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v2, "&or"

    const/16 v3, 0x2228

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string v2, "&cap"

    const/16 v3, 0x2229

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v2, "&cup"

    const/16 v3, 0x222a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v2, "&int"

    const/16 v3, 0x222b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string v2, "&there4"

    const/16 v3, 0x2234

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v2, "&sim"

    const/16 v3, 0x223c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v2, "&cong"

    const/16 v3, 0x2245

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v2, "&asymp"

    const/16 v3, 0x2248

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string v2, "&ne"

    const/16 v3, 0x2260

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v2, "&equiv"

    const/16 v3, 0x2261

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v2, "&le"

    const/16 v3, 0x2264

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string v2, "&ge"

    const/16 v3, 0x2265

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string v2, "&sub"

    const/16 v3, 0x2282

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v2, "&sup"

    const/16 v3, 0x2283

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v2, "&nsub"

    const/16 v3, 0x2284

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string v2, "&sube"

    const/16 v3, 0x2286

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v2, "&supe"

    const/16 v3, 0x2287

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v2, "&oplus"

    const/16 v3, 0x2295

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string v2, "&otimes"

    const/16 v3, 0x2297

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v2, "&perp"

    const/16 v3, 0x22a5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string v2, "&sdot"

    const/16 v3, 0x22c5

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string v2, "&lceil"

    const/16 v3, 0x2308

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v2, "&rceil"

    const/16 v3, 0x2309

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string v2, "&lfloor"

    const/16 v3, 0x230a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const-string v2, "&rfloor"

    const/16 v3, 0x230b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v2, "&lang"

    const/16 v3, 0x2329

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v2, "&rang"

    const/16 v3, 0x232a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string v2, "&loz"

    const/16 v3, 0x25ca

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string v2, "&spades"

    const/16 v3, 0x2660

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v2, "&clubs"

    const/16 v3, 0x2663

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v2, "&hearts"

    const/16 v3, 0x2665

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v2, "&diams"

    const/16 v3, 0x2666

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v2, "&quot"

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v2, "&amp"

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v2, "&lt"

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v2, "&gt"

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v2, "&apos"

    const/16 v3, 0x27

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string v2, "&OElig"

    const/16 v3, 0x152

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string v2, "&oelig"

    const/16 v3, 0x153

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const-string v2, "&Scaron"

    const/16 v3, 0x160

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    const-string v2, "&scaron"

    const/16 v3, 0x161

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    const-string v2, "&Yuml"

    const/16 v3, 0x178

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v2, "&circ"

    const/16 v3, 0x2c6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v2, "&tilde"

    const/16 v3, 0x2dc

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string v2, "&ensp"

    const/16 v3, 0x2002

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v2, "&emsp"

    const/16 v3, 0x2003

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string v2, "&thinsp"

    const/16 v3, 0x2009

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string v2, "&zwnj"

    const/16 v3, 0x200c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v2, "&zwj"

    const/16 v3, 0x200d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string v2, "&lrm"

    const/16 v3, 0x200e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string v2, "&rlm"

    const/16 v3, 0x200f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v2, "&ndash"

    const/16 v3, 0x2013

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string v2, "&mdash"

    const/16 v3, 0x2014

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v2, "&lsquo"

    const/16 v3, 0x2018

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v2, "&rsquo"

    const/16 v3, 0x2019

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v2, "&sbquo"

    const/16 v3, 0x201a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string v2, "&ldquo"

    const/16 v3, 0x201c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v2, "&rdquo"

    const/16 v3, 0x201d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v2, "&bdquo"

    const/16 v3, 0x201e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string v2, "&dagger"

    const/16 v3, 0x2020

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v2, "&Dagger"

    const/16 v3, 0x2021

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string v2, "&permil"

    const/16 v3, 0x2030

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string v2, "&lsaquo"

    const/16 v3, 0x2039

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const-string v2, "&rsaquo"

    const/16 v3, 0x203a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string v2, "&euro"

    const/16 v3, 0x20ac

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    .line 1006
    const/16 v2, 0x41

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    const/16 v3, 0x61

    const/16 v4, 0x66

    invoke-static {v3, v4}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->HEX_LETTER:Lcom/google/common/base/CharMatcher;

    .line 1146
    new-instance v2, Lcom/google/common/base/StringUtil$CharEscaperBuilder;

    invoke-direct {v2}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;-><init>()V

    const-string v3, "&lt;"

    invoke-virtual {v2, v7, v3}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/base/StringUtil$CharEscaperBuilder;

    move-result-object v2

    const-string v3, "&gt;"

    invoke-virtual {v2, v8, v3}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/base/StringUtil$CharEscaperBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/StringUtil$CharEscaperBuilder;->toEscaper()Lcom/google/common/base/StringUtil$CharEscaper;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/common/base/StringUtil$CharEscaper;

    .line 1152
    const-string v2, "</?[a-zA-Z][^>]*>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 1845
    const-string v2, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->CHARACTER_REFERENCE_PATTERN:Ljava/util/regex/Pattern;

    .line 1897
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1898
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Character$UnicodeBlock;>;"
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1899
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1900
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1901
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1902
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1903
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1904
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1905
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1906
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1907
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1908
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1909
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1910
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1911
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1912
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1913
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1914
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1915
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1916
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1917
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1918
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1919
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    .line 2008
    const-string v2, "0123456789abcdef"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    .line 2009
    const-string v2, "01234567"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->octalChars:[C

    .line 2465
    new-instance v2, Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    invoke-direct {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;-><init>()V

    invoke-virtual {v2, v9}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x600

    const/16 v4, 0x603

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x6dd

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x70f

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x17b4

    const/16 v4, 0x17b5

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x200b

    const/16 v4, 0x200f

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x202a

    const/16 v4, 0x202e

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x2060

    const/16 v4, 0x2064

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x206a

    const/16 v4, 0x206f

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xfeff

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xfff9

    const v4, 0xfffb

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0x1d173

    const v4, 0x1d17a

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xe0001

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const v3, 0xe0020

    const v4, 0xe007f

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x2028

    const/16 v4, 0x2029

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x85

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\'"

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "&"

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "<"

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, ">"

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "="

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\\"

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->create()Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    .line 2497
    new-instance v2, Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    invoke-direct {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;-><init>()V

    const-string v3, "\""

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const-string v3, "\\"

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v5, v3}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->create()Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    .line 2504
    sget-object v2, Lcom/google/common/base/StringUtil;->JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    sget-object v3, Lcom/google/common/base/StringUtil;->JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v2, v3}, Lcom/google/common/base/StringUtil$CodePointSet;->or(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v2

    sput-object v2, Lcom/google/common/base/StringUtil;->JSON_OR_JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V
    .registers 6
    .parameter "codePoint"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1337
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1342
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1343
    .local v0, surrogates:[C
    const/4 v1, 0x0

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1344
    const/4 v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1, p1}, Lcom/google/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    .line 1352
    .end local v0           #surrogates:[C
    :goto_16
    return-void

    .line 1347
    :cond_17
    const-string v1, "\\u"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v3, p0, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/StringUtil;->hexChars:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_16
.end method

.method private static appendOctalJavaScriptRepresentation(CZLjava/lang/Appendable;)V
    .registers 6
    .parameter "ch"
    .parameter "pad"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x5c

    .line 1365
    const/16 v0, 0x40

    if-ge p0, v0, :cond_8

    if-eqz p1, :cond_2e

    .line 1369
    :cond_8
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->octalChars:[C

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->octalChars:[C

    ushr-int/lit8 v2, p0, 0x3

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->octalChars:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1381
    :goto_2d
    return-void

    .line 1373
    :cond_2e
    const/16 v0, 0x8

    if-lt p0, v0, :cond_4c

    .line 1374
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->octalChars:[C

    ushr-int/lit8 v2, p0, 0x3

    and-int/lit8 v2, v2, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->octalChars:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2d

    .line 1378
    :cond_4c
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/StringUtil;->octalChars:[C

    and-int/lit8 v2, p0, 0x7

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2d
.end method

.method public static bytesStorage(Ljava/lang/String;)I
    .registers 5
    .parameter "str"

    .prologue
    .line 2152
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2154
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2155
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1c

    .line 2156
    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/StringUtil;->bytesUtf8(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2155
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_7

    .line 2158
    :cond_1c
    return v1
.end method

.method public static bytesToHexString([BLjava/lang/Character;)Ljava/lang/String;
    .registers 8
    .parameter "bytes"
    .end parameter
    .parameter "delimiter"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v5, p0

    if-nez p1, :cond_34

    const/4 v4, 0x2

    :goto_6
    mul-int/2addr v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2023
    .local v0, hex:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v4, p0

    if-ge v1, v4, :cond_36

    .line 2024
    aget-byte v4, p0, v1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v2, v4, 0xf

    .line 2025
    .local v2, nibble1:I
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 2026
    .local v3, nibble2:I
    if-lez v1, :cond_23

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2027
    :cond_23
    sget-object v4, Lcom/google/common/base/StringUtil;->hexChars:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2028
    sget-object v4, Lcom/google/common/base/StringUtil;->hexChars:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2023
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2020
    .end local v0           #hex:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #nibble1:I
    .end local v3           #nibble2:I
    :cond_34
    const/4 v4, 0x3

    goto :goto_6

    .line 2030
    .restart local v0       #hex:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static bytesUtf8(I)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2126
    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    .line 2127
    const/4 v0, 0x1

    .line 2140
    :goto_5
    return v0

    .line 2128
    :cond_6
    const/16 v0, 0x800

    if-ge p0, v0, :cond_c

    .line 2129
    const/4 v0, 0x2

    goto :goto_5

    .line 2130
    :cond_c
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_12

    .line 2131
    const/4 v0, 0x3

    goto :goto_5

    .line 2132
    :cond_12
    const/high16 v0, 0x20

    if-ge p0, v0, :cond_18

    .line 2133
    const/4 v0, 0x4

    goto :goto_5

    .line 2137
    :cond_18
    const/high16 v0, 0x400

    if-ge p0, v0, :cond_1e

    .line 2138
    const/4 v0, 0x5

    goto :goto_5

    .line 2140
    :cond_1e
    const/4 v0, 0x6

    goto :goto_5
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 2082
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2087
    .end local p0
    :cond_6
    :goto_6
    return-object p0

    .line 2085
    .restart local p0
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2086
    .local v1, first:C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2087
    .local v0, capitalized:C
    if-eq v1, v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static collapse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "chars"
    .end parameter
    .parameter "replacement"
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1711
    if-nez p0, :cond_4

    .line 1712
    const/4 v4, 0x0

    .line 1736
    :goto_3
    return-object v4

    .line 1715
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1717
    .local v2, newStr:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1719
    .local v3, prevCharMatched:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 1720
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1721
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 1723
    if-eqz v3, :cond_21

    .line 1719
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1728
    :cond_21
    const/4 v3, 0x1

    .line 1729
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1731
    :cond_26
    const/4 v3, 0x0

    .line 1732
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1736
    .end local v0           #c:C
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static collapseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1683
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static containsCharRef(Ljava/lang/String;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 1853
    sget-object v0, Lcom/google/common/base/StringUtil;->CHARACTER_REFERENCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static convertEOLToLF(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "input"

    .prologue
    const/16 v7, 0xa

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 549
    .local v3, res:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 550
    .local v4, s:[C
    const/4 v1, 0x0

    .line 551
    .local v1, from:I
    array-length v0, v4

    .line 552
    .local v0, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v0, :cond_33

    .line 553
    aget-char v5, v4, v2

    const/16 v6, 0xd

    if-ne v5, v6, :cond_30

    .line 554
    sub-int v5, v2, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_2e

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v4, v5

    if-ne v5, v7, :cond_2e

    .line 557
    add-int/lit8 v2, v2, 0x1

    .line 560
    :cond_2e
    add-int/lit8 v1, v2, 0x1

    .line 552
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 564
    :cond_33
    if-nez v1, :cond_36

    .line 569
    .end local p0
    :goto_35
    return-object p0

    .line 568
    .restart local p0
    :cond_36
    sub-int v5, v0, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_35
.end method

.method public static displayWidth(C)I
    .registers 2
    .parameter "ch"

    .prologue
    .line 1988
    const/16 v0, 0x4f9

    if-le p0, v0, :cond_5e

    const/16 v0, 0x5be

    if-eq p0, v0, :cond_5e

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_5e

    :cond_10
    const/16 v0, 0x5f3

    if-eq p0, v0, :cond_5e

    const/16 v0, 0x5f4

    if-eq p0, v0, :cond_5e

    const/16 v0, 0x600

    if-lt p0, v0, :cond_20

    const/16 v0, 0x6ff

    if-le p0, v0, :cond_5e

    :cond_20
    const/16 v0, 0x750

    if-lt p0, v0, :cond_28

    const/16 v0, 0x77f

    if-le p0, v0, :cond_5e

    :cond_28
    const v0, 0xfb50

    if-lt p0, v0, :cond_32

    const v0, 0xfdff

    if-le p0, v0, :cond_5e

    :cond_32
    const v0, 0xfe70

    if-lt p0, v0, :cond_3c

    const v0, 0xfeff

    if-le p0, v0, :cond_5e

    :cond_3c
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_44

    const/16 v0, 0x20af

    if-le p0, v0, :cond_5e

    :cond_44
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_4c

    const/16 v0, 0x213a

    if-le p0, v0, :cond_5e

    :cond_4c
    const/16 v0, 0xe00

    if-lt p0, v0, :cond_54

    const/16 v0, 0xe7f

    if-le p0, v0, :cond_5e

    :cond_54
    const v0, 0xff61

    if-lt p0, v0, :cond_60

    const v0, 0xffdc

    if-gt p0, v0, :cond_60

    .line 2003
    :cond_5e
    const/4 v0, 0x1

    .line 2005
    :goto_5f
    return v0

    :cond_60
    const/4 v0, 0x2

    goto :goto_5f
.end method

.method public static displayWidth(Ljava/lang/String;)I
    .registers 5
    .parameter "s"

    .prologue
    .line 1956
    const/4 v2, 0x0

    .line 1957
    .local v2, width:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1958
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, v1, :cond_14

    .line 1959
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/StringUtil;->displayWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    .line 1958
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1961
    :cond_14
    return v2
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "str"
    .parameter "suffix"

    .prologue
    .line 2117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2118
    .local v5, len:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static escapeStringBody(Ljava/lang/CharSequence;ZLcom/google/common/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    .registers 12
    .parameter "plainText"
    .parameter "escapeToAscii"
    .parameter "jsEscapingMode"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    const/4 v5, 0x0

    .line 1259
    .local v5, pos:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1260
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v3, :cond_84

    .line 1261
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1262
    .local v1, codePoint:I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 1264
    .local v0, charCount:I
    invoke-static {v1, p1, p2}, Lcom/google/common/base/StringUtil;->shouldEscapeChar(IZLcom/google/common/base/StringUtil$JsEscapingMode;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1260
    :goto_16
    add-int/2addr v2, v0

    goto :goto_6

    .line 1268
    :cond_18
    invoke-interface {p3, p0, v5, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1269
    add-int v5, v2, v0

    .line 1270
    sparse-switch v1, :sswitch_data_88

    .line 1289
    :cond_20
    const/16 v6, 0x100

    if-ge v1, v6, :cond_28

    sget-object v6, Lcom/google/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v6, :cond_6c

    .line 1290
    :cond_28
    invoke-static {v1, p3}, Lcom/google/common/base/StringUtil;->appendHexJavaScriptRepresentation(ILjava/lang/Appendable;)V

    goto :goto_16

    .line 1271
    :sswitch_2c
    const-string v6, "\\b"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_16

    .line 1272
    :sswitch_32
    const-string v6, "\\t"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_16

    .line 1273
    :sswitch_38
    const-string v6, "\\n"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_16

    .line 1274
    :sswitch_3e
    const-string v6, "\\f"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_16

    .line 1275
    :sswitch_44
    const-string v6, "\\r"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_16

    .line 1276
    :sswitch_4a
    const-string v6, "\\\\"

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_16

    .line 1278
    :sswitch_50
    sget-object v6, Lcom/google/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v6, :cond_5d

    const/16 v6, 0x27

    if-ne v6, v1, :cond_5d

    .line 1281
    int-to-char v6, v1

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_16

    .line 1283
    :cond_5d
    sget-object v6, Lcom/google/common/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-eq p2, v6, :cond_20

    .line 1284
    const/16 v6, 0x5c

    invoke-interface {p3, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v6

    int-to-char v7, v1

    invoke-interface {v6, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_16

    .line 1295
    :cond_6c
    add-int v6, v2, v0

    if-ge v6, v3, :cond_7c

    add-int v6, v2, v0

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_82

    :cond_7c
    const/4 v4, 0x1

    .line 1297
    .local v4, pad:Z
    :goto_7d
    int-to-char v6, v1

    invoke-static {v6, v4, p3}, Lcom/google/common/base/StringUtil;->appendOctalJavaScriptRepresentation(CZLjava/lang/Appendable;)V

    goto :goto_16

    .line 1295
    .end local v4           #pad:Z
    :cond_82
    const/4 v4, 0x0

    goto :goto_7d

    .line 1302
    .end local v0           #charCount:I
    .end local v1           #codePoint:I
    :cond_84
    invoke-interface {p3, p0, v5, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1303
    return-void

    .line 1270
    :sswitch_data_88
    .sparse-switch
        0x8 -> :sswitch_2c
        0x9 -> :sswitch_32
        0xa -> :sswitch_38
        0xc -> :sswitch_3e
        0xd -> :sswitch_44
        0x22 -> :sswitch_50
        0x27 -> :sswitch_50
        0x5c -> :sswitch_4a
    .end sparse-switch
.end method

.method public static fixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "str"
    .parameter "width"

    .prologue
    .line 282
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v3, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/google/common/base/StringUtil;->NEWLINE_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    .local v1, line:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 288
    .end local v1           #line:Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 289
    .local v2, lineArray:[Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/google/common/base/StringUtil;->fixedWidth([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static fixedWidth([Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "lines"
    .parameter "width"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, formattedLines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_16

    aget-object v4, v0, v2

    .line 315
    .local v4, line:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/google/common/base/StringUtil;->formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 318
    .end local v4           #line:Ljava/lang/String;
    :cond_16
    const/16 v5, 0xa

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static formatLineToFixedWidth(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "line"
    .parameter "width"

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p1, :cond_7

    .line 353
    .end local p0
    :goto_6
    return-object p0

    .line 332
    .restart local p0
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 335
    .local v1, col:I
    sget-object v5, Lcom/google/common/base/StringUtil;->TO_WORDS:Lcom/google/common/base/Splitter;

    invoke-virtual {v5, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 336
    .local v4, word:Ljava/lang/String;
    if-nez v1, :cond_2d

    .line 337
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 350
    :goto_29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 339
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v3, v5, 0x1

    .line 341
    .local v3, newCol:I
    if-gt v3, p1, :cond_3d

    .line 342
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    move v1, v3

    goto :goto_29

    .line 345
    :cond_3d
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_29

    .line 353
    .end local v3           #newCol:I
    .end local v4           #word:Ljava/lang/String;
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static hexToBytes(Ljava/lang/CharSequence;)[B
    .registers 8
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    .line 526
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 527
    .local v0, bytes:[B
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_12

    .line 541
    :cond_11
    return-object v0

    .line 530
    :cond_12
    aput-byte v5, v0, v5

    .line 531
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    rem-int/lit8 v3, v4, 0x2

    .line 532
    .local v3, nibbleIdx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 533
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 534
    .local v1, c:C
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_39

    .line 535
    shr-int/lit8 v4, v3, 0x1

    invoke-static {v1}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 539
    :goto_34
    add-int/lit8 v3, v3, 0x1

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 537
    :cond_39
    shr-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v4

    invoke-static {v1}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    goto :goto_34
.end method

.method private static hexValue(C)I
    .registers 3
    .parameter "c"

    .prologue
    .line 600
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 601
    add-int/lit8 v0, p0, -0x30

    .line 605
    :goto_a
    return v0

    .line 602
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 603
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 604
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 605
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 607
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "char is not a hex char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static indent(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter "iString"
    .parameter "iIndentDepth"

    .prologue
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, spacer:Ljava/lang/StringBuilder;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p1, :cond_15

    .line 366
    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 368
    :cond_15
    const-string v2, "\n"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isCjk(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1931
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->isCjk(I)Z

    move-result v0

    return v0
.end method

.method public static isCjk(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 1940
    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_6

    .line 1941
    const/4 v0, 0x0

    .line 1944
    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/google/common/base/StringUtil;->CJK_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static isCjk(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 1883
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1884
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1885
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/StringUtil;->isCjk(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1886
    const/4 v2, 0x1

    .line 1889
    :goto_12
    return v2

    .line 1884
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1889
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .registers 2
    .parameter "string"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 77
    if-eqz p0, :cond_a

    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isHebrew(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 1874
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    .line 1861
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1862
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1863
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/StringUtil;->isHebrew(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1864
    const/4 v2, 0x1

    .line 1867
    :goto_12
    return v2

    .line 1862
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1867
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private static isHex(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 594
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isOctal(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 590
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x37

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static javaScriptEscape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 1185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .registers 5
    .parameter "s"
    .parameter "escapeToAscii"

    .prologue
    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1222
    .local v1, sb:Ljava/lang/StringBuilder;
    :try_start_d
    sget-object v2, Lcom/google/common/base/StringUtil$JsEscapingMode;->EMBEDDABLE_JS:Lcom/google/common/base/StringUtil$JsEscapingMode;

    invoke-static {p0, p1, v2, v1}, Lcom/google/common/base/StringUtil;->escapeStringBody(Ljava/lang/CharSequence;ZLcom/google/common/base/StringUtil$JsEscapingMode;Ljava/lang/Appendable;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_17

    .line 1227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1223
    :catch_17
    move-exception v0

    .line 1225
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static javaScriptEscapeToAscii(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 1197
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/base/StringUtil;->javaScriptEscapeHelper(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static javaScriptUnescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1390
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 1391
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1392
    .local v0, c:C
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_1f

    .line 1393
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3, v2}, Lcom/google/common/base/StringUtil;->javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_a

    .line 1395
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1399
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static javaScriptUnescapeHelper(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .registers 15
    .parameter "s"
    .parameter "i"
    .parameter "sb"

    .prologue
    const/16 v11, 0x8

    const/4 v1, 0x2

    .line 1412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt p1, v9, :cond_28

    .line 1413
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End-of-string after escape character in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1417
    :cond_28
    add-int/lit8 v3, p1, 0x1

    .end local p1
    .local v3, i:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1418
    .local v0, c:C
    sparse-switch v0, :sswitch_data_142

    .line 1466
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown escape code ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1419
    :sswitch_64
    const/16 v9, 0xa

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1471
    .end local v3           #i:I
    .restart local p1
    :goto_6a
    return p1

    .line 1420
    .end local p1
    .restart local v3       #i:I
    :sswitch_6b
    const/16 v9, 0xd

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3           #i:I
    .restart local p1
    goto :goto_6a

    .line 1421
    .end local p1
    .restart local v3       #i:I
    :sswitch_72
    const/16 v9, 0x9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3           #i:I
    .restart local p1
    goto :goto_6a

    .line 1422
    .end local p1
    .restart local v3       #i:I
    :sswitch_79
    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3           #i:I
    .restart local p1
    goto :goto_6a

    .line 1423
    .end local p1
    .restart local v3       #i:I
    :sswitch_7e
    const/16 v9, 0xc

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .end local v3           #i:I
    .restart local p1
    goto :goto_6a

    .line 1428
    .end local p1
    .restart local v3       #i:I
    :sswitch_85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    .line 1429
    .end local v3           #i:I
    .restart local p1
    goto :goto_6a

    .line 1432
    .end local p1
    .restart local v3       #i:I
    :sswitch_8a
    add-int/lit8 p1, v3, -0x1

    .line 1433
    .end local v3           #i:I
    .restart local p1
    const/4 v6, 0x1

    .line 1434
    .local v6, nOctalDigits:I
    const/16 v9, 0x34

    if-ge v0, v9, :cond_92

    const/4 v1, 0x3

    .line 1436
    .local v1, digitLimit:I
    :cond_92
    :goto_92
    if-ge v6, v1, :cond_ab

    add-int v9, p1, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_ab

    add-int v9, p1, v6

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 1437
    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    .line 1439
    :cond_ab
    add-int v9, p1, v6

    invoke-virtual {p0, p1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1441
    add-int/2addr p1, v6

    .line 1442
    goto :goto_6a

    .line 1446
    .end local v1           #digitLimit:I
    .end local v6           #nOctalDigits:I
    .end local p1
    .restart local v3       #i:I
    :sswitch_bb
    const/16 v9, 0x75

    if-ne v0, v9, :cond_d3

    const/4 v5, 0x4

    .line 1448
    .local v5, nHexDigits:I
    :goto_c0
    add-int v9, v3, v5

    :try_start_c2
    invoke-virtual {p0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c2 .. :try_end_c5} :catch_d5

    move-result-object v2

    .line 1456
    .local v2, hexCode:Ljava/lang/String;
    const/16 v9, 0x10

    :try_start_c8
    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_cb} :catch_10d

    move-result v8

    .line 1462
    .local v8, unicodeValue:I
    int-to-char v9, v8

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1463
    add-int p1, v3, v5

    .line 1464
    .end local v3           #i:I
    .restart local p1
    goto :goto_6a

    .end local v2           #hexCode:Ljava/lang/String;
    .end local v5           #nHexDigits:I
    .end local v8           #unicodeValue:I
    .end local p1
    .restart local v3       #i:I
    :cond_d3
    move v5, v1

    .line 1446
    goto :goto_c0

    .line 1449
    .restart local v5       #nHexDigits:I
    :catch_d5
    move-exception v4

    .line 1450
    .local v4, ioobe:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid unicode sequence ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1457
    .end local v4           #ioobe:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #hexCode:Ljava/lang/String;
    :catch_10d
    move-exception v7

    .line 1458
    .local v7, nfe:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid unicode sequence ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1418
    nop

    :sswitch_data_142
    .sparse-switch
        0x22 -> :sswitch_85
        0x27 -> :sswitch_85
        0x30 -> :sswitch_8a
        0x31 -> :sswitch_8a
        0x32 -> :sswitch_8a
        0x33 -> :sswitch_8a
        0x34 -> :sswitch_8a
        0x35 -> :sswitch_8a
        0x36 -> :sswitch_8a
        0x37 -> :sswitch_8a
        0x3e -> :sswitch_85
        0x5c -> :sswitch_85
        0x62 -> :sswitch_79
        0x66 -> :sswitch_7e
        0x6e -> :sswitch_64
        0x72 -> :sswitch_6b
        0x74 -> :sswitch_72
        0x75 -> :sswitch_bb
        0x78 -> :sswitch_bb
    .end sparse-switch
.end method

.method public static lastToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"
    .parameter "delimiter"

    .prologue
    .line 1842
    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->lastIndexIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 1661
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1662
    .local v3, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1663
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1664
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1665
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate string key in map when lower casing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1668
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 1670
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;TV;>;"
    .end local v2           #key:Ljava/lang/String;
    :cond_41
    return-object v3
.end method

.method public static maskLeft(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .parameter "s"
    .parameter "len"
    .parameter "maskChar"

    .prologue
    .line 577
    if-gtz p1, :cond_3

    .line 586
    .end local p0
    :goto_2
    return-object p0

    .line 580
    .restart local p0
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, p1, :cond_19

    .line 583
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 585
    :cond_19
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static megastrip(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "left"
    .end parameter
    .parameter "right"
    .end parameter
    .parameter "what"
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    if-nez p0, :cond_4

    .line 392
    const/4 p0, 0x0

    .line 405
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 395
    .restart local p0
    :cond_4
    invoke-static {p3}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 396
    .local v0, matcher:Lcom/google/common/base/CharMatcher;
    if-eqz p1, :cond_16

    .line 397
    if-eqz p2, :cond_11

    .line 398
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 400
    :cond_11
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 402
    :cond_16
    if-eqz p2, :cond_3

    .line 403
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method static mustEscapeCharInJsString(I)Z
    .registers 2
    .parameter "codepoint"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2377
    sget-object v0, Lcom/google/common/base/StringUtil;->JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method static mustEscapeCharInJsonOrJsString(I)Z
    .registers 2
    .parameter "codepoint"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2405
    sget-object v0, Lcom/google/common/base/StringUtil;->JSON_OR_JS_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method static mustEscapeCharInJsonString(I)Z
    .registers 2
    .parameter "codepoint"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2393
    sget-object v0, Lcom/google/common/base/StringUtil;->JSON_ESCAPE_CHARS:Lcom/google/common/base/StringUtil$CodePointSet;

    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static parseDelimitedList(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 11
    .parameter "list"
    .parameter "delimiter"

    .prologue
    const/4 v8, 0x0

    .line 1797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, delim:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1803
    .local v2, st:Ljava/util/StringTokenizer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    .line 1805
    .local v1, lastToken:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1819
    .local v5, word:Ljava/lang/StringBuilder;
    :goto_3d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1820
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1821
    .local v3, tok:Ljava/lang/String;
    if-eqz v1, :cond_59

    .line 1822
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 1823
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    const/4 v3, 0x0

    .line 1832
    :cond_59
    :goto_59
    move-object v1, v3

    .line 1833
    goto :goto_3d

    .line 1826
    :cond_5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_68

    .line 1827
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_68
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_59

    .line 1835
    .end local v3           #tok:Ljava/lang/String;
    :cond_6c
    new-array v6, v8, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static replaceSmartQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 508
    sget-object v1, Lcom/google/common/base/StringUtil;->FANCY_SINGLE_QUOTE:Lcom/google/common/base/CharMatcher;

    const/16 v2, 0x27

    invoke-virtual {v1, p0, v2}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/google/common/base/StringUtil;->FANCY_DOUBLE_QUOTE:Lcom/google/common/base/CharMatcher;

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static shouldEscapeChar(IZLcom/google/common/base/StringUtil$JsEscapingMode;)Z
    .registers 4
    .parameter "codePoint"
    .parameter "escapeToAscii"
    .parameter "jsEscapingMode"

    .prologue
    .line 1311
    if-eqz p1, :cond_c

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7e

    if-le p0, v0, :cond_c

    .line 1312
    :cond_a
    const/4 v0, 0x1

    .line 1325
    :goto_b
    return v0

    .line 1320
    :cond_c
    sget-object v0, Lcom/google/common/base/StringUtil$JsEscapingMode;->JSON:Lcom/google/common/base/StringUtil$JsEscapingMode;

    if-ne p2, v0, :cond_15

    .line 1321
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->mustEscapeCharInJsonOrJsString(I)Z

    move-result v0

    goto :goto_b

    .line 1325
    :cond_15
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->mustEscapeCharInJsString(I)Z

    move-result v0

    goto :goto_b
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "str"
    .parameter "delims"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 9
    .parameter "str"
    .parameter "delims"
    .parameter "trimTokens"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 150
    .local v2, n:I
    new-array v1, v2, [Ljava/lang/String;

    .line 151
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v2, :cond_26

    .line 152
    if-eqz p2, :cond_1f

    .line 153
    sget-object v4, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 151
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 155
    :cond_1f
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    goto :goto_1c

    .line 158
    :cond_26
    return-object v1
.end method

.method public static splitAndTrim(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "str"
    .parameter "delims"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/common/base/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitInts(Ljava/lang/String;)[I
    .registers 7
    .parameter "str"

    .prologue
    .line 244
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 246
    .local v2, n:I
    new-array v1, v2, [I

    .line 247
    .local v1, list:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v2, :cond_1d

    .line 248
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 251
    .end local v3           #token:Ljava/lang/String;
    :cond_1d
    return-object v1
.end method

.method public static splitLongs(Ljava/lang/String;)[J
    .registers 8
    .parameter "str"

    .prologue
    .line 256
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v4, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 258
    .local v2, n:I
    new-array v1, v2, [J

    .line 259
    .local v1, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v2, :cond_1d

    .line 260
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v1, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 263
    .end local v3           #token:Ljava/lang/String;
    :cond_1d
    return-object v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "str"
    .parameter "prefix"

    .prologue
    const/4 v2, 0x0

    .line 2103
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static stream2String(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 9
    .parameter "is"
    .parameter "maxLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1769
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1770
    .local v0, buffer:[B
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1771
    .local v2, sw:Ljava/io/StringWriter;
    const/4 v3, 0x0

    .line 1772
    .local v3, totalRead:I
    const/4 v1, 0x0

    .line 1775
    .local v1, read:I
    :cond_d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1776
    add-int/2addr v3, v1

    .line 1777
    array-length v4, v0

    invoke-virtual {p0, v0, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1778
    if-eq v5, p1, :cond_1f

    if-ge v3, p1, :cond_21

    :cond_1f
    if-ne v1, v5, :cond_d

    .line 1780
    :cond_21
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .registers 8
    .parameter "in"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "delimiter"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "doStrip"
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1524
    .local p3, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 1525
    const/4 v3, 0x0

    .line 1557
    :goto_3
    return-object v3

    .line 1527
    :cond_4
    if-nez p3, :cond_b

    .line 1528
    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1530
    .restart local p3       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_b
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    .line 1531
    :cond_13
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    .line 1532
    goto :goto_3

    .line 1535
    :cond_18
    const/4 v0, 0x0

    .line 1537
    .local v0, fromIndex:I
    :goto_19
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, pos:I
    if-ltz v2, :cond_3b

    .line 1538
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, interim:Ljava/lang/String;
    if-eqz p2, :cond_29

    .line 1540
    invoke-static {v1}, Lcom/google/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1542
    :cond_29
    if-eqz p2, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_34

    .line 1543
    :cond_31
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1546
    :cond_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1547
    goto :goto_19

    .line 1549
    .end local v1           #interim:Ljava/lang/String;
    :cond_3b
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1550
    .restart local v1       #interim:Ljava/lang/String;
    if-eqz p2, :cond_45

    .line 1551
    invoke-static {v1}, Lcom/google/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    :cond_45
    if-eqz p2, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 1554
    :cond_4d
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_50
    move-object v3, p3

    .line 1557
    goto :goto_3
.end method

.method public static string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;
    .registers 5
    .parameter "in"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "delimEntry"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "delimKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "doStripEntry"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1579
    if-nez p0, :cond_4

    .line 1580
    const/4 v0, 0x0

    .line 1583
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/common/base/StringUtil;->stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_3
.end method

.method public static string2Set(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
    .registers 4
    .parameter "in"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "delimiter"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "doStrip"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1492
    if-nez p0, :cond_4

    .line 1493
    const/4 v0, 0x0

    .line 1498
    :goto_3
    return-object v0

    .line 1496
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1497
    .local v0, out:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/base/StringUtil;->string2Collection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_3
.end method

.method private static stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .parameter
    .parameter "in"
    .parameter "delimEntry"
    .parameter "delimKey"
    .parameter "doStripEntry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 1628
    .local p0, out:Ljava/util/Map;,"TT;"
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1629
    :cond_c
    invoke-static {p1}, Lcom/google/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    :cond_15
    return-object p0

    .line 1633
    :cond_16
    invoke-static {p2}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1634
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1635
    .local v2, len:I
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1636
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1637
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1638
    .local v3, pos:I
    if-lez v3, :cond_51

    .line 1639
    add-int v5, v3, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1640
    .local v4, value:Ljava/lang/String;
    if-eqz p4, :cond_44

    .line 1641
    invoke-static {v4}, Lcom/google/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1643
    :cond_44
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 1645
    .end local v4           #value:Ljava/lang/String;
    :cond_51
    invoke-static {v0}, Lcom/google/common/base/StringUtil;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method public static stringToOrderedMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5
    .parameter "in"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "delimEntry"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "delimKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "doStripEntry"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1604
    if-nez p0, :cond_4

    .line 1605
    const/4 v0, 0x0

    .line 1608
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/common/base/StringUtil;->stringToMapImpl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_3
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static stripAndCollapse(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lcom/google/common/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static stripHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "string"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1165
    if-eqz p0, :cond_a

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1175
    .end local p0
    :cond_a
    :goto_a
    return-object p0

    .line 1168
    .restart local p0
    :cond_b
    sget-object v1, Lcom/google/common/base/StringUtil;->HTML_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, stripped:Ljava/lang/String;
    sget-object v1, Lcom/google/common/base/StringUtil;->LT_GT_ESCAPE:Lcom/google/common/base/StringUtil$CharEscaper;

    invoke-virtual {v1, v0}, Lcom/google/common/base/StringUtil$CharEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method

.method public static stripPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"
    .parameter "prefix"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static stripPrefixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "str"
    .parameter "prefix"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 459
    invoke-static {p0, p1}, Lcom/google/common/base/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static stripSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .parameter "suffix"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static stripSuffixIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .parameter "suffix"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 492
    invoke-static {p0, p1}, Lcom/google/common/base/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2058
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static toNullIfEmptyOrWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "string"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/common/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    .end local p0
    :cond_7
    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "str"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2044
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static trimEnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 203
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .end parameter
    .parameter "extraChars"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_9

    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static trimStart(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 169
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .end parameter
    .parameter "extraChars"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    if-nez p1, :cond_9

    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static truncateAtMaxLength(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6
    .parameter "source"
    .parameter "maxLength"
    .parameter "addEllipsis"

    .prologue
    const/4 v2, 0x0

    .line 2253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_8

    .line 2259
    .end local p0
    :goto_7
    return-object p0

    .line 2256
    .restart local p0
    :cond_8
    if-eqz p2, :cond_27

    const/4 v0, 0x3

    if-le p1, v0, :cond_27

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, -0x3

    invoke-static {p0, v2, v1}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 2259
    :cond_27
    invoke-static {p0, v2, p1}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_7
.end method

.method public static truncateIfNecessary(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "source"
    .parameter "maxLength"

    .prologue
    const/4 v6, 0x0

    .line 2206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, p1, :cond_9

    move-object v3, p0

    .line 2230
    :cond_8
    :goto_8
    return-object v3

    .line 2209
    :cond_9
    invoke-static {p0, v6, p1}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 2211
    .local v1, str:Ljava/lang/String;
    sget-object v4, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2214
    .local v3, truncated:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, p1, :cond_8

    .line 2219
    sget-object v4, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2224
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_2b
    if-ltz v0, :cond_8

    .line 2225
    sget-object v4, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2226
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2227
    .local v2, substr:Ljava/lang/String;
    sget-object v4, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v4, v2}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 2224
    .end local v2           #substr:Ljava/lang/String;
    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b
.end method

.method public static truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "str"
    .parameter "maxbytes"

    .prologue
    .line 2169
    if-gez p1, :cond_8

    .line 2170
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2177
    :cond_8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2180
    .local v1, codepoints:I
    const/4 v0, 0x0

    .line 2181
    .local v0, bytesUsed:I
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 2183
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/StringUtil;->bytesUtf8(I)I

    move-result v2

    .line 2184
    .local v2, glyphBytes:I
    add-int v4, v0, v2

    if-le v4, p1, :cond_28

    .line 2189
    .end local v2           #glyphBytes:I
    :cond_22
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2187
    .restart local v2       #glyphBytes:I
    :cond_28
    add-int/2addr v0, v2

    .line 2182
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_10
.end method

.method public static unescapeCString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "s"

    .prologue
    const/16 v8, 0x5c

    .line 616
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_9

    .line 668
    .end local p0
    :goto_8
    return-object p0

    .line 621
    .restart local p0
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 623
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_14
    if-ge v2, v3, :cond_cf

    .line 624
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 625
    .local v0, c:C
    if-ne v0, v8, :cond_5f

    if-ge v1, v3, :cond_5f

    .line 626
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 627
    sparse-switch v0, :sswitch_data_d8

    .line 641
    const/16 v6, 0x78

    if-ne v0, v6, :cond_8f

    if-ge v2, v3, :cond_8f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 643
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v5

    .line 644
    .local v5, v:I
    if-ge v1, v3, :cond_5e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 645
    mul-int/lit8 v6, v5, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/common/base/StringUtil;->hexValue(C)I

    move-result v7

    add-int v5, v6, v7

    move v1, v2

    .line 647
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_5e
    int-to-char v0, v5

    .line 666
    .end local v5           #v:I
    :cond_5f
    :goto_5f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 667
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_14

    .line 628
    :sswitch_64
    const/4 v0, 0x7

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 629
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_67
    const/16 v0, 0x8

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 630
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_6b
    const/16 v0, 0xc

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 631
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_6f
    const/16 v0, 0xa

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 632
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_73
    const/16 v0, 0xd

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 633
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_77
    const/16 v0, 0x9

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 634
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_7b
    const/16 v0, 0xb

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 635
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_7f
    const/16 v0, 0x5c

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 636
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_83
    const/16 v0, 0x3f

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 637
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_87
    const/16 v0, 0x27

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 638
    .end local v1           #i:I
    .restart local v2       #i:I
    :sswitch_8b
    const/16 v0, 0x22

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 648
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_8f
    invoke-static {v0}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 650
    add-int/lit8 v5, v0, -0x30

    .line 651
    .restart local v5       #v:I
    if-ge v2, v3, :cond_b0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 652
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    move v2, v1

    .line 654
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_b0
    if-ge v2, v3, :cond_d5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/StringUtil;->isOctal(C)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 655
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int v5, v6, v7

    .line 657
    :goto_c8
    int-to-char v0, v5

    .line 658
    goto :goto_5f

    .line 660
    .end local v1           #i:I
    .end local v5           #v:I
    .restart local v2       #i:I
    :cond_ca
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5f

    .line 668
    .end local v0           #c:C
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_cf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_d5
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_c8

    .line 627
    nop

    :sswitch_data_d8
    .sparse-switch
        0x22 -> :sswitch_8b
        0x27 -> :sswitch_87
        0x3f -> :sswitch_83
        0x5c -> :sswitch_7f
        0x61 -> :sswitch_64
        0x62 -> :sswitch_67
        0x66 -> :sswitch_6b
        0x6e -> :sswitch_6f
        0x72 -> :sswitch_73
        0x74 -> :sswitch_77
        0x76 -> :sswitch_7b
    .end sparse-switch
.end method

.method public static unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 1023
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/base/StringUtil;->unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 25
    .parameter "s"
    .parameter "emulateBrowsers"

    .prologue
    .line 1044
    const/16 v20, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1045
    .local v10, index:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_11

    .line 1142
    .end local p0
    :goto_10
    return-object p0

    .line 1051
    .restart local p0
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1052
    .local v6, chars:[C
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v7, v0, [C

    .line 1053
    .local v7, escaped:[C
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v7, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    move/from16 v16, v10

    .line 1058
    .local v16, pos:I
    move v8, v10

    .local v8, i:I
    :goto_2a
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_188

    .line 1059
    aget-char v20, v6, v8

    const/16 v21, 0x26

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_47

    .line 1060
    add-int/lit8 v17, v16, 0x1

    .end local v16           #pos:I
    .local v17, pos:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aget-char v20, v6, v8

    aput-char v20, v7, v16

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    move/from16 v16, v17

    .line 1061
    .end local v17           #pos:I
    .restart local v16       #pos:I
    goto :goto_2a

    .line 1065
    :cond_47
    add-int/lit8 v14, v8, 0x1

    .line 1066
    .local v14, j:I
    const/4 v13, 0x0

    .line 1067
    .local v13, isNumericEntity:Z
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_5e

    aget-char v20, v6, v14

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5e

    .line 1068
    add-int/lit8 v14, v14, 0x1

    .line 1069
    const/4 v13, 0x1

    .line 1073
    :cond_5e
    const/4 v12, 0x0

    .line 1074
    .local v12, isHexEntity:Z
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_7d

    aget-char v20, v6, v14

    const/16 v21, 0x78

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7a

    aget-char v20, v6, v14

    const/16 v21, 0x58

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7d

    .line 1075
    :cond_7a
    add-int/lit8 v14, v14, 0x1

    .line 1076
    const/4 v12, 0x1

    .line 1080
    :cond_7d
    :goto_7d
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_90

    .line 1081
    aget-char v3, v6, v14

    .line 1082
    .local v3, ch:C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    .line 1083
    .local v11, isDigit:Z
    if-eqz v13, :cond_13e

    .line 1085
    if-nez v12, :cond_130

    if-nez v11, :cond_130

    .line 1099
    .end local v3           #ch:C
    .end local v11           #isDigit:Z
    :cond_90
    const/16 v19, 0x0

    .line 1100
    .local v19, replaced:Z
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v14, v0, :cond_9b

    if-nez p1, :cond_ac

    :cond_9b
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_11e

    aget-char v20, v6, v14

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11e

    .line 1103
    :cond_ac
    add-int/lit8 v20, v8, 0x2

    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_166

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_166

    .line 1105
    const-wide/16 v4, 0x0

    .line 1106
    .local v4, charcode:J
    add-int/lit8 v20, v8, 0x2

    :try_start_cd
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1107
    .restart local v3       #ch:C
    if-eqz v12, :cond_14a

    .line 1108
    new-instance v20, Ljava/lang/String;

    add-int/lit8 v21, v8, 0x3

    sub-int v22, v14, v8

    add-int/lit8 v22, v22, -0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_cd .. :try_end_ed} :catch_197

    move-result-wide v4

    .line 1114
    :cond_ee
    :goto_ee
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-lez v20, :cond_10b

    const-wide/32 v20, 0x10000

    cmp-long v20, v4, v20

    if-gez v20, :cond_10b

    .line 1115
    add-int/lit8 v17, v16, 0x1

    .end local v16           #pos:I
    .restart local v17       #pos:I
    long-to-int v0, v4

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    :try_start_105
    aput-char v20, v7, v16
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_107} :catch_19a

    .line 1116
    const/16 v19, 0x1

    move/from16 v16, v17

    .line 1130
    .end local v3           #ch:C
    .end local v4           #charcode:J
    .end local v17           #pos:I
    .restart local v16       #pos:I
    :cond_10b
    :goto_10b
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_11e

    aget-char v20, v6, v14

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11e

    .line 1131
    add-int/lit8 v14, v14, 0x1

    .line 1135
    :cond_11e
    if-nez v19, :cond_12d

    .line 1137
    sub-int v20, v14, v8

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v6, v8, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1138
    sub-int v20, v14, v8

    add-int v16, v16, v20

    .line 1140
    :cond_12d
    move v8, v14

    .line 1141
    goto/16 :goto_2a

    .line 1089
    .end local v19           #replaced:Z
    .restart local v3       #ch:C
    .restart local v11       #isDigit:Z
    :cond_130
    if-eqz v12, :cond_13e

    if-nez v11, :cond_13e

    sget-object v20, Lcom/google/common/base/StringUtil;->HEX_LETTER:Lcom/google/common/base/CharMatcher;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v20

    if-eqz v20, :cond_90

    .line 1094
    :cond_13e
    if-nez v11, :cond_146

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    if-eqz v20, :cond_90

    .line 1080
    :cond_146
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7d

    .line 1110
    .end local v11           #isDigit:Z
    .restart local v4       #charcode:J
    .restart local v19       #replaced:Z
    :cond_14a
    :try_start_14a
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_ee

    .line 1111
    new-instance v20, Ljava/lang/String;

    add-int/lit8 v21, v8, 0x2

    sub-int v22, v14, v8

    add-int/lit8 v22, v22, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v6, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_14a .. :try_end_164} :catch_197

    move-result-wide v4

    goto :goto_ee

    .line 1122
    .end local v3           #ch:C
    .end local v4           #charcode:J
    :cond_166
    new-instance v15, Ljava/lang/String;

    sub-int v20, v14, v8

    move/from16 v0, v20

    invoke-direct {v15, v6, v8, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1123
    .local v15, key:Ljava/lang/String;
    sget-object v20, Lcom/google/common/base/StringUtil;->ESCAPE_STRINGS:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Character;

    .line 1124
    .local v18, repl:Ljava/lang/Character;
    if-eqz v18, :cond_10b

    .line 1125
    add-int/lit8 v17, v16, 0x1

    .end local v16           #pos:I
    .restart local v17       #pos:I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Character;->charValue()C

    move-result v20

    aput-char v20, v7, v16

    .line 1126
    const/16 v19, 0x1

    move/from16 v16, v17

    .end local v17           #pos:I
    .restart local v16       #pos:I
    goto :goto_10b

    .line 1142
    .end local v12           #isHexEntity:Z
    .end local v13           #isNumericEntity:Z
    .end local v14           #j:I
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #repl:Ljava/lang/Character;
    .end local v19           #replaced:Z
    :cond_188
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_10

    .line 1118
    .restart local v4       #charcode:J
    .restart local v12       #isHexEntity:Z
    .restart local v13       #isNumericEntity:Z
    .restart local v14       #j:I
    .restart local v19       #replaced:Z
    .restart local p0
    :catch_197
    move-exception v20

    goto/16 :goto_10b

    .end local v16           #pos:I
    .restart local v3       #ch:C
    .restart local v17       #pos:I
    :catch_19a
    move-exception v20

    move/from16 v16, v17

    .end local v17           #pos:I
    .restart local v16       #pos:I
    goto/16 :goto_10b
.end method

.method public static unescapeMySQLString(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "s"

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0x27

    const/16 v9, 0x22

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 684
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 687
    .local v0, chars:[C
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_21

    aget-char v5, v0, v7

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-char v6, v0, v6

    if-ne v5, v6, :cond_21

    aget-char v5, v0, v7

    if-eq v5, v10, :cond_3a

    aget-char v5, v0, v7

    if-eq v5, v9, :cond_3a

    .line 689
    :cond_21
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 694
    :cond_3a
    const/4 v3, 0x1

    .line 695
    .local v3, j:I
    const/4 v1, 0x0

    .line 696
    .local v1, f:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_3d
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_d5

    .line 697
    if-nez v1, :cond_5c

    .line 698
    aget-char v5, v0, v2

    if-ne v5, v11, :cond_4c

    .line 699
    const/4 v1, 0x1

    .line 696
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 700
    :cond_4c
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-ne v5, v6, :cond_54

    .line 701
    const/4 v1, 0x2

    goto :goto_49

    .line 703
    :cond_54
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_49

    .line 705
    :cond_5c
    if-ne v1, v8, :cond_ac

    .line 706
    aget-char v5, v0, v2

    sparse-switch v5, :sswitch_data_f8

    .line 718
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aget-char v5, v0, v2

    aput-char v5, v0, v3

    move v3, v4

    .line 721
    .end local v4           #j:I
    .restart local v3       #j:I
    :goto_6a
    const/4 v1, 0x0

    goto :goto_49

    .line 707
    :sswitch_6c
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v7, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 708
    :sswitch_72
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v10, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 709
    :sswitch_78
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v9, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 710
    :sswitch_7e
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x8

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 711
    :sswitch_86
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0xa

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 712
    :sswitch_8e
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0xd

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 713
    :sswitch_96
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x9

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 714
    :sswitch_9e
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    const/16 v5, 0x1a

    aput-char v5, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 715
    :sswitch_a6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aput-char v11, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_6a

    .line 724
    :cond_ac
    aget-char v5, v0, v2

    aget-char v6, v0, v7

    if-eq v5, v6, :cond_cb

    .line 725
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 727
    :cond_cb
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    aget-char v5, v0, v7

    aput-char v5, v0, v3

    .line 728
    const/4 v1, 0x0

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto/16 :goto_49

    .line 732
    :cond_d5
    if-eqz v1, :cond_f0

    .line 733
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not a valid MySQL string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 737
    :cond_f0
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 706
    :sswitch_data_f8
    .sparse-switch
        0x22 -> :sswitch_78
        0x27 -> :sswitch_72
        0x30 -> :sswitch_6c
        0x5c -> :sswitch_a6
        0x62 -> :sswitch_7e
        0x6e -> :sswitch_86
        0x72 -> :sswitch_8e
        0x74 -> :sswitch_96
        0x7a -> :sswitch_9e
    .end sparse-switch
.end method

.method static unicodePreservingIndex(Ljava/lang/String;I)I
    .registers 3
    .parameter "str"
    .parameter "index"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2280
    if-lez p1, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 2281
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2283
    add-int/lit8 p1, p1, -0x1

    .line 2286
    .end local p1
    :cond_20
    return p1
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter "str"
    .parameter "begin"

    .prologue
    .line 2334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/common/base/StringUtil;->unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodePreservingSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 2321
    invoke-static {p0, p1}, Lcom/google/common/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, p2}, Lcom/google/common/base/StringUtil;->unicodePreservingIndex(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
