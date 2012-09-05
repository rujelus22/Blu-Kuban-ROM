.class Lcom/google/android/music/EmptyViewController$5;
.super Ljava/lang/Object;
.source "EmptyViewController.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/EmptyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/EmptyViewController;


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$500(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v1

    .line 253
    .local v1, streamingEnabled:Z
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$500(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v2

    if-ne v2, v0, :cond_37

    .line 256
    .local v0, isLocalOnly:Z
    :goto_17
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$600(Lcom/google/android/music/EmptyViewController;)Z

    move-result v2

    if-ne v2, v1, :cond_27

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$700(Lcom/google/android/music/EmptyViewController;)Z

    move-result v2

    if-eq v2, v0, :cond_36

    .line 257
    :cond_27
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #setter for: Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z
    invoke-static {v2, v1}, Lcom/google/android/music/EmptyViewController;->access$602(Lcom/google/android/music/EmptyViewController;Z)Z

    .line 258
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #setter for: Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z
    invoke-static {v2, v0}, Lcom/google/android/music/EmptyViewController;->access$702(Lcom/google/android/music/EmptyViewController;Z)Z

    .line 259
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$5;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$200(Lcom/google/android/music/EmptyViewController;)V

    .line 261
    :cond_36
    return-void

    .line 253
    .end local v0           #isLocalOnly:Z
    :cond_37
    const/4 v0, 0x0

    goto :goto_17
.end method
