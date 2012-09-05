.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$1;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 82
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$1;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$000(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    .line 86
    return-void
.end method
