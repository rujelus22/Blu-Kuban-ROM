.class public Lcom/vlingo/client/keyboard/NBestSuggest;
.super Lcom/android/inputmethod/latin/Suggest;
.source "NBestSuggest.java"


# static fields
.field public static s_MainDictRes:I

.field private static s_Me:Lcom/vlingo/client/keyboard/NBestSuggest;

.field private static s_NBest:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_NBest:Ljava/util/Vector;

    .line 24
    sput-object v0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_Me:Lcom/vlingo/client/keyboard/NBestSuggest;

    .line 26
    const v0, 0x7f060009

    sput v0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_MainDictRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "dictionaryResId"

    .prologue
    .line 29
    sget-boolean v0, Lcom/vlingo/client/keyboard/VlingoLatinIM;->s_MainDict:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_MainDictRes:I

    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;I)V

    .line 30
    sput-object p0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_Me:Lcom/vlingo/client/keyboard/NBestSuggest;

    .line 31
    return-void

    .line 29
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static disable(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5
    .parameter "sp"
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_11

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_11
    return-void
.end method

.method public static disableSuggestion()V
    .registers 2

    .prologue
    .line 82
    const/4 v1, 0x0

    sput v1, Lcom/vlingo/client/keyboard/NBestSuggest;->s_MainDictRes:I

    .line 83
    sget-object v1, Lcom/vlingo/client/keyboard/VlingoLatinIM;->sm_Me:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "auto_complete"

    invoke-static {v0, v1}, Lcom/vlingo/client/keyboard/NBestSuggest;->disable(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private inSuggestions(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .parameter "choice"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 66
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 67
    .local v1, seq:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 68
    const/4 v2, 0x1

    .line 70
    .end local v1           #seq:Ljava/lang/CharSequence;
    :goto_18
    return v2

    .line 65
    .restart local v1       #seq:Ljava/lang/CharSequence;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v1           #seq:Ljava/lang/CharSequence;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public static setMainDict(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 34
    sget-object v1, Lcom/vlingo/client/keyboard/NBestSuggest;->s_Me:Lcom/vlingo/client/keyboard/NBestSuggest;

    if-eqz p0, :cond_a

    sget v0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_MainDictRes:I

    :goto_6
    invoke-virtual {v1, v0}, Lcom/vlingo/client/keyboard/NBestSuggest;->reloadMainDict(I)V

    .line 35
    return-void

    .line 34
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static setNBestVector(Ljava/util/Vector;)V
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, nbestList:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    sput-object p0, Lcom/vlingo/client/keyboard/NBestSuggest;->s_NBest:Ljava/util/Vector;

    .line 62
    return-void
.end method


# virtual methods
.method public getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Z)Ljava/util/List;
    .registers 14
    .parameter "view"
    .parameter "wordComposer"
    .parameter "includeTypedWordIfValid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Z)Ljava/util/List;

    move-result-object v3

    .line 43
    .local v3, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v5

    .line 44
    .local v5, wordSeq:Ljava/lang/CharSequence;
    if-eqz v5, :cond_46

    .line 45
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, word:Ljava/lang/String;
    sget-object v7, Lcom/vlingo/client/keyboard/NBestSuggest;->s_NBest:Ljava/util/Vector;

    if-eqz v7, :cond_36

    sget-object v7, Lcom/vlingo/client/keyboard/NBestSuggest;->s_NBest:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    .line 48
    .local v2, nbestChoices:I
    :goto_19
    const/4 v7, 0x1

    if-le v2, v7, :cond_46

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v2, :cond_46

    .line 50
    sget-object v7, Lcom/vlingo/client/keyboard/NBestSuggest;->s_NBest:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, choice:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    invoke-direct {p0, v0, v3}, Lcom/vlingo/client/keyboard/NBestSuggest;->inSuggestions(Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 49
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .end local v0           #choice:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #nbestChoices:I
    :cond_36
    move v2, v6

    .line 46
    goto :goto_19

    .line 53
    .restart local v0       #choice:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #nbestChoices:I
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x64

    invoke-virtual {p0, v7, v6, v8, v9}, Lcom/vlingo/client/keyboard/NBestSuggest;->addWord([CIII)Z

    goto :goto_33

    .line 57
    .end local v0           #choice:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #nbestChoices:I
    .end local v4           #word:Ljava/lang/String;
    :cond_46
    return-object v3
.end method
