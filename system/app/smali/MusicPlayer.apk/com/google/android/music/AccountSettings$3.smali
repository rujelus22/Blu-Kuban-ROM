.class Lcom/google/android/music/AccountSettings$3;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->authenticationSuccess(Lcom/google/android/music/AccountPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;

.field final synthetic val$accountPref:Lcom/google/android/music/AccountPreference;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$3;->this$0:Lcom/google/android/music/AccountSettings;

    iput-object p2, p0, Lcom/google/android/music/AccountSettings$3;->val$accountPref:Lcom/google/android/music/AccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$3;->val$accountPref:Lcom/google/android/music/AccountPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 174
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$400()Lcom/google/android/music/AccountPreference;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 175
    invoke-static {}, Lcom/google/android/music/AccountSettings;->access$400()Lcom/google/android/music/AccountPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/AccountPreference;->setChecked(Z)V

    .line 177
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$3;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$100(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AccountSettings$3;->val$accountPref:Lcom/google/android/music/AccountPreference;

    invoke-virtual {v1}, Lcom/google/android/music/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$3;->val$accountPref:Lcom/google/android/music/AccountPreference;

    invoke-static {v0}, Lcom/google/android/music/AccountSettings;->access$402(Lcom/google/android/music/AccountPreference;)Lcom/google/android/music/AccountPreference;

    .line 180
    iget-object v0, p0, Lcom/google/android/music/AccountSettings$3;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-virtual {v0}, Lcom/google/android/music/AccountSettings;->finish()V

    .line 181
    return-void
.end method
