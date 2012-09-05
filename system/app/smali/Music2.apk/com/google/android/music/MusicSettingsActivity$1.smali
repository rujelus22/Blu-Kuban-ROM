.class Lcom/google/android/music/MusicSettingsActivity$1;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/music/MusicSettingsActivity$1;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity$1;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity$1;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #getter for: Lcom/google/android/music/MusicSettingsActivity;->mHideStreamingPreferences:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/MusicSettingsActivity;->access$000(Lcom/google/android/music/MusicSettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method
