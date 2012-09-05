.class Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "HtmlUtils.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;,
        Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;
    }
.end annotation


# static fields
.field private static COLORS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_SIZES:[F


# instance fields
.field private mImageGetter:Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 437
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->HEADER_SIZES:[F

    .line 914
    invoke-static {}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->buildColorMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->COLORS:Ljava/util/HashMap;

    return-void

    .line 437
    nop

    :array_10
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x3ft
        0x33t 0x33t 0xb3t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0xcdt 0xcct 0x8ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private static buildColorMap()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string v1, "maroon"

    const/high16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v1, "red"

    const/high16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    return-object v0
.end method

.method private static end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7
    .parameter "text"
    .parameter "kind"
    .parameter "repl"

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 653
    .local v0, len:I
    invoke-static {p0, p1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 654
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 656
    .local v2, where:I
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 658
    if-eq v2, v0, :cond_16

    .line 659
    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 662
    :cond_16
    return-void
.end method

.method private static endA(Landroid/text/SpannableStringBuilder;)V
    .registers 5
    .parameter

    .prologue
    .line 752
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 753
    const-class v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;

    invoke-static {p0, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 754
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 756
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 758
    if-eq v2, v1, :cond_25

    .line 759
    check-cast v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;

    .line 761
    iget-object v3, v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 762
    new-instance v3, Landroid/text/style/URLSpan;

    iget-object v0, v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x21

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 765
    :cond_25
    return-void
.end method

.method private static endBullet(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7
    .parameter "text"
    .parameter "kind"
    .parameter "repl"

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 667
    .local v0, len:I
    invoke-static {p0, p1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 668
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 670
    .local v2, where:I
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 672
    if-eq v2, v0, :cond_1b

    .line 673
    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 674
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 677
    :cond_1b
    return-void
.end method

.method private static endFont(Landroid/text/SpannableStringBuilder;)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v9, 0x21

    .line 709
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 710
    const-class v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;

    invoke-static {p0, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 711
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 713
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 715
    if-eq v8, v7, :cond_5d

    move-object v6, v0

    .line 716
    check-cast v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;

    .line 718
    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 719
    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 720
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 721
    iget-object v3, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 722
    const-string v4, "color"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 723
    if-eqz v3, :cond_4f

    .line 724
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 725
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 737
    :cond_4f
    :goto_4f
    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 738
    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v1, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 742
    :cond_5d
    return-void

    .line 729
    :cond_5e
    iget-object v0, v6, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v0

    .line 730
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4f

    .line 731
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x100

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4f
.end method

.method private static endHeader(Landroid/text/SpannableStringBuilder;)V
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x21

    .line 768
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 769
    const-class v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;

    invoke-static {p0, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 771
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 773
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 776
    :goto_13
    if-le v1, v2, :cond_22

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_22

    .line 777
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 780
    :cond_22
    if-eq v2, v1, :cond_3f

    .line 781
    check-cast v0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;

    .line 783
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    sget-object v4, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->HEADER_SIZES:[F

    #getter for: Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->mLevel:I
    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;->access$900(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;)I

    move-result v0

    aget v0, v4, v0

    invoke-direct {v3, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v3, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 785
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 788
    :cond_3f
    return-void
.end method

.method private static getHtmlColor(Ljava/lang/String;)I
    .registers 6
    .parameter "color"

    .prologue
    const/4 v2, -0x1

    .line 945
    sget-object v3, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->COLORS:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 946
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_14

    .line 947
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 952
    :goto_13
    return v2

    .line 950
    :cond_14
    const/4 v3, -0x1

    :try_start_15
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v2

    goto :goto_13

    .line 951
    :catch_1a
    move-exception v1

    .line 952
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_13
.end method

.method private static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter "text"
    .parameter "kind"

    .prologue
    .line 637
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 639
    .local v0, objs:[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_e

    .line 640
    const/4 v1, 0x0

    .line 642
    :goto_d
    return-object v1

    :cond_e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_d
.end method

.method private static handleBr(Landroid/text/SpannableStringBuilder;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 629
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 630
    return-void
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 563
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 564
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleBr(Landroid/text/SpannableStringBuilder;)V

    .line 609
    :cond_10
    :goto_10
    return-void

    .line 565
    :cond_11
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 566
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_10

    .line 567
    :cond_1f
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 568
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_10

    .line 569
    :cond_2d
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 570
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_10

    .line 571
    :cond_42
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 572
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_10

    .line 573
    :cond_57
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 574
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_10

    .line 575
    :cond_6c
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 576
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_10

    .line 577
    :cond_81
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 578
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 579
    :cond_97
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 580
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 581
    :cond_ad
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 582
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa0

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 583
    :cond_c5
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 584
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 585
    :cond_de
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 586
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endFont(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_10

    .line 587
    :cond_ed
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 588
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 589
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 590
    :cond_108
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 591
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 592
    :cond_120
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endA(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_10

    .line 594
    :cond_12f
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 595
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 596
    :cond_145
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 597
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 598
    :cond_15b
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 599
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->end(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 600
    :cond_171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_19f

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_19f

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_19f

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_19f

    .line 602
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 603
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endHeader(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_10

    .line 604
    :cond_19f
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 605
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/style/BulletSpan;

    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->endBullet(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 606
    :cond_1b5
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    if-eqz v0, :cond_10

    .line 607
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    iget-object v1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v5, p1, v1, v2}, Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_10
.end method

.method private static handleP(Landroid/text/SpannableStringBuilder;)V
    .registers 4
    .parameter "text"

    .prologue
    const/16 v2, 0xa

    .line 612
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 614
    .local v0, len:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_23

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_23

    .line 615
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1d

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1d

    .line 626
    :cond_1c
    :goto_1c
    return-void

    .line 619
    :cond_1d
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1c

    .line 623
    :cond_23
    if-eqz v0, :cond_1c

    .line 624
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1c
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "tag"
    .parameter "attributes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 509
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 560
    :cond_a
    :goto_a
    return-void

    .line 514
    :cond_b
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 515
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_a

    .line 516
    :cond_19
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 517
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    goto :goto_a

    .line 518
    :cond_27
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 519
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_a

    .line 520
    :cond_3a
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 521
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Bold;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_a

    .line 522
    :cond_4d
    const-string v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 523
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_a

    .line 524
    :cond_60
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 525
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_a

    .line 526
    :cond_73
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 527
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_a

    .line 528
    :cond_86
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 529
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Italic;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 530
    :cond_9a
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 531
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Big;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 532
    :cond_ae
    const-string v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 533
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Small;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 534
    :cond_c2
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 535
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_a

    .line 536
    :cond_d1
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 537
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 538
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Blockquote;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 539
    :cond_ea
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Monospace;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 541
    :cond_fe
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 542
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_a

    .line 543
    :cond_10d
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 544
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Underline;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 545
    :cond_121
    const-string v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 546
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Super;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 547
    :cond_135
    const-string v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 548
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Sub;-><init>(Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$1;)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 549
    :cond_149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_184

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_184

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_184

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_184

    .line 551
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleP(Landroid/text/SpannableStringBuilder;)V

    .line 552
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Header;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 553
    :cond_184
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 554
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mImageGetter:Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;

    invoke-static {v0, p2, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;)V

    goto/16 :goto_a

    .line 555
    :cond_195
    const-string v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 556
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 557
    :cond_1a9
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    if-eqz v0, :cond_a

    .line 558
    iget-object v0, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mTagHandler:Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;

    iget-object v1, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Lcom/android/email/activity/utils/html/HtmlUtils$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    goto/16 :goto_a
.end method

.method private static start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .registers 4
    .parameter "text"
    .parameter "mark"

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 648
    .local v0, len:I
    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 649
    return-void
.end method

.method private static startA(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 745
    const-string v2, ""

    const-string v3, "href"

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, href:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 748
    .local v1, len:I
    new-instance v2, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;

    invoke-direct {v2, v0}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v1, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 749
    return-void
.end method

.method private static startFont(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 701
    const-string v3, ""

    const-string v4, "color"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, color:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "face"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, face:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 705
    .local v2, len:I
    new-instance v3, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;

    invoke-direct {v3, v0, v1}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-virtual {p0, v3, v2, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 706
    return-void
.end method

.method private static startImg(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;)V
    .registers 9
    .parameter "text"
    .parameter "attributes"
    .parameter "img"

    .prologue
    const/4 v5, 0x0

    .line 682
    const-string v3, ""

    const-string v4, "src"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, src:Ljava/lang/String;
    const/4 v0, 0x0

    .line 685
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_10

    .line 686
    invoke-interface {p2, v2}, Lcom/android/email/activity/utils/html/HtmlUtils$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 689
    :cond_10
    if-nez v0, :cond_28

    .line 690
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 694
    :cond_28
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 695
    .local v1, len:I
    const-string v3, "\ufffc"

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 697
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 698
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 13
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x20

    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, p3, :cond_42

    .line 823
    add-int v5, v1, p2

    aget-char v0, p1, v5

    .line 825
    .local v0, c:C
    if-eq v0, v7, :cond_14

    if-ne v0, v8, :cond_3e

    .line 827
    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 829
    .local v2, len:I
    if-nez v2, :cond_37

    .line 830
    iget-object v5, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 832
    if-nez v2, :cond_2e

    .line 833
    const/16 v3, 0xa

    .line 841
    .local v3, pred:C
    :goto_24
    if-eq v3, v7, :cond_2b

    if-eq v3, v8, :cond_2b

    .line 842
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 822
    .end local v2           #len:I
    .end local v3           #pred:C
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 835
    .restart local v2       #len:I
    :cond_2e
    iget-object v5, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .restart local v3       #pred:C
    goto :goto_24

    .line 838
    .end local v3           #pred:C
    :cond_37
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .restart local v3       #pred:C
    goto :goto_24

    .line 845
    .end local v2           #len:I
    .end local v3           #pred:C
    :cond_3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 849
    .end local v0           #c:C
    :cond_42
    iget-object v5, p0, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 850
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 797
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-direct {p0, p2}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 803
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 853
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 856
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 791
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 859
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 794
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-direct {p0, p2, p4}, Lcom/android/email/activity/utils/html/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 808
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 800
    return-void
.end method
