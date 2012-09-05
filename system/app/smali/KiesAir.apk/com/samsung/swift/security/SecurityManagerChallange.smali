.class public Lcom/samsung/swift/security/SecurityManagerChallange;
.super Landroid/app/Activity;
.source "SecurityManagerChallange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field private static final DENY_ACCESS_SETTING:Ljava/lang/String; = "deny_access"

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final PRIVATE_SETTING:Ljava/lang/String; = "privet_connection_allowed"

.field private static final PUBLIC_SETTING:Ljava/lang/String; = "network_ask"

.field private static final REMEMBER:Ljava/lang/String; = "SMC_remember"

.field private static instance:Lcom/samsung/swift/security/SecurityManagerChallange;


# instance fields
.field private checkRemember:Landroid/widget/CheckBox;

.field private connectionName:Ljava/lang/String;

.field private dialog:Landroid/app/AlertDialog;

.field private hostNameThreadRunning:Z

.field private okButton:Landroid/widget/Button;

.field private rb1:Landroid/widget/RadioButton;

.field private rb2:Landroid/widget/RadioButton;

.field private rb3:Landroid/widget/RadioButton;

.field private secureIcon:Landroid/widget/ImageView;

.field private securityRating:Landroid/widget/TextView;

.field private textConnection:Landroid/widget/TextView;

.field private textDeviceName:Landroid/widget/TextView;

.field private textNetwork:Landroid/widget/TextView;

