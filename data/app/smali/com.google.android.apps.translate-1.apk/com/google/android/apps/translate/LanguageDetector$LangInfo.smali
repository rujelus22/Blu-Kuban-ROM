.class Lcom/google/android/apps/translate/LanguageDetector$LangInfo;
.super Ljava/lang/Object;
.source "LanguageDetector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/LanguageDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LangInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/translate/LanguageDetector$LangInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public codePointCount:I

.field public final language:Lcom/google/android/apps/translate/Language;

.field public final scriptIds:[I

.field public final scriptMask:I

.field public final totalCodePointCount:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/Language;[III)V
    .registers 6
    .parameter "lang"
    .parameter "ids"
    .parameter "mask"
    .parameter "count"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->language:Lcom/google/android/apps/translate/Language;

    .line 75
    iput-object p2, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->scriptIds:[I

    .line 76
    iput p3, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->scriptMask:I

    .line 77
    iput p4, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->totalCodePointCount:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->codePointCount:I

    .line 79
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/translate/LanguageDetector$LangInfo;)I
    .registers 5
    .parameter "another"

    .prologue
    .line 88
    iget v1, p1, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->codePointCount:I

    iget v2, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->codePointCount:I

    sub-int v0, v1, v2

    .line 89
    .local v0, diff:I
    if-nez v0, :cond_e

    iget v1, p0, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->totalCodePointCount:I

    iget v2, p1, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->totalCodePointCount:I

    sub-int v0, v1, v2

    .end local v0           #diff:I
    :cond_e
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/LanguageDetector$LangInfo;->compareTo(Lcom/google/android/apps/translate/LanguageDetector$LangInfo;)I

    move-result v0

    return v0
.end method
