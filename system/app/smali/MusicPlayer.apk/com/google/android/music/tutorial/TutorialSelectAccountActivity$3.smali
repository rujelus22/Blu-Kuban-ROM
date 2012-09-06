.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->refreshAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-static {v1}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$102(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 137
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$000(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v1

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$202(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 139
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    new-instance v1, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;-><init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method
