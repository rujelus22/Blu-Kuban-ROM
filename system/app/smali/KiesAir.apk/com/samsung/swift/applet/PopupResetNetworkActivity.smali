.class public Lcom/samsung/swift/applet/PopupResetNetworkActivity;
.super Landroid/app/Activity;
.source "PopupResetNetworkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final RESUMED_EVENT:Ljava/lang/String;

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static instance:Lcom/samsung/swift/applet/PopupResetNetworkActivity;

.field public static networkDisplayName:Ljava/lang/String;

.field public static restartNetworkMsg:Ljava/lang/String;


# instance fields
.field protected final DIALOG_RESET_NETWORK:I

.field private final TAGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Resumed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->RESUMED_EVENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->TAGNAME:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->DIALOG_RESET_NETWORK:I

    return-void
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/applet/PopupResetNetworkActivity;
    .registers 2

    .prologue
    .line 114
    const-class v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->instance:Lcom/samsung/swift/applet/PopupResetNetworkActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setInstance(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)Lcom/samsung/swift/applet/PopupResetNetworkActivity;
    .registers 3
    .parameter "instance"

    .prologue
    .line 119
    const-class v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->instance:Lcom/samsung/swift/applet/PopupResetNetworkActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearDialog()V
    .registers 3

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/applet/AppletActivity;->STOPNETWORK_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_13

    .line 127
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->finish()V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_10

    .line 164
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 167
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->showDialog(I)V

    .line 168
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 182
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 189
    :goto_12
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 190
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/samsung/swift/R$string;->restart_network_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 191
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    sget-object v1, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->restartNetworkMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    sget v2, Lcom/samsung/swift/R$string;->yes_button:I

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/samsung/swift/applet/PopupResetNetworkActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity$1;-><init>(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 201
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    sget v2, Lcom/samsung/swift/R$string;->no_button:I

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;-><init>(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 216
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 217
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 184
    :cond_58
    sget v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_6b

    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_12

    .line 187
    :cond_6b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_12
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 224
    const/4 v1, 0x4

    if-ne p2, v1, :cond_8

    .line 226
    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->moveTaskToBack(Z)Z

    .line 230
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p2, p3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 173
    sget-object v0, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    invoke-static {p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->setInstance(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasFocus"

    .prologue
    .line 134
    if-eqz p1, :cond_24

    .line 136
    invoke-static {p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->setInstance(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    .line 139
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_b
    if-ge v1, v2, :cond_28

    aget-object v3, v0, v1

    .line 141
    .local v3, nif:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->isUpAndAssociated()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 143
    sget-object v4, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1e

    .line 144
    sget-object v4, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->finish()V

    .line 139
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 151
    .end local v0           #arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #nif:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_24
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->setInstance(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    .line 153
    :cond_28
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 154
    return-void
.end method
