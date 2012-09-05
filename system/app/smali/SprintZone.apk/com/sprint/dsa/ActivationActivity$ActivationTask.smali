.class Lcom/sprint/dsa/ActivationActivity$ActivationTask;
.super Landroid/os/AsyncTask;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/ActivationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/ActivationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 8
    .parameter "params"

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, uri:Ljava/lang/String;
    sget-boolean v4, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-nez v4, :cond_11

    .line 100
    new-instance v0, Lcom/sprint/dsa/dss/DsaSystem;

    iget-object v4, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    invoke-direct {v0, v4}, Lcom/sprint/dsa/dss/DsaSystem;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, ds:Lcom/sprint/dsa/dss/DsaSystem;
    invoke-virtual {v0}, Lcom/sprint/dsa/dss/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v3

    .line 112
    .end local v0           #ds:Lcom/sprint/dsa/dss/DsaSystem;
    :goto_10
    return-object v3

    .line 103
    :cond_11
    const/4 v1, 0x0

    .line 105
    .local v1, localUrl:Ljava/net/URL;
    :try_start_12
    new-instance v2, Ljava/net/URL;

    sget-object v4, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_36

    .end local v1           #localUrl:Ljava/net/URL;
    .local v2, localUrl:Ljava/net/URL;
    move-object v1, v2

    .line 109
    .end local v2           #localUrl:Ljava/net/URL;
    .restart local v1       #localUrl:Ljava/net/URL;
    :goto_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .line 106
    :catch_36
    move-exception v4

    goto :goto_1a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 117
    const-string v1, "SprintZone_PageMain"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finish acquiring url isFinishing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    invoke-virtual {v3}, Lcom/sprint/dsa/ActivationActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    invoke-virtual {v1}, Lcom/sprint/dsa/ActivationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_37

    .line 120
    if-eqz p1, :cond_38

    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    const-class v2, Lcom/sprint/dsa/dss/DsaClient;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sprint.dsa.query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    invoke-virtual {v1, v0}, Lcom/sprint/dsa/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    .end local v0           #intent:Landroid/content/Intent;
    :cond_37
    :goto_37
    return-void

    .line 125
    :cond_38
    iget-object v1, p0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->this$0:Lcom/sprint/dsa/ActivationActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/ActivationActivity;->showDialog(I)V

    goto :goto_37
.end method
