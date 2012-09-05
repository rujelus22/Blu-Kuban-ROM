.class Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;
.super Landroid/os/AsyncTask;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveGTalkAccounts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mDeviceAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/TalkApp;[Landroid/accounts/Account;)V
    .registers 5
    .parameter
    .parameter "accounts"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 827
    iput-object p2, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrieveGTalkAccounts account count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 829
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 821
    check-cast p1, [Landroid/content/ContentResolver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 9
    .parameter "contentResolvers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Lcom/google/android/talk/DatabaseUtils;->getAllAccountInfos(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    .line 834
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 835
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RetrieveGTalkAccounts.onPostExecute size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDeviceAccounts.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 841
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    array-length v5, v5

    if-ge v4, v5, :cond_91

    .line 844
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 845
    .local v3, gtalkAccounts:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v2, 0x0

    .line 846
    .local v2, gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v1, 0x0

    .line 847
    .local v1, found:Z
    :cond_43
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 848
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 849
    .restart local v2       #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gtalkAccount name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 850
    iget-object v5, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 851
    const/4 v1, 0x1

    .line 855
    :cond_76
    if-nez v1, :cond_85

    .line 856
    new-instance v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local v2           #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-direct {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 857
    .restart local v2       #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 859
    :cond_85
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 864
    .end local v1           #found:Z
    .end local v2           #gtalkAccount:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v3           #gtalkAccounts:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_91
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    #calls: Lcom/google/android/talk/TalkApp;->verifyAccountInPrefs()V
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$500(Lcom/google/android/talk/TalkApp;)V

    .line 866
    monitor-enter p0

    .line 867
    const/4 v5, 0x1

    :try_start_98
    iput-boolean v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mCompleted:Z

    .line 868
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 869
    monitor-exit p0

    .line 871
    return-object v0

    .line 869
    :catchall_9f
    move-exception v5

    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_9f

    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 821
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->access$602(Lcom/google/android/talk/TalkApp;Z)Z

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrieveGTalkAccountsonPostExecute mAccountList count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    #getter for: Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    #calls: Lcom/google/android/talk/TalkApp;->broadcastAccountListChanged()V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$700(Lcom/google/android/talk/TalkApp;)V

    .line 880
    return-void
.end method

.method public waitForAccounts()V
    .registers 2

    .prologue
    .line 889
    :goto_0
    monitor-enter p0

    .line 890
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mCompleted:Z

    if-eqz v0, :cond_7

    .line 891
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    return-void

    .line 894
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_f

    .line 898
    :goto_a
    :try_start_a
    monitor-exit p0

    goto :goto_0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw v0

    .line 895
    :catch_f
    move-exception v0

    goto :goto_a
.end method
