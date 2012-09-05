.class Lcom/sec/android/inputmethod/axt9/AxT9IME$25;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputLanguageSelectOptionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 2
    .parameter

    .prologue
    .line 6528
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "di"
    .parameter "position"

    .prologue
    .line 6530
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6531
    if-ltz p2, :cond_4a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_4a

    .line 6532
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_4a

    .line 6533
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 6534
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2202(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I

    .line 6535
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2300(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V

    .line 6538
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 6555
    :cond_4a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6556
    return-void
.end method
