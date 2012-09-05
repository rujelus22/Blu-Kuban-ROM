.class Lcom/android/certinstaller/CertInstaller$1;
.super Landroid/os/AsyncTask;
.source "CertInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->extractPkcs12InBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    iput-object p2, p0, Lcom/android/certinstaller/CertInstaller$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4
    .parameter "unused"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;
    invoke-static {v0}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CredentialHelper;->extractPkcs12(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/certinstaller/CertInstaller$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "success"

    .prologue
    .line 296
    new-instance v0, Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;-><init>(Z)V

    .line 297
    .local v0, action:Lcom/android/certinstaller/CertInstaller$MyAction;
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mState:I
    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$400(Lcom/android/certinstaller/CertInstaller;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    .line 299
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-static {v1, v0}, Lcom/android/certinstaller/CertInstaller;->access$502(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 303
    :goto_17
    return-void

    .line 301
    :cond_18
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$1;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-interface {v0, v1}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_17
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/certinstaller/CertInstaller$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
