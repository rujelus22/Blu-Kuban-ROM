.class Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;
.super Landroid/os/AsyncTask;
.source "AbstractAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;)V
    .registers 3
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    const-string v0, "EmailUpdateTask"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 545
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "arg0"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onMessageUpdate()V

    .line 554
    const-string v0, "EmailUpdateTask"

    const-string v1, "doInBackground()"

    const-string v2, "handled email update. sleep start!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 556
    const-string v0, "EmailUpdateTask"

    const-string v1, "doInBackground()"

    const-string v2, "sleep end!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onMessageUpdate()V

    .line 560
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 545
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 572
    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$EmailUpdateTask;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->unregisterMessageObserver()V

    .line 566
    return-void
.end method
