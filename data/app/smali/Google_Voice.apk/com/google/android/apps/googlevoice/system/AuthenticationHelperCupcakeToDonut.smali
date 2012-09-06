.class public Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;
.super Ljava/lang/Object;
.source "AuthenticationHelperCupcakeToDonut.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/AuthenticationHelper;


# instance fields
.field private final context:Landroid/content/Context;

.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 3
    .parameter "context"
    .parameter "dependencyResolver"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method


# virtual methods
.method public getAccount(Landroid/app/Activity;I)V
    .registers 4
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->getAccount(Landroid/app/Activity;IZ)V

    .line 40
    return-void
.end method

.method public getCredentials(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 11
    .parameter "activity"
    .parameter "requestCode"
    .parameter "account"
    .parameter "promptUser"

    .prologue
    .line 47
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "grandcentral"

    move-object v0, p1

    move v1, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public invalidateAuthToken(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "authToken"

    .prologue
    .line 87
    invoke-static {p1, p2, p3}, Lcom/google/android/googlelogindist/GoogleLoginServiceHelper;->invalidateAuthToken(Landroid/app/Activity;ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
    .registers 5
    .parameter "success"
    .parameter "failure"
    .parameter "notify"

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;-><init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;ZLandroid/os/Message;Landroid/os/Message;)V

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$2;->start()V

    .line 134
    return-void
.end method

.method public loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
    .registers 5
    .parameter "success"
    .parameter "failure"
    .parameter "notify"

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;-><init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut;ZLandroid/os/Message;Landroid/os/Message;)V

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperCupcakeToDonut$1;->start()V

    .line 83
    return-void
.end method
