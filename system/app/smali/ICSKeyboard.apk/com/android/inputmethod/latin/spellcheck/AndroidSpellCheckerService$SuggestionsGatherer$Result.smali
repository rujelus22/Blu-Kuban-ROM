.class public Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;
.super Ljava/lang/Object;
.source "AndroidSpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final mHasLikelySuggestions:Z

.field public final mSuggestions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 3
    .parameter "gatheredSuggestions"
    .parameter "hasLikelySuggestions"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mSuggestions:[Ljava/lang/String;

    .line 110
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/spellcheck/AndroidSpellCheckerService$SuggestionsGatherer$Result;->mHasLikelySuggestions:Z

    .line 111
    return-void
.end method
