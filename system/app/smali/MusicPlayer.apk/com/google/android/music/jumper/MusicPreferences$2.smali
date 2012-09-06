.class Lcom/google/android/music/jumper/MusicPreferences$2;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
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
    .line 248
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$2;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$2;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabledSync()V
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$200(Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 252
    return-void
.end method
