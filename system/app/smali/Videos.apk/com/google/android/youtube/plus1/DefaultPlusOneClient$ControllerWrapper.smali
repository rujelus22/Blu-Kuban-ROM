.class public Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
.super Ljava/lang/Object;
.source "DefaultPlusOneClient.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneController$ValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/plus1/DefaultPlusOneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ControllerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/plus1/PlusOneController$ValueListener",
        "<",
        "Lcom/google/android/plus1/PlusOneStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private accountStatus:Lcom/google/android/plus1/PlusOneStatus;

.field private activity:Landroid/app/Activity;

.field private final controller:Lcom/google/android/plus1/PlusOneController;

.field private exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

.field private listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/PlusOneController;Z)V
    .registers 3
    .parameter "controller"
    .parameter "isAnonymous"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->controller:Lcom/google/android/plus1/PlusOneController;

    .line 135
    if-nez p2, :cond_a

    .line 136
    invoke-virtual {p1, p0}, Lcom/google/android/plus1/PlusOneController;->addAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 138
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;)Lcom/google/android/plus1/PlusOneController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->controller:Lcom/google/android/plus1/PlusOneController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized authorize(Landroid/app/Activity;Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;)V
    .registers 5
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->accountStatus:Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v0, :cond_11

    .line 189
    const-string v0, "PlusOneClient has an existing value, +1 must have been authorized before."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 190
    if-eqz p2, :cond_f

    .line 191
    invoke-interface {p2}, Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;->onAllowed()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_25

    .line 221
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 193
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_28

    .line 194
    const-string v0, "PlusOneClient has stored an auth exception. Resolving it"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    new-instance v1, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper$1;-><init>(Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/PlusOneController$ValueListener;)V
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 188
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_28
    :try_start_28
    const-string v0, "PlusOneClient is waiting for a result. Saving activity for future use."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->activity:Landroid/app/Activity;

    .line 219
    iput-object p2, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_25

    goto :goto_f
.end method

.method public declared-synchronized canPlusOne()Z
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->accountStatus:Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v0, :cond_1c

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->accountStatus:Lcom/google/android/plus1/PlusOneStatus;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    move-result v0

    if-eqz v0, :cond_12

    .line 174
    const/4 v0, 0x1

    .line 180
    :goto_10
    monitor-exit p0

    return v0

    .line 176
    :cond_12
    :try_start_12
    const-string v0, "PlusOneClient asking to refresh +1 account status"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->controller:Lcom/google/android/plus1/PlusOneController;

    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneController;->refreshAccountStatus()V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1e

    .line 180
    :cond_1c
    const/4 v0, 0x0

    goto :goto_10

    .line 172
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Ljava/lang/Exception;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_24

    .line 153
    const-string v0, "PlusOneClient cannot receive +1 account status: user has not authorized +1"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->accountStatus:Lcom/google/android/plus1/PlusOneStatus;

    .line 155
    check-cast p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .end local p1
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_22

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->authorize(Landroid/app/Activity;Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->activity:Landroid/app/Activity;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_49

    .line 169
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 164
    .restart local p1
    :cond_24
    :try_start_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlusOneClient cannot receive +1 account status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->activity:Landroid/app/Activity;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_49

    goto :goto_22

    .line 152
    .end local p1
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNewValue(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlusOneClient received new +1 account status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->accountStatus:Lcom/google/android/plus1/PlusOneStatus;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->exception:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->activity:Landroid/app/Activity;

    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    if-eqz v0, :cond_2b

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;

    invoke-interface {v0}, Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;->onAllowed()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->listener:Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 149
    :cond_2b
    monitor-exit p0

    return-void

    .line 141
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onNewValue(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, Lcom/google/android/plus1/PlusOneStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->onNewValue(Lcom/google/android/plus1/PlusOneStatus;)V

    return-void
.end method
