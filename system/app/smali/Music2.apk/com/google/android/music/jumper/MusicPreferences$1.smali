.class Lcom/google/android/music/jumper/MusicPreferences$1;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/jumper/MusicPreferences;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->access$000(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #getter for: Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/music/jumper/MusicPreferences;->access$000(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "music_lock_screen_enabled"

    invoke-static {v0, v3, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;
    invoke-static {v2, v1}, Lcom/google/android/music/jumper/MusicPreferences;->access$102(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 153
    return-void
.end method
