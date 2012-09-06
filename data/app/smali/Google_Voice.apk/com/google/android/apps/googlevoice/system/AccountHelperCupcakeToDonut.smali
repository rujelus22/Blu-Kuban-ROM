.class public Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;
.super Ljava/lang/Object;
.source "AccountHelperCupcakeToDonut.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/AccountHelper;


# instance fields
.field private final context:Landroid/content/Context;

.field private devicePrimaryAccount:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;)V
    .registers 3
    .parameter "context"
    .parameter "veryPersistentPreferences"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->getDevicePrimaryAccountBlocking()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePrimaryAccountBlocking()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->setDevicePrimaryAccount(Ljava/lang/String;)V

    .line 71
    :goto_19
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    .line 75
    .end local v1           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :goto_1b
    return-object v2

    .line 69
    .restart local v1       #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :cond_1c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;->setDevicePrimaryAccount(Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_19

    .line 72
    .end local v1           #helper:Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;
    :catch_24
    move-exception v0

    .line 74
    .local v0, e:Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException;
    const-string v2, "failed to find GoogleLoginService"

    invoke-static {v2, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    const/4 v2, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .parameter "success"
    .parameter "failure"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 57
    :goto_b
    return-void

    .line 43
    :cond_c
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;-><init>(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;Landroid/os/Message;Landroid/os/Message;)V

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->start()V

    goto :goto_b
.end method

.method public hasGoogleAccount()Z
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->getDevicePrimaryAccountBlocking()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
