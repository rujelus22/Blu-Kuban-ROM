.class Lcom/android/email/activity/setup/AccountSetupNames$2;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->prefillNameFromProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 9
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 139
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v6

    .line 140
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupNames;->access$100()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$2;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #getter for: Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupNames;->access$200(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
