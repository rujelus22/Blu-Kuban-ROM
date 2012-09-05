.class Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;
.super Ljava/lang/Object;
.source "AxT9AddWord.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


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
    .line 388
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 391
    const-string v3, "AxT9IMEPrivateActionDone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 392
    const-string v0, ""

    .line 393
    .local v0, addingWord:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)[B

    move-result-object v3

    const/16 v4, 0x5000

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v1

    .line 398
    .local v1, errorcode:S
    if-eqz v1, :cond_27

    .line 402
    :cond_27
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->AddWordtoUDB(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)V

    .line 404
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->writeDBdataToFile()V
    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    .line 405
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setFlagIsDone(Z)V

    .line 406
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->finish()V

    .line 407
    const/4 v2, 0x0

    .line 410
    .end local v0           #addingWord:Ljava/lang/String;
    .end local v1           #errorcode:S
    :cond_3c
    return v2
.end method
