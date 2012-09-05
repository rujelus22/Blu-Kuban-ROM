.class Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;
.super Ljava/lang/Object;
.source "SettingsNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 299
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->removeDialog(I)V

    .line 300
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AP_NEWS_AUTO_PRE_REFRESH"

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPreSelectValue:I
    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$602(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;I)I

    .line 303
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 304
    .local v2, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 306
    iput v7, v2, Landroid/text/format/Time;->second:I

    .line 307
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 309
    .local v0, nextRefreshTime:J
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPreSelectValue:I
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$600(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)I

    move-result v3

    packed-switch v3, :pswitch_data_be

    .line 330
    :goto_35
    :pswitch_35
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v3

    const-string v4, "AUTO_REFRESH_TIME"

    invoke-virtual {v3, v4, v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setLongValue(Ljava/lang/String;J)V

    .line 331
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v3

    const-string v4, "AP_NEWS_AUTO_REFRESH"

    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPreSelectValue:I
    invoke-static {v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$600(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setIntValue(Ljava/lang/String;I)V

    .line 332
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPreSelectValue:I
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$600(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 333
    return-void

    .line 311
    :pswitch_65
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_35

    .line 315
    :pswitch_72
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 316
    const-wide/32 v3, 0x1b7740

    add-long/2addr v0, v3

    .line 317
    goto :goto_35

    .line 320
    :pswitch_83
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0a0017

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 321
    const-wide/32 v3, 0x36ee80

    add-long/2addr v0, v3

    .line 322
    goto :goto_35

    .line 325
    :pswitch_94
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$3;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    const-wide/32 v3, 0xa4cb80

    add-long/2addr v0, v3

    goto/16 :goto_35

    .line 309
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_65
        :pswitch_35
        :pswitch_35
        :pswitch_72
        :pswitch_83
        :pswitch_35
        :pswitch_94
    .end packed-switch
.end method
