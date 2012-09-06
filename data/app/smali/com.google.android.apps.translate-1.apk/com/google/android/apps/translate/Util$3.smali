.class final Lcom/google/android/apps/translate/Util$3;
.super Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/Util;->detectAndSetFonts(Landroid/text/Spannable;[Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Constants$AppearanceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/google/android/apps/translate/Constants$AppearanceType;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/Constants$AppearanceType;)V
    .registers 2
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/google/android/apps/translate/Util$3;->val$type:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguageDetector$LanguageSpanApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public applyLanguageSpan(Landroid/text/Spannable;IILcom/google/android/apps/translate/Language;)V
    .registers 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "language"

    .prologue
    .line 732
    invoke-virtual {p4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/translate/ExternalFonts;->getFontByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/ExternalFonts;

    move-result-object v0

    .line 735
    .local v0, font:Lcom/google/android/apps/translate/ExternalFonts;
    const-class v3, Lcom/google/android/apps/translate/ExtTypefaceSpan;

    invoke-interface {p1, p2, p3, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/translate/ExtTypefaceSpan;

    .line 736
    .local v1, prevSpans:[Lcom/google/android/apps/translate/ExtTypefaceSpan;
    const/4 v2, 0x0

    .line 737
    .local v2, span:Lcom/google/android/apps/translate/ExtTypefaceSpan;
    if-eqz v1, :cond_16

    array-length v3, v1

    if-nez v3, :cond_2b

    .line 738
    :cond_16
    new-instance v2, Lcom/google/android/apps/translate/ExtTypefaceSpan;

    .end local v2           #span:Lcom/google/android/apps/translate/ExtTypefaceSpan;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/ExternalFonts;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/Util$3;->val$type:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/ExternalFonts;->getTextSize(Lcom/google/android/apps/translate/Constants$AppearanceType;)F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/translate/ExtTypefaceSpan;-><init>(Landroid/graphics/Typeface;F)V

    .line 771
    .restart local v2       #span:Lcom/google/android/apps/translate/ExtTypefaceSpan;
    :goto_25
    const/16 v3, 0x21

    invoke-interface {p1, v2, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 772
    return-void

    .line 765
    :cond_2b
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 766
    invoke-virtual {v0}, Lcom/google/android/apps/translate/ExternalFonts;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/Util$3;->val$type:Lcom/google/android/apps/translate/Constants$AppearanceType;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/ExternalFonts;->getTextSize(Lcom/google/android/apps/translate/Constants$AppearanceType;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/translate/ExtTypefaceSpan;->set(Landroid/graphics/Typeface;F)V

    goto :goto_25
.end method
