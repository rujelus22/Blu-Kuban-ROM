.class public Lcom/google/android/talk/SignoutActivity;
.super Landroid/app/Activity;
.source "SignoutActivity.java"


# instance fields
.field private ACCOUNT_SELECTION:[Ljava/lang/String;

.field private mAccountId:J

.field private mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/talk/SignoutActivity;->ACCOUNT_SELECTION:[Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/SignoutActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/SignoutActivity;)Lcom/google/android/gtalkservice/IGTalkService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/talk/SignoutActivity;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/talk/SignoutActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/talk/SignoutActivity;->signOut()V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 127
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Signout] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private signOut()V
    .registers 7

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "signOut"

    invoke-static {v3}, Lcom/google/android/talk/SignoutActivity;->log(Ljava/lang/String;)V

    .line 98
    :cond_b
    iget-object v3, p0, Lcom/google/android/talk/SignoutActivity;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;

    iget-wide v4, p0, Lcom/google/android/talk/SignoutActivity;->mAccountId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v1

    .line 99
    .local v1, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v1, :cond_2a

    .line 100
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    .line 101
    .local v2, status:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 103
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 104
    const-string v3, "signOut: already signed out"

    invoke-static {v3}, Lcom/google/android/talk/SignoutActivity;->log(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_32

    .line 113
    .end local v2           #status:Lcom/google/android/gtalkservice/Presence;
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    .line 115
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    :goto_2d
    return-void

    .line 107
    .restart local v1       #imSession:Lcom/google/android/gtalkservice/IImSession;
    .restart local v2       #status:Lcom/google/android/gtalkservice/Presence;
    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->logout()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_2a

    .line 110
    .end local v1           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v2           #status:Lcom/google/android/gtalkservice/Presence;
    :catch_32
    move-exception v0

    .line 111
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_33
    const-string v3, "talk"

    const-string v4, "signout: caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3e

    .line 113
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    goto :goto_2d

    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_3e
    move-exception v3

    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    throw v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 49
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, data:Landroid/net/Uri;
    if-nez v1, :cond_19

    .line 51
    const-string v2, "talk"

    const-string v3, "Need account data to sign in"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    .line 91
    :cond_18
    :goto_18
    return-void

    .line 56
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/talk/SignoutActivity;->ACCOUNT_SELECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2d

    :try_start_27
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 65
    :cond_2d
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SignoutActivity] No data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_6e

    .line 72
    if-eqz v7, :cond_18

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_18

    .line 70
    :cond_4e
    :try_start_4e
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/SignoutActivity;->mAccountId:J
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_6e

    .line 72
    if-eqz v7, :cond_5f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_5f
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v6

    .line 77
    .local v6, app:Lcom/google/android/talk/TalkApp;
    iget-object v2, p0, Lcom/google/android/talk/SignoutActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/talk/SignoutActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/SignoutActivity$1;-><init>(Lcom/google/android/talk/SignoutActivity;)V

    invoke-virtual {v6, v2, v3}, Lcom/google/android/talk/TalkApp;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    goto :goto_18

    .line 72
    .end local v6           #app:Lcom/google/android/talk/TalkApp;
    :catchall_6e
    move-exception v2

    if-eqz v7, :cond_74

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v2
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    .line 124
    return-void
.end method
