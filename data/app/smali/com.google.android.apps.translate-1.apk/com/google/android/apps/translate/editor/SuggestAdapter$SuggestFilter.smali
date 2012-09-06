.class Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;
.super Landroid/widget/Filter;
.source "SuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/SuggestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/editor/SuggestAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/editor/SuggestAdapter;Lcom/google/android/apps/translate/editor/SuggestAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;-><init>(Lcom/google/android/apps/translate/editor/SuggestAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resultValue"

    .prologue
    .line 95
    check-cast p1, Lcom/google/android/apps/translate/history/Entry;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 10
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v4, "SuggestAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performFiltering constraint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-nez p1, :cond_1d

    move-object v2, v3

    .line 79
    :goto_1c
    return-object v2

    .line 63
    :cond_1d
    :try_start_1d
    iget-object v4, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    #getter for: Lcom/google/android/apps/translate/editor/SuggestAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->access$000(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    #getter for: Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSourceLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v5}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->access$100(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    #getter for: Lcom/google/android/apps/translate/editor/SuggestAdapter;->mTargetLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v6}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->access$200(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/Language;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/translate/Util;->getInputSuggestions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    iget-object v4, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    #getter for: Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;
    invoke-static {v4}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->access$300(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 67
    iget-object v4, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    #getter for: Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestFilter:Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;
    invoke-static {v4}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->access$300(Lcom/google/android/apps/translate/editor/SuggestAdapter;)Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 69
    :cond_55
    if-eqz v1, :cond_5d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_5d
    move-object v2, v3

    .line 70
    goto :goto_1c

    .line 73
    :cond_5f
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 74
    .local v2, results:Landroid/widget/Filter$FilterResults;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 75
    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6c} :catch_6d

    goto :goto_1c

    .line 77
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    .end local v2           #results:Landroid/widget/Filter$FilterResults;
    :catch_6d
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SuggestAdapter"

    const-string v5, "Cannot get suggestions"

    invoke-static {v4, v5, v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 79
    goto :goto_1c
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 86
    const-string v0, "SuggestAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in publish result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    if-eqz p2, :cond_2d

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_2d

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :goto_24
    #setter for: Lcom/google/android/apps/translate/editor/SuggestAdapter;->mSuggestList:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->access$402(Lcom/google/android/apps/translate/editor/SuggestAdapter;Ljava/util/List;)Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestFilter;->this$0:Lcom/google/android/apps/translate/editor/SuggestAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/SuggestAdapter;->notifyDataSetChanged()V

    .line 91
    return-void

    .line 88
    :cond_2d
    const/4 v0, 0x0

    goto :goto_24
.end method
