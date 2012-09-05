.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 302
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Z

    move-result v0

    if-ne v0, v3, :cond_39

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 305
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Z)Z

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    const-string v1, "edittingMyWords"

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 310
    const-string v1, "CurrentMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 313
    :cond_39
    return-void
.end method