.field private textReplace:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const-class v0, Lcom/samsung/swift/security/SecurityManagerChallange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 163
    sget-object v0, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v1, "SecurityManagerChallange created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityManagerChallange;->setHostNameThreadRunning(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/swift/security/SecurityManagerChallange;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/swift/security/SecurityManagerChallange;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->setConnectionName()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/swift/security/SecurityManagerChallange;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityManagerChallange;->commitAndFinish(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/swift/security/SecurityManagerChallange;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private commitAndFinish(Z)V
    .registers 10
    .parameter "allow"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    sget-object v1, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v2, "notifying launchAskUser that we are done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v0

    .line 193
    .local v0, currentConnection:Lcom/samsung/swift/security/Connection;
    if-nez v0, :cond_1d

    .line 195
    sget-object v1, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v2, "current challange is null - shutting down 1 "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->finish()V

    .line 275
    :goto_1c
    return-void

    .line 200
    :cond_1d
    sget-boolean v1, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v1, :cond_75

    .line 202
    if-eqz p1, :cond_6c

    .line 205
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->reset()V

    .line 207
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 209
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "accessRequest"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_54

    .line 210
    invoke-interface {v0, v6}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    .line 262
    :goto_41
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/swift/security/Connection;->setName(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityManager;->finishCurrentChallange()V

    .line 273
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->resetPersistentState()V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->finish()V

    goto :goto_1c

    .line 212
    :cond_54
    invoke-interface {v0, v7}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 216
    :cond_58
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "accessRequest"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_68

    .line 217
    invoke-interface {v0, v4}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 219
    :cond_68
    invoke-interface {v0, v3}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 223
    :cond_6c
    invoke-interface {v0, v5}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    .line 225
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->showAccessDenialInfoDialog(Ljava/lang/String;)V

    goto :goto_41

    .line 229
    :cond_75
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 231
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 233
    invoke-interface {v0, v6}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 237
    :cond_89
    invoke-interface {v0, v4}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 243
    :cond_8d
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 245
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 247
    invoke-interface {v0, v7}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 251
    :cond_a1
    invoke-interface {v0, v3}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41

    .line 258
    :cond_a5
    invoke-interface {v0, v5}, Lcom/samsung/swift/security/Connection;->setSecurityProfile(I)V

    goto :goto_41
.end method

.method private currentChallange()Lcom/samsung/swift/security/Connection;
    .registers 2

    .prologue
    .line 168
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/security/SecurityManager;->getCurrentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v0

    return-object v0
.end method

.method private findHostName()V
    .registers 6

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/swift/security/Connection;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, ipAddress:Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->isHostNameThreadRunning()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 320
    sget-object v3, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v4, "hostNameThreadRunning is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_15
    return-void

    .line 324
    :cond_16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 326
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/swift/security/SecurityManagerChallange$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/swift/security/SecurityManagerChallange$1;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 387
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_15
.end method

.method private findIdIfExist(Ljava/lang/String;)I
    .registers 3
    .parameter "id"

    .prologue
    .line 707
    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findIdIfExist(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "id"
    .parameter "type"

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 699
    .local v0, stringId:I
    if-eqz v0, :cond_13

    .line 703
    .end local v0           #stringId:I
    :goto_12
    return v0

    .restart local v0       #stringId:I
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private findStringIfExists(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/samsung/swift/security/SecurityManagerChallange;->findIdIfExist(Ljava/lang/String;)I

    move-result v0

    .line 690
    .local v0, stringId:I
    if-eqz v0, :cond_f

    .line 692
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 694
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/security/SecurityManagerChallange;
    .registers 2

    .prologue
    .line 148
    const-class v0, Lcom/samsung/swift/security/SecurityManagerChallange;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/security/SecurityManagerChallange;->instance:Lcom/samsung/swift/security/SecurityManagerChallange;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized isHostNameThreadRunning()Z
    .registers 2

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->hostNameThreadRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/security/SecurityManagerChallange;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private resetPersistentState()V
    .registers 3

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privet_connection_allowed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "network_ask"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deny_access"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SMC_remember"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 608
    sget-object v0, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v1, "can\'t reset persistent state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2e
    return-void
.end method

.method private restorePersistentState()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 614
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SMC_remember"

    iget-object v3, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 616
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_8c

    .line 617
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "privet_connection_allowed"

    iget-object v3, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 618
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "network_ask"

    iget-object v3, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 619
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "deny_access"

    iget-object v3, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 621
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 623
    :cond_72
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 626
    :cond_77
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 628
    :cond_87
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 631
    :cond_8c
    return-void
.end method

.method private savePersistentState()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 657
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v0

    if-nez v0, :cond_b

    .line 659
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->resetPersistentState()V

    .line 684
    :cond_a
    :goto_a
    return-void

    .line 662
    :cond_b
    sget-boolean v0, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-eqz v0, :cond_55

    .line 665
    invoke-virtual {p0, v1}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privet_connection_allowed"

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "network_ask"

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deny_access"

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SMC_remember"

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_a

    .line 672
    sget-object v0, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v1, "can\'t save persistent state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 677
    :cond_55
    invoke-virtual {p0, v1}, Lcom/samsung/swift/security/SecurityManagerChallange;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SMC_remember"

    iget-object v2, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_a

    .line 681
    sget-object v0, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v1, "can\'t save persistent state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private setConnectionName()V
    .registers 6

    .prologue
    .line 280
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    .line 282
    :cond_c
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/swift/security/Connection;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    .line 283
    const-string v0, "127.0.0.1"

    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 285
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/swift/R$string;->securityManagerChallange_localApplication:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    .line 293
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textConnection:Landroid/widget/TextView;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textConnection:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->securityManagerChallange_device:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_4b
    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textDeviceName:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textDeviceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :cond_56
    return-void

    .line 290
    :cond_57
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->findHostName()V

    goto :goto_2c
.end method

.method private declared-synchronized setHostNameThreadRunning(Z)V
    .registers 3
    .parameter "hostNameThreadRunning"

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->hostNameThreadRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized setInstance(Lcom/samsung/swift/security/SecurityManagerChallange;)V
    .registers 3
    .parameter "instance"

    .prologue
    .line 140
    const-class v0, Lcom/samsung/swift/security/SecurityManagerChallange;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/swift/security/SecurityManagerChallange;->instance:Lcom/samsung/swift/security/SecurityManagerChallange;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 141
    monitor-exit v0

    return-void

    .line 140
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setNetworkName()V
    .registers 6

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/swift/security/Connection;->getNetwork()Lcom/samsung/swift/security/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/security/Network;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, networkName:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textNetwork:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$string;->trustNetwork:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 396
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 398
    const v8, 0x1030073

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->setTheme(I)V

    .line 410
    :goto_f
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 412
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_1c

    .line 414
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 417
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v8

    if-nez v8, :cond_4e

    .line 420
    sget-object v8, Lcom/samsung/swift/security/SecurityManagerChallange;->LOGTAG:Ljava/lang/String;

    const-string v9, "current challange is null - shutting down"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->finish()V

    .line 590
    :goto_2c
    return-void

    .line 402
    .end local v0           #appContext:Landroid/content/Context;
    :cond_2d
    sget v8, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_3a

    .line 403
    const v8, 0x103012e

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->setTheme(I)V

    goto :goto_f

    .line 404
    :cond_3a
    sget v8, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_47

    .line 405
    const v8, 0x1030073

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->setTheme(I)V

    goto :goto_f

    .line 407
    :cond_47
    const v8, 0x1030010

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->setTheme(I)V

    goto :goto_f

    .line 425
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_4e
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/swift/security/Connection;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->connectionName:Ljava/lang/String;

    .line 427
    sget-boolean v8, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v8, :cond_121

    .line 430
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 435
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 437
    sget v8, Lcom/samsung/swift/R$layout;->access_request_theme_holo_light:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 438
    .local v7, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x3

    invoke-direct {v1, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 450
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    :goto_77
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 452
    sget v8, Lcom/samsung/swift/R$id;->device_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textDeviceName:Landroid/widget/TextView;

    .line 453
    sget v8, Lcom/samsung/swift/R$id;->network_name:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textNetwork:Landroid/widget/TextView;

    .line 454
    sget v8, Lcom/samsung/swift/R$id;->current_connection_will_be_denied:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textReplace:Landroid/widget/TextView;

    .line 455
    sget v8, Lcom/samsung/swift/R$id;->checkboxRemember:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    .line 456
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$2;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$2;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/swift/security/SecurityManager;->getAuthorisedConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v3

    .line 465
    .local v3, connections:[Lcom/samsung/swift/security/Connection;
    array-length v8, v3

    if-nez v8, :cond_11a

    .line 467
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textReplace:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    :goto_be
    sget v8, Lcom/samsung/swift/R$string;->access_request:I

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 474
    sget v8, Lcom/samsung/swift/R$string;->allow:I

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$3;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$3;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 481
    sget v8, Lcom/samsung/swift/R$string;->deny:I

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$4;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$4;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 491
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->dialog:Landroid/app/AlertDialog;

    .line 492
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 562
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #connections:[Lcom/samsung/swift/security/Connection;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #view:Landroid/view/View;
    :goto_e9
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->currentChallange()Lcom/samsung/swift/security/Connection;

    move-result-object v8

    invoke-interface {v8}, Lcom/samsung/swift/security/Connection;->getSecurityLevel()I

    move-result v8

    packed-switch v8, :pswitch_data_282

    .line 586
    :cond_f4
    :goto_f4
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->setConnectionName()V

    .line 587
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->setNetworkName()V

    .line 589
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->restorePersistentState()V

    goto/16 :goto_2c

    .line 442
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_ff
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_114

    .line 443
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x4

    invoke-direct {v1, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 447
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    :goto_10b
    sget v8, Lcom/samsung/swift/R$layout;->access_request:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .restart local v7       #view:Landroid/view/View;
    goto/16 :goto_77

    .line 445
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v7           #view:Landroid/view/View;
    :cond_114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    goto :goto_10b

    .line 470
    .restart local v3       #connections:[Lcom/samsung/swift/security/Connection;
    .restart local v7       #view:Landroid/view/View;
    :cond_11a
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textReplace:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_be

    .line 496
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #connections:[Lcom/samsung/swift/security/Connection;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #view:Landroid/view/View;
    :cond_121
    sget v5, Lcom/samsung/swift/R$layout;->accept_connection:I

    .line 497
    .local v5, layOutId:I
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "challange.layoutId"

    const-string v10, "string"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 498
    .local v2, confLayoutIdResId:I
    if-eqz v2, :cond_153

    .line 500
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, layoutName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "layout"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 503
    .end local v6           #layoutName:Ljava/lang/String;
    :cond_153
    invoke-virtual {p0, v5}, Lcom/samsung/swift/security/SecurityManagerChallange;->setContentView(I)V

    .line 505
    sget v8, Lcom/samsung/swift/R$id;->network_name:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textNetwork:Landroid/widget/TextView;

    .line 506
    sget v8, Lcom/samsung/swift/R$id;->conn_name:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->textConnection:Landroid/widget/TextView;

    .line 507
    sget v8, Lcom/samsung/swift/R$id;->checkboxRemember:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    .line 509
    sget v8, Lcom/samsung/swift/R$id;->security_rating:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    .line 510
    sget v8, Lcom/samsung/swift/R$id;->networksafe_icon:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    .line 511
    sget v8, Lcom/samsung/swift/R$id;->confirmbutton:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->okButton:Landroid/widget/Button;

    .line 513
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->checkRemember:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 515
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->okButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->okButton:Landroid/widget/Button;

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$5;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$5;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    sget v8, Lcom/samsung/swift/R$id;->radiobutton1:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    .line 525
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb1:Landroid/widget/RadioButton;

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$6;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$6;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    sget v8, Lcom/samsung/swift/R$id;->radiobutton2:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    .line 537
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb2:Landroid/widget/RadioButton;

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$7;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$7;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    sget v8, Lcom/samsung/swift/R$id;->radiobutton3:I

    invoke-virtual {p0, v8}, Lcom/samsung/swift/security/SecurityManagerChallange;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    .line 549
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->rb3:Landroid/widget/RadioButton;

    new-instance v9, Lcom/samsung/swift/security/SecurityManagerChallange$8;

    invoke-direct {v9, p0}, Lcom/samsung/swift/security/SecurityManagerChallange$8;-><init>(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e9

    .line 565
    .end local v2           #confLayoutIdResId:I
    .end local v5           #layOutId:I
    :pswitch_1e6
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_1f1

    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/swift/R$drawable;->network_insecure:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    :cond_1f1
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    if-eqz v8, :cond_f4

    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/swift/R$string;->security_manager_challange_security_rating:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/swift/R$string;->security_manager_challange_security_low:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f4

    .line 571
    :pswitch_21a
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_225

    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/swift/R$drawable;->network_partialsecure:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    :cond_225
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    if-eqz v8, :cond_f4

    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/swift/R$string;->security_manager_challange_security_rating:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/swift/R$string;->security_manager_challange_security_medium:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f4

    .line 577
    :pswitch_24e
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_259

    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->secureIcon:Landroid/widget/ImageView;

    sget v9, Lcom/samsung/swift/R$drawable;->network_secure:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    :cond_259
    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    if-eqz v8, :cond_f4

    iget-object v8, p0, Lcom/samsung/swift/security/SecurityManagerChallange;->securityRating:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/swift/R$string;->security_manager_challange_security_rating:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/swift/R$string;->security_manager_challange_security_high:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f4

    .line 562
    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_1e6
        :pswitch_21a
        :pswitch_24e
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->setInstance(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 646
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 595
    const/4 v1, 0x4

    if-ne p2, v1, :cond_8

    .line 597
    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/SecurityManagerChallange;->moveTaskToBack(Z)Z

    .line 601
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p2, p3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->savePersistentState()V

    .line 652
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 653
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->savePersistentState()V

    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 638
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 154
    if-eqz p1, :cond_5

    .line 156
    invoke-static {p0}, Lcom/samsung/swift/security/SecurityManagerChallange;->setInstance(Lcom/samsung/swift/security/SecurityManagerChallange;)V

    .line 158
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 159
    return-void
.end method
