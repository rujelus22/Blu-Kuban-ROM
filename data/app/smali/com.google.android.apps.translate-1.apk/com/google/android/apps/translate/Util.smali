.class public Lcom/google/android/apps/translate/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final HTTP_REQUEST_TIMEOUT_MILLIS:I = 0x4e20

.field public static final LANGUAGE_PAIR_TEXT_SEPARATOR:Ljava/lang/String; = " \u00bb "

.field private static final MIN_LANGUAGE_COUNT:I = 0x32

.field private static final NETWORK_BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final USER_AGENT:Ljava/lang/String; = "AndroidTranslate"

.field private static mCameraLoggingConfirmed:Z

.field private static sHttpClient:Lorg/apache/http/client/HttpClient;

.field private static final sSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/apps/translate/Util;->sSdkVersion:I

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/translate/Util;->mCameraLoggingConfirmed:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToTextRange(Ljava/lang/CharSequence;Ljava/lang/String;[Landroid/text/style/CharacterStyle;[Landroid/text/style/CharacterStyle;[Landroid/text/style/CharacterStyle;)Ljava/lang/CharSequence;
    .registers 17
    .parameter "text"
    .parameter "placeholder"
    .parameter "cs"
    .parameter "prevPartTextCS"
    .parameter "afterPartTextCS"

    .prologue
    .line 807
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 808
    .local v2, holderLen:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 811
    .local v8, textStr:Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int v6, v9, v2

    .line 812
    .local v6, rangeStart:I
    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 814
    .local v5, rangeEnd:I
    if-ltz v6, :cond_6f

    if-ltz v5, :cond_6f

    .line 815
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 817
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    move-object v0, p2

    .local v0, arr$:[Landroid/text/style/CharacterStyle;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1e
    if-ge v3, v4, :cond_2a

    aget-object v7, v0, v3

    .line 818
    .local v7, s:Landroid/text/style/CharacterStyle;
    const/16 v9, 0x21

    invoke-virtual {v1, v7, v6, v5, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 822
    .end local v7           #s:Landroid/text/style/CharacterStyle;
    :cond_2a
    add-int v9, v5, v2

    invoke-virtual {v1, v5, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 823
    sub-int v9, v6, v2

    invoke-virtual {v1, v9, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 826
    if-eqz p3, :cond_4c

    sub-int v9, v6, v2

    if-lez v9, :cond_4c

    .line 827
    move-object v0, p3

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v4, :cond_4c

    aget-object v7, v0, v3

    .line 828
    .restart local v7       #s:Landroid/text/style/CharacterStyle;
    const/4 v9, 0x0

    sub-int v10, v6, v2

    const/16 v11, 0x21

    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 827
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 834
    .end local v7           #s:Landroid/text/style/CharacterStyle;
    :cond_4c
    if-eqz p4, :cond_70

    add-int v9, v5, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_70

    .line 835
    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v4, :cond_70

    aget-object v7, v0, v3

    .line 836
    .restart local v7       #s:Landroid/text/style/CharacterStyle;
    sub-int v9, v5, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v11, v2, 0x2

    sub-int/2addr v10, v11

    const/16 v11, 0x21

    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 835
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .end local v0           #arr$:[Landroid/text/style/CharacterStyle;
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #s:Landroid/text/style/CharacterStyle;
    :cond_6f
    move-object v1, p0

    .line 847
    :cond_70
    return-object v1
.end method

.method public static copyToClipBoard(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V
    .registers 6
    .parameter "activity"
    .parameter "text"
    .parameter "chipPart"

    .prologue
    .line 1109
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->copyToClipBoard(Landroid/content/Context;Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v0, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    if-ne p2, v0, :cond_16

    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    :goto_11
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 1113
    return-void

    .line 1110
    :cond_16
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_COPY_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    goto :goto_11
.end method

.method private static detectAndSetFonts(Landroid/text/Spannable;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V
    .registers 14
    .parameter "text"
    .parameter "langs"
    .parameter "type"

    .prologue
    .line 708
    const/4 v3, 0x0

    .line 709
    .local v3, langsToCheck:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/translate/Language;>;"
    if-eqz p1, :cond_24

    array-length v8, p1

    if-lez v8, :cond_24

    .line 710
    new-instance v3, Ljava/util/LinkedList;

    .end local v3           #langsToCheck:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/translate/Language;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 711
    .restart local v3       #langsToCheck:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/translate/Language;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/google/android/apps/translate/Language;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v5, :cond_24

    aget-object v4, v1, v2

    .line 712
    .local v4, language:Lcom/google/android/apps/translate/Language;
    invoke-static {v4}, Lcom/google/android/apps/translate/ExternalFonts;->isUsingExternalFont(Lcom/google/android/apps/translate/Language;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 714
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 719
    .end local v1           #arr$:[Lcom/google/android/apps/translate/Language;
    .end local v2           #i$:I
    .end local v4           #language:Lcom/google/android/apps/translate/Language;
    .end local v5           #len$:I
    :cond_24
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 721
    :cond_2c
    const/4 v8, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    const-class v10, Lcom/google/android/apps/translate/ExtTypefaceSpan;

    invoke-interface {p0, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/apps/translate/ExtTypefaceSpan;

    .line 722
    .local v7, spans:[Lcom/google/android/apps/translate/ExtTypefaceSpan;
    if-eqz v7, :cond_61

    .line 723
    move-object v1, v7

    .local v1, arr$:[Lcom/google/android/apps/translate/ExtTypefaceSpan;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3e
    if-ge v2, v5, :cond_61

    aget-object v6, v1, v2

    .local v6, span:Lcom/google/android/apps/translate/ExtTypefaceSpan;
    invoke-interface {p0, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 728
    .end local v1           #arr$:[Lcom/google/android/apps/translate/ExtTypefaceSpan;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #span:Lcom/google/android/apps/translate/ExtTypefaceSpan;
    .end local v7           #spans:[Lcom/google/android/apps/translate/ExtTypefaceSpan;
    :cond_48
    new-instance v0, Lcom/google/android/apps/translate/Util$3;

    invoke-direct {v0, p2}, Lcom/google/android/apps/translate/Util$3;-><init>(Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 774
    .local v0, applier:Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/Language;

    .line 775
    .restart local v4       #language:Lcom/google/android/apps/translate/Language;
    invoke-virtual {v0, p0, v4}, Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;->applyLanguageSpans(Landroid/text/Spannable;Lcom/google/android/apps/translate/Language;)V

    goto :goto_51

    .line 777
    .end local v0           #applier:Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #language:Lcom/google/android/apps/translate/Language;
    :cond_61
    return-void
.end method

.method public static detectAndSetFonts(Landroid/widget/TextView;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V
    .registers 7
    .parameter "view"
    .parameter "langs"
    .parameter "type"

    .prologue
    .line 677
    const/4 v2, 0x0

    .line 679
    .local v2, text:Landroid/text/Spannable;
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v2, v0
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_d

    .line 688
    invoke-static {v2, p1, p2}, Lcom/google/android/apps/translate/Util;->detectAndSetFonts(Landroid/text/Spannable;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 689
    :goto_c
    return-void

    .line 680
    :catch_d
    move-exception v1

    .line 684
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_c
.end method

.method public static determineSupportedLanguages(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .parameter "baseLanguage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 958
    .local v1, languageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-static {p0}, Lcom/google/android/apps/translate/Translate;->languages(Ljava/lang/String;)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 963
    :goto_5
    return-object v1

    .line 959
    :catch_6
    move-exception v0

    .line 960
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not initialize Languages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public static filterMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "prefixFilter"
    .parameter "text"

    .prologue
    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 621
    .local v1, pos:I
    packed-switch v1, :pswitch_data_20

    .line 627
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 628
    .local v0, bi:Ljava/text/BreakIterator;
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v2

    .end local v0           #bi:Ljava/text/BreakIterator;
    :goto_1a
    return v2

    .line 623
    :pswitch_1b
    const/4 v2, 0x0

    goto :goto_1a

    .line 625
    :pswitch_1d
    const/4 v2, 0x1

    goto :goto_1a

    .line 621
    nop

    :pswitch_data_20
    .packed-switch -0x1
        :pswitch_1b
        :pswitch_1d
    .end packed-switch
.end method

.method public static findLanguagePosition(Ljava/util/List;Lcom/google/android/apps/translate/Language;)I
    .registers 5
    .parameter
    .parameter "lang"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Lcom/google/android/apps/translate/Language;",
            ")I"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, languageList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 179
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 181
    .end local v0           #i:I
    :goto_13
    return v0

    .line 178
    .restart local v0       #i:I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 181
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "when"

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/translate/Util;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 863
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 864
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 865
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 866
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 869
    const v0, 0x80b00

    .line 874
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_24

    .line 875
    or-int/lit8 v0, v0, 0x14

    .line 887
    :goto_1b
    if-eqz p3, :cond_1f

    .line 888
    or-int/lit8 v0, v0, 0x11

    .line 891
    :cond_1f
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 876
    :cond_24
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2d

    .line 878
    or-int/lit8 v0, v0, 0x10

    goto :goto_1b

    .line 881
    :cond_2d
    or-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static generateAlphaLanguagesFromList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "al"

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/Util;->generateLanguagesFromList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1005
    .local v0, alphaLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alpha-languages supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-object v0
.end method

.method public static generateFromLanguagesFromList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "sl"

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/Util;->generateLanguagesFromList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 976
    .local v0, fromLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from-languages supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-object v0
.end method

.method public static generateLanguagePairText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00bb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateLanguagesFromList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    .local p0, languageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 1014
    .local v3, languages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1015
    .local v0, each:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1016
    .local v2, item:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 1018
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1019
    new-instance v4, Lcom/google/android/apps/translate/Language;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1023
    .end local v0           #each:Ljava/lang/String;
    .end local v2           #item:[Ljava/lang/String;
    :cond_36
    return-object v3
.end method

.method public static generateLongPairText(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->generateLanguagePairText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateToLanguagesFromList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "tl"

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/Util;->generateLanguagesFromList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 991
    .local v0, toLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to-languages supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-object v0
.end method

.method public static generateUserAgentName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidTranslate/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttp(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 527
    const-class v1, Lcom/google/android/apps/translate/Util;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/translate/Util;->sHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_e

    .line 528
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/Util;->sHttpClient:Lorg/apache/http/client/HttpClient;

    .line 530
    :cond_e
    sget-object v0, Lcom/google/android/apps/translate/Util;->sHttpClient:Lorg/apache/http/client/HttpClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 527
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInputSuggestions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .parameter "context"
    .parameter "fromLang"
    .parameter "toLang"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    const/16 v15, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v15, v1}, Lcom/google/android/apps/translate/history/FavoriteDb;->getAllByATime(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 423
    .local v7, favoriteEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/16 v15, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v15, v1}, Lcom/google/android/apps/translate/history/HistoryDb;->getAllByATime(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 427
    .local v8, historyEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_42

    const/4 v13, 0x1

    .line 428
    .local v13, matchFromLang:Z
    :goto_1b
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 429
    .local v5, entryKeys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/util/List;

    const/4 v15, 0x0

    aput-object v7, v6, v15

    const/4 v15, 0x1

    aput-object v8, v6, v15

    .line 432
    .local v6, entrySets:[Ljava/util/List;
    move-object v2, v6

    .local v2, arr$:[Ljava/util/List;
    array-length v12, v2

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v9           #i$:I
    .local v10, i$:I
    :goto_32
    if-ge v10, v12, :cond_73

    aget-object v14, v2, v10

    .line 433
    .local v14, set:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    if-eqz v14, :cond_3e

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_44

    .line 432
    .end local v10           #i$:I
    :cond_3e
    add-int/lit8 v9, v10, 0x1

    .restart local v9       #i$:I
    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto :goto_32

    .line 427
    .end local v2           #arr$:[Ljava/util/List;
    .end local v3           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    .end local v5           #entryKeys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #entrySets:[Ljava/util/List;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #matchFromLang:Z
    .end local v14           #set:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_42
    const/4 v13, 0x0

    goto :goto_1b

    .line 436
    .restart local v2       #arr$:[Ljava/util/List;
    .restart local v3       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    .restart local v5       #entryKeys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6       #entrySets:[Ljava/util/List;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #matchFromLang:Z
    .restart local v14       #set:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_44
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10           #i$:I
    .local v9, i$:Ljava/util/Iterator;
    :cond_48
    :goto_48
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/history/Entry;

    .line 437
    .local v4, entry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {v4}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v11

    .line 438
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_48

    if-eqz v13, :cond_6c

    invoke-virtual {v4}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_48

    .line 440
    :cond_6c
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 445
    .end local v4           #entry:Lcom/google/android/apps/translate/history/Entry;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #key:Ljava/lang/String;
    .end local v14           #set:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    .restart local v10       #i$:I
    :cond_73
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-gt v15, v0, :cond_7e

    .end local v3           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :goto_7d
    return-object v3

    .restart local v3       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_7e
    const/4 v15, 0x0

    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-interface {v3, v15, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_7d
.end method

.method public static getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;
    .registers 5
    .parameter "context"

    .prologue
    .line 634
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->getLanguageList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, languageList:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 637
    new-instance v1, Lcom/google/android/apps/translate/Languages;

    invoke-direct {v1, v0}, Lcom/google/android/apps/translate/Languages;-><init>(Ljava/lang/String;)V

    .line 639
    :goto_f
    return-object v1

    :cond_10
    new-instance v1, Lcom/google/android/apps/translate/Languages;

    invoke-static {}, Lcom/google/android/apps/translate/Languages;->getDefaultFromLanguages()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/translate/Languages;->getDefaultToLanguages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/translate/Languages;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_f
.end method

.method public static getLanguageShortNameByLocale()Ljava/lang/String;
    .registers 1

    .prologue
    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageShortNameByLocale(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .parameter "locale"

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 398
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 399
    const-string v0, "locale is TAIWAN"

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 400
    const-string v0, "zh-TW"

    .line 405
    :goto_29
    return-object v0

    .line 401
    :cond_2a
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 402
    const-string v0, "locale is CHINA"

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 403
    const-string v0, "zh-CN"

    goto :goto_29

    .line 405
    :cond_3a
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static getLanguagesFromServer(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 899
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Util;->getLanguagesFromServer(Landroid/content/Context;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static getLanguagesFromServer(Landroid/content/Context;Ljava/util/Locale;)Z
    .registers 7
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 926
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/Util;->determineSupportedLanguages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 928
    .local v0, languageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_33

    .line 929
    new-instance v2, Lcom/google/android/apps/translate/Languages;

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->generateFromLanguagesFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->generateToLanguagesFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/translate/Languages;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 934
    .local v2, newList:Lcom/google/android/apps/translate/Languages;
    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->isNewLanguageListQualified(Lcom/google/android/apps/translate/Languages;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 935
    invoke-static {v0}, Lcom/google/android/apps/translate/Languages;->setAlphaLanguages(Ljava/util/List;)V

    .line 937
    invoke-virtual {v2}, Lcom/google/android/apps/translate/Languages;->dumpLanguages()Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, newDump:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/Profile;->getLanguageList(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 939
    invoke-static {p0, v1, p1}, Lcom/google/android/apps/translate/Profile;->setLanguageList(Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;)V

    .line 940
    const/4 v3, 0x1

    .line 944
    .end local v1           #newDump:Ljava/lang/String;
    .end local v2           #newList:Lcom/google/android/apps/translate/Languages;
    :goto_32
    return v3

    :cond_33
    const/4 v3, 0x0

    goto :goto_32
.end method

.method public static getLanguagesFromServerAsync(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 908
    new-instance v0, Lcom/google/android/apps/translate/Util$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/Util$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/translate/Util$4;->start()V

    .line 917
    return-void
.end method

.method public static getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I
    .registers 11
    .parameter "context"
    .parameter "baseId"
    .parameter "language"

    .prologue
    const/16 v6, 0x5f

    const/4 v7, 0x0

    .line 1043
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1044
    .local v3, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, languagePostfix:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1048
    .local v0, id:I
    if-nez v0, :cond_63

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_63

    .line 1050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1052
    :cond_63
    if-nez v0, :cond_66

    .end local p1
    :goto_65
    return p1

    .restart local p1
    :cond_66
    move p1, v0

    goto :goto_65
.end method

.method public static getResponseInputStream(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 477
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_23

    .line 478
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 479
    .local v2, input:Ljava/io/InputStream;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 480
    .local v0, encodingHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_22

    const-string v3, "gzip"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 481
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 485
    .end local v0           #encodingHeader:Lorg/apache/http/Header;
    .end local v2           #input:Ljava/io/InputStream;
    :cond_22
    :goto_22
    return-object v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public static getSdkVersion()I
    .registers 1

    .prologue
    .line 611
    sget v0, Lcom/google/android/apps/translate/Util;->sSdkVersion:I

    return v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 598
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 603
    :goto_10
    return v1

    .line 601
    :catch_11
    move-exception v0

    .line 602
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 290
    :goto_f
    return-object v1

    .line 286
    :catch_10
    move-exception v0

    .line 287
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 288
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_33
    const-string v1, "0.0.0"

    goto :goto_f
.end method

.method public static hasSmsSupport(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 236
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->hasFeatureTelephony(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasSpeechRecognizer(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;Landroid/os/IBinder;)V
    .registers 4
    .parameter "activity"
    .parameter "windowToken"

    .prologue
    .line 317
    const-string v0, "Util"

    const-string v1, "hideSoftInputFromWindow"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 320
    return-void
.end method

.method public static isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z
    .registers 2
    .parameter "language"

    .prologue
    .line 453
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isAutoDetectLanguage(Ljava/lang/String;)Z
    .registers 2
    .parameter "shortName"

    .prologue
    .line 460
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFloatingActivity(Landroid/app/Activity;)Z
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 1119
    if-nez p0, :cond_4

    .line 1127
    :cond_3
    :goto_3
    return v1

    .line 1126
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1127
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public static isHoneycombCompatible()Z
    .registers 2

    .prologue
    .line 198
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isNewLanguageListQualified(Lcom/google/android/apps/translate/Languages;)Z
    .registers 3
    .parameter "newList"

    .prologue
    const/16 v1, 0x32

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/apps/translate/Languages;->getSupportedFromLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/apps/translate/Languages;->getSupportedToLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_18

    .line 1029
    const/4 v0, 0x1

    .line 1031
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static isSelectLanguage(Ljava/lang/String;)Z
    .registers 2
    .parameter "shortName"

    .prologue
    .line 468
    const-string v0, "select"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStarredTranslation(Landroid/app/Activity;Lcom/google/android/apps/translate/history/Entry;)Z
    .registers 3
    .parameter "activity"
    .parameter "translationEntry"

    .prologue
    .line 310
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/history/FavoriteDb;->contains(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)Z

    move-result v0

    return v0
.end method

.method public static languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5
    .parameter "shortName"

    .prologue
    .line 380
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 381
    .local v0, pos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_e
    return-object v1

    :cond_f
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .registers 7
    .parameter "userAgent"

    .prologue
    .line 541
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 542
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 545
    .local v2, params:Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 548
    const-string v3, "http.connection-manager.factory-object"

    new-instance v4, Lcom/google/android/apps/translate/Util$2;

    invoke-direct {v4}, Lcom/google/android/apps/translate/Util$2;-><init>()V

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, defaultHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Accept-Charset"

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    const-string v3, "http.default-headers"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 563
    invoke-static {v0, p0}, Lcom/google/android/apps/translate/Util;->setUserAgentToHttpClient(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V

    .line 564
    return-object v0
.end method

.method public static openConversationActivity(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 5
    .parameter "activity"
    .parameter "translateEntry"

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/conversation/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 221
    const-string v1, "key_current_translation"

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_14
    iget-object v1, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v1, :cond_1f

    .line 224
    const-string v1, "key_language_from"

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 226
    :cond_1f
    iget-object v1, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v1, :cond_2a

    .line 227
    const-string v1, "key_language_to"

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 229
    :cond_2a
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method public static openFavoriteActivity(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/history/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v1, "flush_on_pause"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public static openHistoryActivity(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/history/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "history"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string v1, "flush_on_pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method public static openHomeActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method public static openSmsTranslationActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/SmsPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xaa

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    return-void
.end method

.method public static openSupersizeTextActivity(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
    .registers 8
    .parameter "activity"
    .parameter "translateEntry"
    .parameter "triggeredByGesture"

    .prologue
    .line 252
    if-nez p1, :cond_3

    .line 266
    :goto_2
    return-void

    .line 255
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/translate/SupersizeTextActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    const-string v2, "key_translate_text"

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "key_text_input"

    iget-object v3, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "key_language_to"

    iget-object v3, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    const-string v2, "key_language_from"

    iget-object v3, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 262
    const-string v2, "key_supersize_by_gesture"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 264
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SUPERSIZE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    goto :goto_2
.end method

.method public static openTranslateActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 343
    const-class v0, Lcom/google/android/apps/translate/translation/TranslateActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/translate/HomeActivity;

    if-ne v0, v1, :cond_10

    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->setNoTransitionAnimation(Landroid/content/Intent;)V

    .line 348
    :cond_10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method public static openTranslateActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "activity"
    .parameter "inputText"
    .parameter "outputText"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/translation/TranslateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_text_input"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "key_text_output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "key_language_from"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "key_language_to"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/translate/HomeActivity;

    if-ne v1, v2, :cond_26

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->setNoTransitionAnimation(Landroid/content/Intent;)V

    .line 336
    :cond_26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public static readStringFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 8
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, input:Ljava/io/InputStream;
    :try_start_2
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getResponseInputStream(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v2

    .line 495
    if-eqz v2, :cond_3d

    .line 496
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v3, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 497
    .local v3, reader:Ljava/io/InputStreamReader;
    const/16 v6, 0x200

    new-array v0, v6, [C

    .line 498
    .local v0, buf:[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v1, builder:Ljava/lang/StringBuilder;
    :goto_18
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, size:I
    const/4 v6, -0x1

    if-le v4, v6, :cond_2b

    .line 501
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_45

    goto :goto_18

    .line 505
    .end local v0           #buf:[C
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .end local v4           #size:I
    :catch_24
    move-exception v6

    .line 510
    if-eqz v2, :cond_2a

    .line 512
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_55

    .line 518
    :cond_2a
    :goto_2a
    return-object v5

    .line 503
    .restart local v0       #buf:[C
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    .restart local v4       #size:I
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_35

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_34} :catch_24
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_34} :catch_45

    move-result-object v5

    .line 510
    :cond_35
    if-eqz v2, :cond_2a

    .line 512
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2a

    .line 513
    :catch_3b
    move-exception v6

    goto :goto_2a

    .line 510
    .end local v0           #buf:[C
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .end local v4           #size:I
    :cond_3d
    if-eqz v2, :cond_2a

    .line 512
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_2a

    .line 513
    :catch_43
    move-exception v6

    goto :goto_2a

    .line 507
    :catch_45
    move-exception v6

    .line 510
    if-eqz v2, :cond_2a

    .line 512
    :try_start_48
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_2a

    .line 513
    :catch_4c
    move-exception v6

    goto :goto_2a

    .line 510
    :catchall_4e
    move-exception v5

    if-eqz v2, :cond_54

    .line 512
    :try_start_51
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_57

    .line 515
    :cond_54
    :goto_54
    throw v5

    .line 513
    :catch_55
    move-exception v6

    goto :goto_2a

    :catch_57
    move-exception v6

    goto :goto_54
.end method

.method public static searchTextOnWeb(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V
    .registers 8
    .parameter "activity"
    .parameter "queryText"
    .parameter "chipPart"

    .prologue
    .line 1086
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1087
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    const-string v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    :try_start_f
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1091
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v3

    sget-object v2, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    if-ne p2, v2, :cond_21

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    :goto_1c
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 1098
    :goto_20
    return-void

    .line 1091
    :cond_21
    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SEARCH_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_23} :catch_24

    goto :goto_1c

    .line 1094
    :catch_24
    move-exception v0

    .line 1095
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/apps/translate/R$string;->msg_error_intent_web_search:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;)V

    .line 1096
    sget v2, Lcom/google/android/apps/translate/R$string;->msg_error_intent_web_search:I

    invoke-static {p0, v2}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;I)V

    goto :goto_20
.end method

.method private static setNoTransitionAnimation(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 352
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setIntentNoAnimation(Landroid/content/Intent;)V

    .line 353
    const-string v0, "key_no_transition_animation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    return-void
.end method

.method public static setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter "view"
    .parameter "text"
    .parameter "langs"

    .prologue
    .line 650
    sget-object v0, Lcom/google/android/apps/translate/Constants$AppearanceType;->UNCHANGED:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 651
    return-void
.end method

.method public static setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V
    .registers 5
    .parameter "view"
    .parameter "text"
    .parameter "langs"
    .parameter "type"

    .prologue
    .line 663
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 664
    .local v0, ss:Landroid/text/SpannableString;
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/translate/Util;->detectAndSetFonts(Landroid/text/Spannable;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V

    .line 665
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    return-void
.end method

.method public static setUserAgentToHttpClient(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V
    .registers 5
    .parameter "client"
    .parameter "userAgent"

    .prologue
    .line 574
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 577
    .local v0, params:Lorg/apache/http/params/HttpParams;
    if-nez p1, :cond_a

    .line 578
    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object p1

    .line 580
    :cond_a
    const-string v1, "gzip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (gzip)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    :cond_26
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public static showLongToastMessage(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static showLongToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/translate/Util;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public static showNetworkTtsError(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "error"

    .prologue
    .line 1062
    packed-switch p1, :pswitch_data_18

    .line 1074
    :goto_3
    return-void

    .line 1064
    :pswitch_4
    sget v0, Lcom/google/android/apps/translate/R$string;->msg_network_tts_error:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 1069
    :pswitch_e
    sget v0, Lcom/google/android/apps/translate/R$string;->msg_network_tts_too_long:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 1062
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method public static showShortToastMessage(Landroid/app/Activity;I)V
    .registers 3
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static showShortToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/translate/Util;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method private static showToastMessage(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4
    .parameter "activity"
    .parameter "message"
    .parameter "duration"

    .prologue
    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    :goto_6
    return-void

    .line 129
    :cond_7
    new-instance v0, Lcom/google/android/apps/translate/Util$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/translate/Util$1;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static splitTranslateResult(Lcom/google/android/apps/translate/history/Entry;)[Ljava/lang/String;
    .registers 4
    .parameter "entry"

    .prologue
    .line 156
    if-nez p0, :cond_b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->splitTranslateResult(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static splitTranslateResult(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "resultText"

    .prologue
    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static toggleStarredTranslation(Landroid/app/Activity;ZLcom/google/android/apps/translate/history/Entry;)V
    .registers 3
    .parameter "activity"
    .parameter "isStarred"
    .parameter "translationEntry"

    .prologue
    .line 299
    if-eqz p1, :cond_6

    .line 300
    invoke-static {p0, p2}, Lcom/google/android/apps/translate/history/FavoriteDb;->add(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)V

    .line 304
    :goto_5
    return-void

    .line 302
    :cond_6
    invoke-static {p0, p2}, Lcom/google/android/apps/translate/history/FavoriteDb;->remove(Landroid/content/Context;Lcom/google/android/apps/translate/history/Entry;)V

    goto :goto_5
.end method
