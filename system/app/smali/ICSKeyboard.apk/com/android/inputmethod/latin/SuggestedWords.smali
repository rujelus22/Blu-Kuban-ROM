.class public Lcom/android/inputmethod/latin/SuggestedWords;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/SuggestedWords$Builder;,
        Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;


# instance fields
.field public final mHasAutoCorrectionCandidate:Z

.field public final mIsPunctuationSuggestions:Z

.field private mShouldBlockAutoCorrection:Z

.field private final mSuggestedWordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mTypedWordValid:Z

.field public final mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    move v3, v2

    move v4, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZZLjava/util/List;)V

    sput-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZZLjava/util/List;)V
    .registers 7
    .parameter
    .parameter "typedWordValid"
    .parameter "hasAutoCorrectionCandidate"
    .parameter "isPunctuationSuggestions"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p5, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_13

    .line 42
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    .line 46
    :goto_7
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    .line 47
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    .line 48
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    .line 49
    iput-object p5, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mShouldBlockAutoCorrection:Z

    .line 51
    return-void

    .line 44
    :cond_13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    goto :goto_7
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZZLjava/util/List;Lcom/android/inputmethod/latin/SuggestedWords;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    .registers 3
    .parameter "pos"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getWord(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "pos"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAutoCorrectionWord()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 66
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v1

    if-le v1, v0, :cond_10

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-nez v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hasWordAboveAutoCorrectionScoreThreshold()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 70
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasAutoCorrectionCandidate:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v1

    if-le v1, v0, :cond_f

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v1, :cond_13

    :cond_f
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isPunctuationSuggestions()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mIsPunctuationSuggestions:Z

    return v0
.end method

.method public setShouldBlockAutoCorrection()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mShouldBlockAutoCorrection:Z

    .line 79
    return-void
.end method

.method public shouldBlockAutoCorrection()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mShouldBlockAutoCorrection:Z

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
