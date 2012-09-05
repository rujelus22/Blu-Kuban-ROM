.class public Lcom/swype/android/settings/LanguageChoiceList;
.super Lcom/swype/android/inputmethod/SwypeDialog;
.source "LanguageChoiceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/LanguageChoiceList$LanguageChoiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeDialog;-><init>()V

    .line 68
    return-void
.end method

.method private getLanguageList(Landroid/content/Context;)Lcom/swype/android/jni/SwypeCore$LanguageList;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 88
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v0

    .line 89
    iget-object v1, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v1, v1

    .line 91
    new-instance v2, Ljava/util/TreeMap;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 92
    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->getInstalledLanguageCount(Landroid/content/Context;)I

    move-result v3

    .line 93
    new-instance v4, Lcom/swype/android/jni/SwypeCore$LanguageList;

    invoke-direct {v4}, Lcom/swype/android/jni/SwypeCore$LanguageList;-><init>()V

    .line 94
    if-lez v3, :cond_79

    move v3, v7

    .line 95
    :goto_27
    if-ge v3, v1, :cond_37

    .line 96
    iget-object v5, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 98
    :cond_37
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    .line 99
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    .line 100
    new-array v1, v1, [Z

    iput-object v1, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    .line 101
    iget-object v1, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move v2, v7

    .line 102
    :goto_5e
    iget-object v3, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_78

    .line 103
    iget-object v3, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 104
    if-ltz v3, :cond_75

    .line 105
    iget-object v5, v4, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    iget-object v6, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v3, v6, v3

    aput-boolean v3, v5, v2

    .line 102
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_78
    move-object v0, v4

    .line 111
    :cond_79
    return-object v0
.end method


# virtual methods
.method protected doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getMessageLanguage(Z)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/swype/android/settings/LanguageChoiceList;->getLanguageList(Landroid/content/Context;)Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v1

    .line 37
    iget-object v2, v1, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v2, v2

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v8

    .line 41
    :goto_1e
    if-ge v3, v2, :cond_37

    .line 42
    iget-object v5, v1, Lcom/swype/android/jni/SwypeCore$LanguageList;->isActive:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_34

    .line 43
    iget-object v5, v1, Lcom/swype/android/jni/SwypeCore$LanguageList;->langDisplayNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v5, v1, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 49
    :cond_37
    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 51
    new-instance v0, Lcom/swype/android/settings/LanguageListAdapter;

    new-array v1, v8, [Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const v4, 0x7f030006

    const v5, 0x1020014

    const v6, 0x1020019

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/swype/android/settings/LanguageListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;IIII)V

    .line 55
    new-instance v1, Lcom/swype/android/settings/LanguageChoiceList$LanguageChoiceListener;

    new-array v2, v8, [Ljava/lang/CharSequence;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-direct {v1, p0}, Lcom/swype/android/settings/LanguageChoiceList$LanguageChoiceListener;-><init>([Ljava/lang/CharSequence;)V

    .line 57
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700ae

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
