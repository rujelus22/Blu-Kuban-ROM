.class Lcom/sec/android/inputmethod/axt9/AxT9IME$10;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
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
    .line 4218
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 4221
    const-string v6, "AddingWord"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4222
    .local v0, addingWord:Ljava/lang/CharSequence;
    const-string v6, "sendingActivity"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4223
    .local v3, sendingActivity:Ljava/lang/String;
    if-eqz v3, :cond_3e

    const-string v6, "AxT9AddWord"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 4224
    if-eqz v0, :cond_2b

    .line 4225
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4226
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2b

    .line 4229
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    invoke-static {v6, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9IME;Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4232
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2b
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 4233
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 4254
    :cond_3d
    :goto_3d
    return-void

    .line 4234
    :cond_3e
    if-eqz v3, :cond_3d

    const-string v6, "AxT9Option"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 4235
    const-string v6, "languageShouldSet"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4236
    .local v2, langShouldSet:I
    if-ne v2, v7, :cond_8e

    .line 4237
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4238
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-string v7, "select_language"

    const-string v8, "0"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I
    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2202(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I

    .line 4239
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I

    move-result v7

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V
    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2300(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V

    .line 4240
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I
    invoke-static {v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I

    move-result v7

    if-nez v7, :cond_81

    const/4 v5, 0x1

    :cond_81
    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoLangOn(Z)V
    invoke-static {v6, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    .line 4252
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :goto_84
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    goto :goto_3d

    .line 4249
    :cond_8e
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I
    invoke-static {v5, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2202(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I

    .line 4250
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I
    invoke-static {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I

    move-result v6

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V
    invoke-static {v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2300(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V

    goto :goto_84
.end method
