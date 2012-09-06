.class public Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "InputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    }
.end annotation


# instance fields
.field private mLocaleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedLanguages:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mLocaleMap:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method private get5Code(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .parameter "locale"

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, country:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, ""

    :goto_19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method

.method private hasDictionaryOrLayout(Ljava/util/Locale;)Landroid/util/Pair;
    .registers 13
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 180
    if-nez p1, :cond_e

    new-instance v7, Landroid/util/Pair;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    :goto_d
    return-object v7

    .line 181
    :cond_e
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 182
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {v4, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v6

    .line 183
    .local v6, saveLocale:Ljava/util/Locale;
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->getDictionaryId(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/Long;

    move-result-object v0

    .line 184
    .local v0, dictionaryId:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 187
    .local v1, hasLayout:Z
    :try_start_1b
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, localeStr:Ljava/lang/String;
    const v7, 0x7f05000c

    .line 188
    invoke-static {p0, v7}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;->parseKeyboardLocale(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v9, ","

    const/4 v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, layoutCountryCodes:[Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3a

    array-length v7, v2

    if-lez v7, :cond_3a

    .line 191
    array-length v9, v2
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_37} :catch_56
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_37} :catch_54

    move v7, v8

    :goto_38
    if-lt v7, v9, :cond_47

    .line 201
    .end local v2           #layoutCountryCodes:[Ljava/lang/String;
    .end local v3           #localeStr:Ljava/lang/String;
    :cond_3a
    :goto_3a
    invoke-static {v4, v6}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 202
    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 191
    .restart local v2       #layoutCountryCodes:[Ljava/lang/String;
    .restart local v3       #localeStr:Ljava/lang/String;
    :cond_47
    :try_start_47
    aget-object v5, v2, v7

    .line 192
    .local v5, s:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_4c} :catch_56
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_54

    move-result v8

    if-eqz v8, :cond_51

    .line 193
    const/4 v1, 0x1

    .line 194
    goto :goto_3a

    .line 191
    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 199
    .end local v2           #layoutCountryCodes:[Ljava/lang/String;
    .end local v3           #localeStr:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/String;
    :catch_54
    move-exception v7

    goto :goto_3a

    .line 198
    :catch_56
    move-exception v7

    goto :goto_3a
.end method

.method private isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z
    .registers 6
    .parameter "locale"
    .parameter "list"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, lang:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p2

    if-lt v0, v2, :cond_a

    .line 176
    const/4 v2, 0x0

    :goto_9
    return v2

    .line 174
    :cond_a
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    .line 173
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method getUniqueLocales()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 280
    const-string v5, "en,iw,ar,bg,pl,ca,ch,cs,de,da,eo,es,fi,fr,fr_ca,fr_ch,it,ka,lt,la,lv,nl,pt,ru,pl,sk,sl,sv,uk,ro,no,nb,el,sr,hu,fa,tk"

    .line 282
    .local v5, languageList:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, SplitedLanguageList:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v7, uniqueLocales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;>;"
    array-length v1, v2

    .line 285
    .local v1, LanguageCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    if-lt v3, v1, :cond_14

    .line 304
    return-object v7

    .line 288
    :cond_14
    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v13, :cond_4a

    .line 290
    new-instance v4, Ljava/util/Locale;

    aget-object v8, v2, v3

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 291
    aget-object v9, v2, v3

    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 290
    invoke-direct {v4, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v4, l:Ljava/util/Locale;
    :goto_37
    invoke-virtual {v4, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, Lang:Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    invoke-static {v4, v12}, Lcom/android/inputmethod/latin/Utils;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 301
    .local v6, preprocess:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 295
    .end local v0           #Lang:Ljava/lang/String;
    .end local v4           #l:Ljava/util/Locale;
    .end local v6           #preprocess:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    :cond_4a
    new-instance v4, Ljava/util/Locale;

    aget-object v8, v2, v3

    invoke-direct {v4, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v4       #l:Ljava/util/Locale;
    goto :goto_37
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "icicle"

    .prologue
    .line 86
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v21, 0x7f05002d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->addPreferencesFromResource(I)V

    .line 88
    invoke-static {}, LDictionaryPackage/DicatinaryPackage;->resetBuildersCache()V

    .line 90
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "selected_languages"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 93
    .local v12, languageList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v2

    .line 94
    .local v2, availableLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 95
    .local v19, parent:Landroid/preference/PreferenceGroup;
    new-instance v7, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 96
    .local v7, getFromMarket:Landroid/preference/Preference;
    const v21, 0x7f0c0139

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 97
    const v21, 0x7f0c013a

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 98
    new-instance v21, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$1;-><init>(Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v5, dictionaryIdLocaleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;>;"
    new-instance v16, Ljava/util/TreeMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeMap;-><init>()V

    .line 114
    .local v16, localeHasDictionaryMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;Ljava/lang/Boolean;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v11, v0, :cond_9c

    .line 149
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_87
    :goto_87
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_101

    .line 155
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_95
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_11e

    .line 169
    return-void

    .line 115
    :cond_9c
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 116
    .local v13, loc:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    iget-object v14, v13, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLocale:Ljava/util/Locale;

    .line 117
    .local v14, locale:Ljava/util/Locale;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->hasDictionaryOrLayout(Ljava/util/Locale;)Landroid/util/Pair;

    move-result-object v9

    .line 118
    .local v9, hasDictionaryOrLayout:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iget-object v4, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 119
    .local v4, dictionaryId:Ljava/lang/Long;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v10, 0x1

    .line 120
    .local v10, hasLayout:Z
    if-eqz v4, :cond_c2

    const/4 v8, 0x1

    .line 125
    .local v8, hasDictionary:Z
    :goto_bb
    if-nez v10, :cond_c4

    if-nez v8, :cond_c4

    .line 114
    :cond_bf
    :goto_bf
    add-int/lit8 v11, v11, 0x1

    goto :goto_77

    .line 120
    .end local v8           #hasDictionary:Z
    :cond_c2
    const/4 v8, 0x0

    goto :goto_bb

    .line 128
    .restart local v8       #hasDictionary:Z
    :cond_c4
    if-eqz v10, :cond_d1

    .line 129
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_d1
    if-eqz v8, :cond_bf

    .line 134
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_fd

    .line 135
    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    .line 137
    .local v17, newLocale:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLocale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v18

    .line 139
    .local v18, oldLocale:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_fd

    if-eqz v10, :cond_bf

    .line 146
    .end local v17           #newLocale:Ljava/lang/String;
    .end local v18           #oldLocale:Ljava/lang/String;
    :cond_fd
    invoke-virtual {v5, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bf

    .line 149
    .end local v4           #dictionaryId:Ljava/lang/Long;
    .end local v8           #hasDictionary:Z
    .end local v9           #hasDictionaryOrLayout:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v10           #hasLayout:Z
    .end local v13           #loc:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    .end local v14           #locale:Ljava/util/Locale;
    :cond_101
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 150
    .local v15, localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_87

    .line 151
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_87

    .line 155
    .end local v15           #localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    :cond_11e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 156
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;

    .line 157
    .restart local v15       #localeEntry:Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;
    iget-object v14, v15, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLocale:Ljava/util/Locale;

    .line 158
    .restart local v14       #locale:Ljava/util/Locale;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 159
    .local v8, hasDictionary:Ljava/lang/Boolean;
    new-instance v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 160
    .local v20, pref:Landroid/preference/CheckBoxPreference;
    #getter for: Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->mLabel:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;->access$0(Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection$LocaleEntry;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z

    move-result v3

    .line 162
    .local v3, checked:Z
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_161

    .line 164
    const v22, 0x7f0c00f1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 166
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mLocaleMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_95
.end method

.method protected onPause()V
    .registers 9

    .prologue
    .line 218
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 220
    const-string v0, ""

    .line 221
    .local v0, checkedLanguages:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 222
    .local v4, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 223
    .local v1, count:I
    const/4 v3, 0x1

    .local v3, i:I
    :goto_e
    if-lt v3, v1, :cond_27

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_18

    const/4 v0, 0x0

    .line 230
    :cond_18
    iget-object v6, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 231
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "selected_languages"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-static {v2}, Lcom/android/inputmethod/compat/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 233
    return-void

    .line 224
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_27
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 225
    .local v5, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->mLocaleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    invoke-direct {p0, v6}, Lcom/android/inputmethod/deprecated/languageswitcher/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 214
    return-void
.end method
