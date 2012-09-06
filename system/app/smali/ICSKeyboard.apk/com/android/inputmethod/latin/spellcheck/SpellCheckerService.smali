.class public abstract Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;
.super Landroid/app/Service;
.source "SpellCheckerService.java"


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textservice.SpellCheckerService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-class v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;->mBinder:Landroid/os/IBinder;

    .line 57
    return-void
.end method


# virtual methods
.method public abstract createSession()Lcom/android/inputmethod/latin/spellcheck/Session;
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    const-string v0, "en"

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public abstract onGetSuggestions(Lcom/android/inputmethod/latin/spellcheck/TextInfo;I)Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
.end method

.method public onGetSuggestionsMultiple([Lcom/android/inputmethod/latin/spellcheck/TextInfo;IZ)[Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    .registers 8
    .parameter "textInfos"
    .parameter "suggestionsLimit"
    .parameter "sequentialWords"

    .prologue
    .line 125
    array-length v1, p1

    .line 126
    .local v1, length:I
    new-array v2, v1, [Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    .line 127
    .local v2, retval:[Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_7

    .line 132
    return-object v2

    .line 128
    :cond_7
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, p2}, Lcom/android/inputmethod/latin/spellcheck/SpellCheckerService;->onGetSuggestions(Lcom/android/inputmethod/latin/spellcheck/TextInfo;I)Lcom/android/inputmethod/latin/spellcheck/SuggestionsInfo;

    move-result-object v3

    aput-object v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
