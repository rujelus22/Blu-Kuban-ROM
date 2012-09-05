.class Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;
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
    .line 132
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v4, 0x7f0a0021

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 136
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$100(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Controller;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 137
    if-eqz p2, :cond_3d

    move-object v1, p2

    .line 138
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    .local v0, selectValue:I
    packed-switch v0, :pswitch_data_8e

    .line 152
    :goto_25
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    move-result-object v1

    const-string v2, "AP_NEWS_AUTO_SCROLL"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->setIntValue(Ljava/lang/String;I)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 157
    .end local v0           #selectValue:I
    :cond_3d
    return v5

    .line 141
    .restart local v0       #selectValue:I
    :pswitch_3e
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_25

    .line 145
    :pswitch_4b
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 149
    :pswitch_6c
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->mAutoScroll:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews$1;->this$0:Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 139
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_4b
        :pswitch_6c
    .end packed-switch
.end method
