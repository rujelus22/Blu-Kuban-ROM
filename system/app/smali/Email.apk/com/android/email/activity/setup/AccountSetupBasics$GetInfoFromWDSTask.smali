.class Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetInfoFromWDSTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;",
        ">;"
    }
.end annotation


# instance fields
.field mDomain:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 3
    .parameter

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .registers 8
    .parameter "domain"

    .prologue
    const/4 v2, 0x0

    .line 2284
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 2285
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    .line 2292
    new-instance v3, Lcom/android/email/wds/ServicemineClient;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v3, v4}, Lcom/android/email/wds/ServicemineClient;-><init>(Landroid/content/Context;)V

    .line 2294
    .local v3, sc:Lcom/android/email/wds/ServicemineClient;
    const/4 v1, 0x0

    .line 2297
    .local v1, ep:Lcom/android/email/wds/EmailProviderWds;
    :try_start_18
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/email/wds/ServicemineClient;->getWDSResponce(Ljava/lang/String;)Lcom/android/email/wds/EmailProviderWds;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1d} :catch_21

    move-result-object v1

    .line 2301
    if-nez v1, :cond_64

    .line 2315
    :cond_20
    :goto_20
    return-object v2

    .line 2298
    :catch_21
    move-exception v0

    .line 2299
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_22
    const-string v4, "Email"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_48

    .line 2301
    if-eqz v1, :cond_20

    .line 2304
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 2305
    .local v2, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 2306
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 2307
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 2308
    throw v1

    throw v2

    .line 2309
    throw v1

    throw v2

    .line 2310
    throw v1

    throw v2

    .line 2311
    throw v1

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_45
    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    goto :goto_20

    .line 2301
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :catchall_48
    move-exception v4

    if-eqz v1, :cond_20

    .line 2304
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 2305
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 2306
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 2307
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 2308
    throw v1

    throw v2

    .line 2309
    throw v1

    throw v2

    .line 2310
    throw v1

    throw v2

    .line 2311
    throw v1

    goto :goto_45

    .line 2304
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_64
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 2305
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 2306
    const-string v4, ""

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 2307
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 2308
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 2309
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 2310
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 2311
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/lang/String;

    goto :goto_45
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2278
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$900(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2321
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    if-eqz p1, :cond_28

    .end local p1
    :goto_10
    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1200(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    .line 2322
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1100(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 2325
    :cond_1d
    sget-boolean v0, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    if-nez v0, :cond_27

    .line 2326
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    const/4 v1, 0x1

    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$1300(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V

    .line 2328
    :cond_27
    return-void

    .line 2321
    .restart local p1
    :cond_28
    const/4 p1, 0x0

    goto :goto_10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2278
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method
