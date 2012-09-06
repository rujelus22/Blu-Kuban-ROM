.class Lcom/google/android/music/MusicSettingsActivity$1;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicSettingsActivity;->handleEnableDebugLogs(Z)V
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
    .line 411
    iput-object p1, p0, Lcom/google/android/music/MusicSettingsActivity$1;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity$1;->this$0:Lcom/google/android/music/MusicSettingsActivity;

    #calls: Lcom/google/android/music/MusicSettingsActivity;->killOurProcesses()V
    invoke-static {v0}, Lcom/google/android/music/MusicSettingsActivity;->access$000(Lcom/google/android/music/MusicSettingsActivity;)V

    .line 414
    return-void
.end method
