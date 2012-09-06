.class Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/conversation/ConversationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceTranslationAdapter"
.end annotation


# instance fields
.field private mVoiceTranslateEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V
    .registers 3
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->mVoiceTranslateEntries:Ljava/util/ArrayList;

    .line 161
    return-void
.end method


# virtual methods
.method public addTranslationEntry(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 3
    .parameter "entry"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->mVoiceTranslateEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->mVoiceTranslateEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->mVoiceTranslateEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    .line 181
    .local v0, itemEntry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;
    if-nez p2, :cond_33

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->access$000(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/android/apps/translate/R$layout;->voice_translate_item_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    .line 184
    check-cast v2, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->access$000(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationHelper;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->access$100(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->initParameters(Landroid/app/Activity;Landroid/widget/ListView;)V

    move-object v2, p2

    .line 185
    check-cast v2, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;

    iget-object v3, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->setCallback(Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView$Callback;)V

    :cond_33
    move-object v1, p2

    .line 188
    check-cast v1, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;

    .line 189
    .local v1, itemView:Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->addInputText(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 191
    iget-object v2, v0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->outputText:Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 193
    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->addTranslate(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 195
    :cond_40
    iget-object v2, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->mVoiceTranslateEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/apps/translate/conversation/VoiceTranslateItemView;->render(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;II)V

    .line 197
    return-object p2
.end method
