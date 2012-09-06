.class public Ljackpal/androidterm/RemoteInterface;
.super Landroid/app/Activity;
.source "RemoteInterface.java"


# static fields
.field private static final ACTION_OPEN_NEW_WINDOW:Ljava/lang/String; = "jackpal.androidterm.OPEN_NEW_WINDOW"

.field private static final ACTION_RUN_SCRIPT:Ljava/lang/String; = "jackpal.androidterm.RUN_SCRIPT"

.field private static final EXTRA_INITIAL_COMMAND:Ljava/lang/String; = "jackpal.androidterm.iInitialCommand"

.field private static final EXTRA_WINDOW_HANDLE:Ljava/lang/String; = "jackpal.androidterm.window_handle"

.field static final PRIVACT_OPEN_NEW_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.OPEN_NEW_WINDOW"

.field static final PRIVACT_SWITCH_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.SWITCH_WINDOW"

.field static final PRIVEXTRA_TARGET_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.target_window"


# instance fields
.field private mSettings:Ljackpal/androidterm/util/TermSettings;

.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Ljackpal/androidterm/TermService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Ljackpal/androidterm/RemoteInterface$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/RemoteInterface$1;-><init>(Ljackpal/androidterm/RemoteInterface;)V

    iput-object v0, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Ljackpal/androidterm/RemoteInterface;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method static synthetic access$100(Ljackpal/androidterm/RemoteInterface;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Ljackpal/androidterm/RemoteInterface;->handleIntent()V

    return-void
.end method

.method private appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "handle"
    .parameter "iInitialCommand"

    .prologue
    .line 137
    iget-object v3, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    .line 140
    .local v3, service:Ljackpal/androidterm/TermService;
    invoke-virtual {v3}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v5

    .line 141
    .local v5, sessions:Ljackpal/androidterm/util/SessionList;
    const/4 v6, 0x0

    .line 143
    .local v6, target:Ljackpal/androidterm/ShellTermSession;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_8
    invoke-virtual {v5}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v7

    if-ge v1, v7, :cond_21

    .line 144
    invoke-virtual {v5, v1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljackpal/androidterm/ShellTermSession;

    .line 145
    .local v4, session:Ljackpal/androidterm/ShellTermSession;
    invoke-virtual {v4}, Ljackpal/androidterm/ShellTermSession;->getHandle()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, h:Ljava/lang/String;
    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 147
    move-object v6, v4

    .line 152
    .end local v0           #h:Ljava/lang/String;
    .end local v4           #session:Ljackpal/androidterm/ShellTermSession;
    :cond_21
    if-nez v6, :cond_2b

    .line 154
    invoke-direct {p0, p2}, Ljackpal/androidterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    .end local p1
    :goto_27
    return-object p1

    .line 143
    .restart local v0       #h:Ljava/lang/String;
    .restart local v4       #session:Ljackpal/androidterm/ShellTermSession;
    .restart local p1
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 157
    .end local v0           #h:Ljava/lang/String;
    .end local v4           #session:Ljackpal/androidterm/ShellTermSession;
    :cond_2b
    if-eqz p2, :cond_35

    .line 158
    invoke-virtual {v6, p2}, Ljackpal/androidterm/ShellTermSession;->write(Ljava/lang/String;)V

    .line 159
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljackpal/androidterm/ShellTermSession;->write(I)V

    .line 162
    :cond_35
    new-instance v2, Landroid/content/Intent;

    const-string v7, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    const-string v7, "jackpal.androidterm.private.target_window"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v2}, Ljackpal/androidterm/RemoteInterface;->startActivity(Landroid/content/Intent;)V

    goto :goto_27
.end method

.method private handleIntent()V
    .registers 7

    .prologue
    .line 79
    iget-object v3, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    .line 80
    .local v3, service:Ljackpal/androidterm/TermService;
    if-nez v3, :cond_8

    .line 81
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->finish()V

    .line 107
    :goto_7
    return-void

    .line 85
    :cond_8
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, myIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jackpal.androidterm.RUN_SCRIPT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 89
    const-string v4, "jackpal.androidterm.window_handle"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, handle:Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 92
    const-string v4, "jackpal.androidterm.iInitialCommand"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Ljackpal/androidterm/RemoteInterface;->appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_2a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v2, result:Landroid/content/Intent;
    const-string v4, "jackpal.androidterm.window_handle"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Ljackpal/androidterm/RemoteInterface;->setResult(ILandroid/content/Intent;)V

    .line 105
    .end local v0           #handle:Ljava/lang/String;
    .end local v2           #result:Landroid/content/Intent;
    :goto_38
    iget-object v4, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4}, Ljackpal/androidterm/RemoteInterface;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->finish()V

    goto :goto_7

    .line 95
    .restart local v0       #handle:Ljava/lang/String;
    :cond_41
    const-string v4, "jackpal.androidterm.iInitialCommand"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljackpal/androidterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 102
    .end local v0           #handle:Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Ljackpal/androidterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_38
.end method

.method private openNewWindow(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "iInitialCommand"

    .prologue
    .line 110
    iget-object v3, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    .line 112
    .local v3, service:Ljackpal/androidterm/TermService;
    iget-object v5, p0, Ljackpal/androidterm/RemoteInterface;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v5}, Ljackpal/androidterm/util/TermSettings;->getInitialCommand()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, initialCommand:Ljava/lang/String;
    if-eqz p1, :cond_23

    .line 114
    if-eqz v1, :cond_55

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_23
    :goto_23
    iget-object v5, p0, Ljackpal/androidterm/RemoteInterface;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-static {p0, v5, v1}, Ljackpal/androidterm/Term;->createTermSession(Landroid/content/Context;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v4

    .line 122
    .local v4, session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v4, v3}, Ljackpal/androidterm/emulatorview/TermSession;->setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V

    .line 123
    invoke-virtual {v3}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    .line 125
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, handle:Ljava/lang/String;
    check-cast v4, Ljackpal/androidterm/ShellTermSession;

    .end local v4           #session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v4, v0}, Ljackpal/androidterm/ShellTermSession;->setHandle(Ljava/lang/String;)V

    .line 128
    new-instance v2, Landroid/content/Intent;

    const-string v5, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v2}, Ljackpal/androidterm/RemoteInterface;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-object v0

    .line 117
    .end local v0           #handle:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_55
    move-object v1, p1

    goto :goto_23
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, prefs:Landroid/content/SharedPreferences;
    new-instance v2, Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljackpal/androidterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Ljackpal/androidterm/RemoteInterface;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ljackpal/androidterm/TermService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, TSIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljackpal/androidterm/RemoteInterface;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    iget-object v2, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljackpal/androidterm/RemoteInterface;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 73
    const-string v2, "Term"

    const-string v3, "bind to service failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->finish()V

    .line 76
    :cond_2f
    return-void
.end method
