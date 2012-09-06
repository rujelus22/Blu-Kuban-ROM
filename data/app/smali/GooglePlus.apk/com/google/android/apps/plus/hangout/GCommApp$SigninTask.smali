.class Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;
.super Landroid/os/AsyncTask;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SigninTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->context:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 185
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7
    .parameter "args"

    .prologue
    .line 194
    sget-boolean v2, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    array-length v2, p1

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 195
    :cond_d
    const/4 v0, 0x0

    .line 197
    .local v0, authToken:Ljava/lang/String;
    :try_start_e
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$600(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "webupdates"

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/network/AuthData;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_21

    move-result-object v0

    .line 202
    :goto_20
    return-object v0

    .line 199
    :catch_21
    move-exception v1

    .line 200
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 185
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->signinTask:Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;
    invoke-static {v1, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$702(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;)Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$800(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->signoutAndDisconnect()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 213
    move-object v0, p1

    .line 214
    .local v0, talkAuthToken:Ljava/lang/String;
    if-nez v0, :cond_2b

    .line 215
    const-string v1, "Got null auth token. Raising authenticatioin error message."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->context:Landroid/content/Context;

    const/4 v2, -0x1

    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #setter for: Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$602(Lcom/google/android/apps/plus/hangout/GCommApp;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsAccount;

    .line 223
    .end local v0           #talkAuthToken:Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-void

    .line 220
    .restart local v0       #talkAuthToken:Ljava/lang/String;
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$800(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommApp$SigninTask;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #getter for: Lcom/google/android/apps/plus/hangout/GCommApp;->account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$600(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->connectAndSignin(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_2a
.end method
