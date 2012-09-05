.class public Lcom/sec/android/inputmethod/axt9/Hints;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/Hints$Display;
    }
.end annotation


# static fields
.field static final SPEAKABLE_PUNCTUATION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Lcom/sec/android/inputmethod/axt9/Hints$Display;

.field private mPunctuationHintMaxDisplays:I

.field private mSwipeHintMaxDaysToShow:I

.field private mVoiceResultContainedPunctuation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/axt9/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    .line 62
    sget-object v0, Lcom/sec/android/inputmethod/axt9/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, ","

    const-string v2, "comma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/android/inputmethod/axt9/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, "."

    const-string v2, "period"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/android/inputmethod/axt9/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, "?"

    const-string v2, "question mark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/inputmethod/axt9/Hints$Display;)V
    .registers 6
    .parameter "context"
    .parameter "display"

    .prologue
    const/4 v2, 0x7

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mDisplay:Lcom/sec/android/inputmethod/axt9/Hints$Display;

    .line 71
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "latin_ime_voice_input_swipe_hint_max_days"

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mSwipeHintMaxDaysToShow:I

    .line 76
    const-string v1, "latin_ime_voice_input_punctuation_hint_max_displays"

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mPunctuationHintMaxDisplays:I

    .line 80
    return-void
.end method


# virtual methods
.method public registerVoiceResult(Ljava/lang/String;)V
    .registers 8
    .parameter "text"

    .prologue
    .line 108
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "voice_input_last_time_used"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mVoiceResultContainedPunctuation:Z

    .line 114
    sget-object v3, Lcom/sec/android/inputmethod/axt9/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 115
    .local v2, s:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_23

    .line 116
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/Hints;->mVoiceResultContainedPunctuation:Z

    .line 120
    .end local v2           #s:Ljava/lang/CharSequence;
    :cond_3c
    return-void
.end method
