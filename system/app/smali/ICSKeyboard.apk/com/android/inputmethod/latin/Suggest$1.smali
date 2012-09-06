.class Lcom/android/inputmethod/latin/Suggest$1;
.super Ljava/lang/Thread;
.source "Suggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Suggest;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$dictionaryResId:I

.field private final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Suggest;Ljava/lang/String;Landroid/content/Context;Ljava/util/Locale;I)V
    .registers 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    iput-object p3, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$locale:Ljava/util/Locale;

    iput p5, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$dictionaryResId:I

    .line 161
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$locale:Ljava/util/Locale;

    iget v3, p0, Lcom/android/inputmethod/latin/Suggest$1;->val$dictionaryResId:I

    .line 164
    invoke-static {v1, v2, v3}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    .line 166
    .local v0, newMainDict:Lcom/android/inputmethod/latin/Dictionary;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    #setter for: Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/Dictionary;
    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/Suggest;->access$0(Lcom/android/inputmethod/latin/Suggest;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 167
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    #getter for: Lcom/android/inputmethod/latin/Suggest;->mUnigramDictionaries:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/inputmethod/latin/Suggest;->access$1(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "main"

    #calls: Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/inputmethod/latin/Suggest;->access$2(Lcom/android/inputmethod/latin/Suggest;Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest$1;->this$0:Lcom/android/inputmethod/latin/Suggest;

    #getter for: Lcom/android/inputmethod/latin/Suggest;->mBigramDictionaries:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/inputmethod/latin/Suggest;->access$3(Lcom/android/inputmethod/latin/Suggest;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "main"

    #calls: Lcom/android/inputmethod/latin/Suggest;->addOrReplaceDictionary(Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/inputmethod/latin/Suggest;->access$2(Lcom/android/inputmethod/latin/Suggest;Ljava/util/Map;Ljava/lang/String;Lcom/android/inputmethod/latin/Dictionary;)V

    .line 169
    return-void
.end method
