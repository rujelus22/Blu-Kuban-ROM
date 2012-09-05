.class Lcom/sec/android/app/dlna/ui/DLNASettings$6;
.super Landroid/content/BroadcastReceiver;
.source "DLNASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/DLNASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 2
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 615
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->isExternalStorageSdMounted()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 616
    const-string v4, "DLNA"

    const-string v5, "actually the External SD is not ejected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_11
    return-void

    .line 618
    :cond_12
    const-string v4, "DLNA"

    const-string v5, "storage is ejected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "default_storage"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 620
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "default_storage"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 621
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 623
    :cond_45
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 625
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "default_storage"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, storageVal:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 627
    .local v2, storageValIndex:I
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 629
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, values2:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;->this$0:Lcom/sec/android/app/dlna/ui/DLNASettings;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_82} :catch_83

    goto :goto_11

    .line 632
    .end local v1           #storageVal:Ljava/lang/String;
    .end local v2           #storageValIndex:I
    .end local v3           #values2:[Ljava/lang/String;
    :catch_83
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
