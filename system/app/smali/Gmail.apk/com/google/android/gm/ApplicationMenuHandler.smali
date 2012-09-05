.class public Lcom/google/android/gm/ApplicationMenuHandler;
.super Ljava/lang/Object;
.source "ApplicationMenuHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z
    .registers 6
    .parameter "id"
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    .line 25
    .local v0, prefs:Lcom/google/android/gm/persistence/Persistence;
    sparse-switch p0, :sswitch_data_2a

    .line 46
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 27
    :sswitch_a
    invoke-virtual {v0, p1}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/ComposeActivity;->compose(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 31
    :sswitch_12
    invoke-static {p1}, Lcom/google/android/gm/Utils;->showSettings(Landroid/content/Context;)V

    goto :goto_9

    .line 35
    :sswitch_16
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    goto :goto_9

    .line 39
    :sswitch_22
    invoke-static {p1, p2}, Lcom/google/android/gm/Utils;->showHelp(Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)V

    goto :goto_9

    .line 43
    :sswitch_26
    invoke-static {p1}, Lcom/google/android/gm/Utils;->showAbout(Landroid/content/Context;)V

    goto :goto_9

    .line 25
    :sswitch_data_2a
    .sparse-switch
        0x7f0f00e9 -> :sswitch_12
        0x7f0f00ea -> :sswitch_22
        0x7f0f00eb -> :sswitch_26
        0x7f0f00f4 -> :sswitch_a
        0x7f0f00f5 -> :sswitch_16
    .end sparse-switch
.end method

.method public static handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z
    .registers 4
    .parameter "item"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 19
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    return v0
.end method
