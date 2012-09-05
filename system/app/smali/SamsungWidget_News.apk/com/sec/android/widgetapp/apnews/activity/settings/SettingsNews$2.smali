.class Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;
.super Ljava/lang/Object;
.source "SettingsNews.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;
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
    .line 164
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v10, 0x7f0a0016

    const v6, 0x7f0a0015

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 167
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 168
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 169
    if-eqz p2, :cond_66

    move-object v4, p2

    .line 170
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 171
    .local v2, selectValue:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$400(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/engine/Util;->check3GSim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_168

    .line 173
    if-lez v2, :cond_de

    .line 175
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 176
    .local v3, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 178
    iput v8, v3, Landroid/text/format/Time;->second:I

    .line 179
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 181
    .local v0, nextRefreshTime:J
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mSet:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$500(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "checkbox_enable"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_67

    .line 183
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AP_NEWS_AUTO_PRE_REFRESH"

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setIntValue(Ljava/lang/String;I)V

    .line 184
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->showDialog(I)V

    .line 280
    .end local v0           #nextRefreshTime:J
    .end local v2           #selectValue:I
    .end local v3           #time:Landroid/text/format/Time;
    :cond_66
    :goto_66
    return v8

    .line 186
    .restart local v0       #nextRefreshTime:J
    .restart local v2       #selectValue:I
    .restart local v3       #time:Landroid/text/format/Time;
    :cond_67
    packed-switch v2, :pswitch_data_1f2

    .line 207
    :goto_6a
    :pswitch_6a
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AUTO_REFRESH_TIME"

    invoke-virtual {v4, v5, v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setLongValue(Ljava/lang/String;J)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setIntValue(Ljava/lang/String;I)V

    .line 209
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_66

    .line 188
    :pswitch_8e
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_6a

    .line 192
    :pswitch_98
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 193
    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    .line 194
    goto :goto_6a

    .line 197
    :pswitch_a6
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 198
    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    .line 199
    goto :goto_6a

    .line 202
    :pswitch_b7
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    const-wide/32 v4, 0xa4cb80

    add-long/2addr v0, v4

    goto :goto_6a

    .line 213
    .end local v0           #nextRefreshTime:J
    .end local v3           #time:Landroid/text/format/Time;
    :cond_de
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 214
    .restart local v3       #time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 216
    iput v8, v3, Landroid/text/format/Time;->second:I

    .line 217
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 219
    .restart local v0       #nextRefreshTime:J
    packed-switch v2, :pswitch_data_204

    .line 240
    :goto_f3
    :pswitch_f3
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AUTO_REFRESH_TIME"

    invoke-virtual {v4, v5, v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setLongValue(Ljava/lang/String;J)V

    .line 241
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setIntValue(Ljava/lang/String;I)V

    .line 242
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_66

    .line 221
    :pswitch_118
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_f3

    .line 225
    :pswitch_122
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 226
    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    .line 227
    goto :goto_f3

    .line 230
    :pswitch_130
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 231
    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    .line 232
    goto :goto_f3

    .line 235
    :pswitch_141
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    const-wide/32 v4, 0xa4cb80

    add-long/2addr v0, v4

    goto :goto_f3

    .line 246
    .end local v0           #nextRefreshTime:J
    .end local v3           #time:Landroid/text/format/Time;
    :cond_168
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 247
    .restart local v3       #time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 249
    iput v8, v3, Landroid/text/format/Time;->second:I

    .line 250
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 252
    .restart local v0       #nextRefreshTime:J
    packed-switch v2, :pswitch_data_216

    .line 273
    :goto_17d
    :pswitch_17d
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AUTO_REFRESH_TIME"

    invoke-virtual {v4, v5, v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setLongValue(Ljava/lang/String;J)V

    .line 274
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v4

    const-string v5, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setIntValue(Ljava/lang/String;I)V

    .line 275
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_66

    .line 254
    :pswitch_1a2
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_17d

    .line 258
    :pswitch_1ac
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 259
    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    .line 260
    goto :goto_17d

    .line 263
    :pswitch_1ba
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 264
    const-wide/32 v4, 0x36ee80

    add-long/2addr v0, v4

    .line 265
    goto :goto_17d

    .line 268
    :pswitch_1cb
    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoRefresh:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$2;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    const-wide/32 v4, 0xa4cb80

    add-long/2addr v0, v4

    goto :goto_17d

    .line 186
    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_6a
        :pswitch_6a
        :pswitch_98
        :pswitch_a6
        :pswitch_6a
        :pswitch_b7
    .end packed-switch

    .line 219
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_118
        :pswitch_f3
        :pswitch_f3
        :pswitch_122
        :pswitch_130
        :pswitch_f3
        :pswitch_141
    .end packed-switch

    .line 252
    :pswitch_data_216
    .packed-switch 0x0
        :pswitch_1a2
        :pswitch_17d
        :pswitch_17d
        :pswitch_1ac
        :pswitch_1ba
        :pswitch_17d
        :pswitch_1cb
    .end packed-switch
.end method
