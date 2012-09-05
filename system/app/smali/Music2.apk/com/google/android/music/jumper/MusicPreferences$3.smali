.class Lcom/google/android/music/jumper/MusicPreferences$3;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/jumper/MusicPreferences;->switchAccountAsync(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/accounts/Account;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    iput-object p2, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 555
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$000(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.accountchanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->val$account:Landroid/accounts/Account;

    if-eqz v0, :cond_2f

    .line 559
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->val$account:Landroid/accounts/Account;

    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 560
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->val$account:Landroid/accounts/Account;

    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 561
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->val$account:Landroid/accounts/Account;

    const-string v1, "com.google.android.music.MusicContent"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 563
    :cond_2f
    return-void
.end method
