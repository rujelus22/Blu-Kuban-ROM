.class Lcom/google/android/apps/translate/editor/EditPanelView$1;
.super Ljava/lang/Object;
.source "EditPanelView.java"

# interfaces
.implements Lcom/google/android/apps/translate/editor/SuggestAdapter$SuggestionFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/EditPanelView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/EditPanelView;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/EditPanelView$1;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/history/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    const/4 v3, 0x0

    .line 184
    const-string v4, "EditPanelView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter entries.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/google/android/apps/translate/editor/EditPanelView$1;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v4}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$000(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, inputText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object p1, v3

    .line 206
    .end local p1           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_36
    :goto_36
    return-object p1

    .line 190
    .restart local p1       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/history/Entry;>;"
    :cond_37
    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    .line 193
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/history/Entry;

    .line 194
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/translate/editor/EditPanelView$1;->this$0:Lcom/google/android/apps/translate/editor/EditPanelView;

    #getter for: Lcom/google/android/apps/translate/editor/EditPanelView;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v5}, Lcom/google/android/apps/translate/editor/EditPanelView;->access$000(Lcom/google/android/apps/translate/editor/EditPanelView;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 196
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v2

    .local v2, translation:Ljava/lang/String;
    move-object p1, v3

    .line 197
    goto :goto_36
.end method
