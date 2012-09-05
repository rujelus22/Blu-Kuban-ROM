.class Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;
.super Ljava/lang/Object;
.source "AxT9AddWord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9AddWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 237
    const-string v0, ""

    .line 238
    .local v0, addingWord:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)[B

    move-result-object v4

    const/16 v5, 0x5000

    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v2

    .line 243
    .local v2, errorcode:S
    if-eqz v2, :cond_1e

    .line 250
    :cond_1e
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S
    invoke-static {v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)[S

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v2

    .line 251
    if-nez v2, :cond_4c

    .line 252
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    .local v1, context:Landroid/content/Context;
    const v4, 0x7f0a009c

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 254
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 259
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #toast:Landroid/widget/Toast;
    :goto_40
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setFlagIsDone(Z)V

    .line 260
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->finish()V

    .line 261
    return-void

    .line 256
    :cond_4c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->AddWordtoUDB(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->writeDBdataToFile()V
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    goto :goto_40
.end method
