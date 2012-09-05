.class Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;
.super Landroid/content/BroadcastReceiver;
.source "SwypeInputMethodSettingsLanguages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 70
    const-string v0, "Language"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2c

    .line 72
    const-string v1, "Progress"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_52

    invoke-static {}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 74
    invoke-static {}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    #getter for: Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentDownload:Ljava/lang/String;
    invoke-static {v1}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$100(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    #getter for: Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->currentDownload:Ljava/lang/String;
    invoke-static {v1}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$100(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 86
    :cond_4c
    iget-object v0, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    #calls: Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->setupPreferences()V
    invoke-static {v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$200(Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;)V

    .line 99
    :cond_51
    :goto_51
    return-void

    .line 76
    :cond_52
    invoke-static {}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 90
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages$1;->this$0:Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    invoke-virtual {v1, v0}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .line 91
    if-eqz p0, :cond_51

    instance-of v1, p0, Lcom/swype/android/settings/ProgressBarPreference;

    if-eqz v1, :cond_51

    .line 92
    check-cast p0, Lcom/swype/android/settings/ProgressBarPreference;

    .line 93
    invoke-static {}, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/swype/android/settings/ProgressBarPreference;->setProgress(I)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_79} :catch_7a

    goto :goto_51

    .line 99
    :catch_7a
    move-exception v0

    goto :goto_51
.end method
