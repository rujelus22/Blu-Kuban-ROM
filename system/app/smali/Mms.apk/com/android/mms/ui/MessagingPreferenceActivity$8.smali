.class Lcom/android/mms/ui/MessagingPreferenceActivity$8;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 15
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const v11, 0x7f09011d

    const/4 v10, 0x1

    .line 864
    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    .line 866
    .local v9, smsc_addr:Ljava/lang/String;
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreferenceChange] SmscAddr :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :try_start_1f
    const-string v0, "+"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 870
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 874
    :goto_2f
    const-string v0, "-"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 875
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v1, 0x7f09011d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 914
    :cond_44
    :goto_44
    const/4 v0, 0x0

    return v0

    .line 872
    :cond_46
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_49} :catch_4a

    goto :goto_2f

    .line 909
    :catch_4a
    move-exception v7

    .line 911
    .local v7, e:Ljava/lang/NumberFormatException;
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_44

    .line 879
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_55
    :try_start_55
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "smsc"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$600()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 885
    .local v6, bResult:I
    if-ne v6, v10, :cond_8a

    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "pref_key_manage_smsc_address"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    .line 888
    .local v8, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v8, :cond_44

    .line 889
    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 890
    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_44

    .line 893
    .end local v8           #smscPrefs:Landroid/preference/EditTextPreference;
    :cond_8a
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v1, 0x7f09011e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 898
    const-string v0, "SPH-D710"

    const-string v1, "SPH-I777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 899
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v1, 0x7f090235

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_ae} :catch_4a

    goto :goto_44
.end method
