.class Lcom/google/android/music/lockscreen/WaveLockActivity$4;
.super Ljava/lang/Object;
.source "WaveLockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/lockscreen/WaveLockActivity;->saveAndOverrideScreenTimeout(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

.field final synthetic val$currentScreenTimeout:I


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveLockActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$4;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    iput p2, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$4;->val$currentScreenTimeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$4;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #getter for: Lcom/google/android/music/lockscreen/WaveLockActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$600(Lcom/google/android/music/lockscreen/WaveLockActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$4;->val$currentScreenTimeout:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setSavedScreenTimeout(I)V

    .line 221
    return-void
.end method
