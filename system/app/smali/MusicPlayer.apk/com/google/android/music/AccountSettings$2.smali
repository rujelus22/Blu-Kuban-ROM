.class Lcom/google/android/music/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "pref"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    check-cast p1, Lcom/google/android/music/AccountPreference;

    .end local p1
    #setter for: Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;
    invoke-static {v0, p1}, Lcom/google/android/music/AccountSettings;->access$702(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;

    .line 126
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;
    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$700(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AccountPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;
    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$700(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountPreference;

    move-result-object v0

    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$400()Lcom/google/android/music/AccountPreference;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 127
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$2;->this$0:Lcom/google/android/music/AccountSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/AccountSettings;->showDialog(I)V

    .line 130
    :cond_25
    const/4 v0, 0x1

    return v0
.end method
