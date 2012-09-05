.class Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSenderTask"
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
.field private errorCode:I

.field private mTriggered:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .registers 4
    .parameter
    .parameter "triggered"

    .prologue
    const/4 v0, 0x0

    .line 2215
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 2216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2212
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->errorCode:I

    .line 2213
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    .line 2217
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    .line 2218
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2211
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 2234
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getContactProviderStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 2235
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->errorCode:I

    .line 2258
    :cond_d
    :goto_d
    return-object v6

    .line 2240
    :cond_e
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 2241
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    invoke-static {v2, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    .line 2243
    :cond_1b
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    invoke-direct {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    .line 2246
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2247
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 2248
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_d

    .line 2249
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2251
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2211
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 2263
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->errorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 2264
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showContactStatusChangingLocale()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$600(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 2266
    :cond_a
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 2222
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->mTriggered:Z

    if-nez v0, :cond_1c

    .line 2223
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2224
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 2225
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2230
    :cond_1c
    :goto_1c
    return-void

    .line 2227
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$300(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto :goto_1c
.end method
