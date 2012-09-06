.class Lcom/google/android/music/athome/AtHomePlaybackActivity$2;
.super Ljava/lang/Object;
.source "AtHomePlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/TouchInterceptor$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomePlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$2;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlaybackActivity$2;->this$0:Lcom/google/android/music/athome/AtHomePlaybackActivity;

    #getter for: Lcom/google/android/music/athome/AtHomePlaybackActivity;->mListAdapter:Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomePlaybackActivity;->access$000(Lcom/google/android/music/athome/AtHomePlaybackActivity;)Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/athome/AtHomePlaybackActivity$AtHomeListAdapter;->removeItem(I)V

    .line 338
    return-void
.end method
