.class Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;
.super Ljava/lang/Object;
.source "MessengerSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackendPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 277
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 278
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mCurrentBackend:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$600(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 280
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$BackendPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->logOut(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 283
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_23
    const/4 v1, 0x1

    return v1
.end method
