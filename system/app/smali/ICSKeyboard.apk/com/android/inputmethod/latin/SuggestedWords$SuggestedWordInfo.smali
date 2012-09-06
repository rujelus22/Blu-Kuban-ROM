.class public Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestedWordInfo"
.end annotation


# instance fields
.field private final mDebugString:Ljava/lang/CharSequence;

.field private final mPreviousSuggestedWord:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mPreviousSuggestedWord:Z

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 3
    .parameter "debugString"
    .parameter "previousSuggestedWord"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    .line 216
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mPreviousSuggestedWord:Z

    .line 217
    return-void
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    .line 221
    const-string v0, ""

    .line 223
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public isObsoleteSuggestedWord()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mPreviousSuggestedWord:Z

    return v0
.end method
