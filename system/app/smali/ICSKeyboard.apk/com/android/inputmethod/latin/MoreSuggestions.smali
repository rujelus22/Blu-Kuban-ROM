.class public Lcom/android/inputmethod/latin/MoreSuggestions;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final SUGGESTION_CODE_BASE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/MoreSuggestions;->DBG:Z

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;)V
    .registers 2
    .parameter "params"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;Lcom/android/inputmethod/latin/MoreSuggestions;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/MoreSuggestions;-><init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;)V

    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/inputmethod/latin/MoreSuggestions;->DBG:Z

    return v0
.end method
