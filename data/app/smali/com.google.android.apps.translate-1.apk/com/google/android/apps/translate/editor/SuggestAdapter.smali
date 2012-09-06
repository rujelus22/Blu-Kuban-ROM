.class public Lcom/google/android/apps/translate/editor/SuggestAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/SuggestAdapter$1;,
        Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;,
        Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SuggestAdapter"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private mSourceLanguage:Lcom/google/android/apps/translate/Language;

.field private mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

.field private mSuggestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetLanguage:Lcom/google/android/apps/translate/Language;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;)V
    .registers 7
    .parameter "activity"
    .parameter "languages"
    .parameter "from"
    .parameter "to"
    .parameter "filter"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mActivity:Landroid/app/Activity;

    .line 48
    invoke-static {p3}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    .line 49
    invoke-static {p4}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Language;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    .line 50
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/Languages;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 51
    invoke-static {p5}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSourceLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/Language;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mTargetLanguage:Lcom/google/android/apps/translate/Language;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/translate/editor/SuggestAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestList:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;-><init>(Lcom/google/android/apps/translate/editor/SuggestAdapter;Lcom/google/android/apps/translate/editor/SuggestAdapter$1;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 116
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    const-string v6, "SuggestAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adapter getview called at position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz p2, :cond_61

    move-object v2, p2

    .line 124
    .local v2, itemView:Landroid/view/View;
    :goto_1b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    .line 125
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 127
    .local v1, from:Lcom/google/android/apps/translate/Language;
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v3

    .line 130
    .local v3, to:Lcom/google/android/apps/translate/Language;
    sget v6, Lcom/google/android/apps/translate/R$id;->text:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/android/apps/translate/Language;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/translate/Util;->setTextAndFont(Landroid/widget/TextView;Ljava/lang/String;[Lcom/google/android/apps/translate/Language;)V

    .line 133
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, translation:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v4

    .line 137
    sget v6, Lcom/google/android/apps/translate/R$id;->translation:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 140
    .local v5, translationView:Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-object v2

    .line 122
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    .end local v1           #from:Lcom/google/android/apps/translate/Language;
    .end local v2           #itemView:Landroid/view/View;
    .end local v3           #to:Lcom/google/android/apps/translate/Language;
    .end local v4           #translation:Ljava/lang/String;
    .end local v5           #translationView:Landroid/view/View;
    :cond_61
    iget-object v6, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter;->mActivity:Landroid/app/Activity;

    sget v7, Lcom/google/android/apps/translate/R$layout;->suggest_text:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1b
.end method
