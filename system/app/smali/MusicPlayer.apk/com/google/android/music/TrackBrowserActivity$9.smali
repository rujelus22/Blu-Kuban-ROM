.class Lcom/google/android/music/TrackBrowserActivity$9;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/TouchInterceptor$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$9;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #calls: Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V
    invoke-static {v0, p1}, Lcom/google/android/music/TrackBrowserActivity;->access$2400(Lcom/google/android/music/TrackBrowserActivity;I)V

    .line 1100
    return-void
.end method
