.class Lcom/swype/android/oem/OemActionFactory$SamsungAction;
.super Lcom/swype/android/oem/OemAction;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/oem/OemActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SamsungAction"
.end annotation


# static fields
.field static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field static final REQUEST_AXT9INFO:Ljava/lang/String; = "RequestAxT9Info"

.field static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field public static final RESPONSE_SWYPEINFO:Ljava/lang/String; = "com.swype.android.broadcast"

.field public static final RESPONSE_SWYPE_INPUT_LANGUAGE:Ljava/lang/String; = "swype.inputLanguage"

.field public static final RESPONSE_SWYPE_IS_VISIBLE:Ljava/lang/String; = "isSipVisible"


# instance fields
.field private ctx:Landroid/content/Context;

.field private isSwypeVisible:Z

.field private swypeRespReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/swype/android/oem/OemAction;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    .line 76
    new-instance v1, Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;

    invoke-direct {v1, p0, v0}, Lcom/swype/android/oem/OemActionFactory$SamsungAction$1;-><init>(Lcom/swype/android/oem/OemActionFactory$SamsungAction;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->swypeRespReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->swypeRespReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "RequestAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/oem/OemActionFactory$SamsungAction;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->isSwypeVisible:Z

    return v0
.end method


# virtual methods
.method public IsUsingVibratorInterfaceForHaptic()Z
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public getCustomKeyboard(Landroid/view/inputmethod/EditorInfo;)I
    .registers 5
    .parameter

    .prologue
    .line 127
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 128
    if-eqz v0, :cond_2f

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 130
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v1, "LastLocale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2d

    .line 134
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 135
    :cond_2b
    const/4 v0, 0x0

    .line 140
    :goto_2c
    return v0

    .line 138
    :cond_2d
    const/4 v0, 0x1

    goto :goto_2c

    .line 140
    :cond_2f
    invoke-super {p0, p1}, Lcom/swype/android/oem/OemAction;->getCustomKeyboard(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    goto :goto_2c
.end method

.method public getOemId()Lcom/swype/android/oem/OEMBuildID;
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcom/swype/android/oem/OEMBuildID;->SAMSUNG:Lcom/swype/android/oem/OEMBuildID;

    return-object v0
.end method

.method public onChangeInputLanguage(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    const-string v1, "com.swype.android.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "swype.inputLanguage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "isSipVisible"

    iget-boolean v2, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->isSwypeVisible:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public onCleanup()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->swypeRespReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method public onHiding()V
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->isSwypeVisible:Z

    .line 112
    return-void
.end method

.method public onShowing()V
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->isSwypeVisible:Z

    .line 104
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$SamsungAction;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->broadcastCurrentLanguage()V

    .line 105
    return-void
.end method
