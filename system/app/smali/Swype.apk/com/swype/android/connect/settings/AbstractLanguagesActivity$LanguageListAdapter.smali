.class public Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbstractLanguagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/settings/AbstractLanguagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LanguageListAdapter"
.end annotation


# instance fields
.field protected final checkedLangs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected displayNameToLangCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected langCodeToDisplayNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final languageDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final languageKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swype/android/connect/settings/AbstractLanguagesActivity;


# direct methods
.method public constructor <init>(Lcom/swype/android/connect/settings/AbstractLanguagesActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->this$0:Lcom/swype/android/connect/settings/AbstractLanguagesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    new-instance v0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListComparator;

    invoke-direct {v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListComparator;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->comparator:Ljava/util/Comparator;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->checkedLangs:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->displayNameToLangCodeMap:Ljava/util/HashMap;

    .line 101
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->loadDisplayLanguageMap()V

    .line 102
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 176
    if-gez v0, :cond_32

    .line 177
    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->checkedLangs:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->notifyDataSetChanged()V

    .line 183
    :cond_32
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->loadDisplayLanguageMap()V

    .line 165
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->checkedLangs:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 170
    :cond_2e
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->notifyDataSetChanged()V

    .line 172
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->notifyDataSetChanged()V

    .line 202
    return-void
.end method

.method public getCheck(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, disp:Ljava/lang/String;
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->displayNameToLangCodeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, lang:Ljava/lang/String;
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->checkedLangs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 145
    const/4 v2, 0x0

    .line 147
    .end local p0
    :goto_19
    return v2

    .restart local p0
    :cond_1a
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->checkedLangs:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_19
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 112
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 114
    :goto_11
    return-object v0

    .restart local p0
    :cond_12
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_11
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLanguageKey(I)Ljava/lang/String;
    .registers 4
    .parameter "position"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->displayNameToLangCodeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLanguages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getPosition(Ljava/lang/String;)I
    .registers 5
    .parameter "lang"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 128
    if-nez p2, :cond_1c

    .line 129
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->this$0:Lcom/swype/android/connect/settings/AbstractLanguagesActivity;

    invoke-virtual {v2}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    .end local v0           #label:Landroid/widget/TextView;
    :cond_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 135
    .local v0, label:Landroid/widget/CheckedTextView;
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, lang:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getCheck(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 138
    return-object p2
.end method

.method public loadDisplayLanguageMap()V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->this$0:Lcom/swype/android/connect/settings/AbstractLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->isLanguageListReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 216
    :cond_14
    return-void

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->this$0:Lcom/swype/android/connect/settings/AbstractLanguagesActivity;

    invoke-virtual {v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/manager/LanguageManager;->getAvailableLanguages(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    .line 213
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->langCodeToDisplayNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->displayNameToLangCodeMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b
.end method

.method public remove(I)V
    .registers 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    invoke-virtual {p0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "lang"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->getPosition(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, position:I
    if-ltz v0, :cond_9

    .line 188
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->remove(I)V

    .line 190
    :cond_9
    return-void
.end method

.method public setCheck(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->checkedLangs:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->displayNameToLangCodeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/swype/android/connect/settings/AbstractLanguagesActivity$LanguageListAdapter;->languageDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method
