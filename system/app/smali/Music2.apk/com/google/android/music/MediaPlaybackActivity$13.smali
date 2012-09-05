.class Lcom/google/android/music/MediaPlaybackActivity$13;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfoImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;

.field final synthetic val$finalAlbumName:Ljava/lang/String;

.field final synthetic val$finalArtistName:Ljava/lang/String;

.field final synthetic val$finalTotalTime:Ljava/lang/String;

.field final synthetic val$finalTrackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    iput-object p2, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalArtistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalAlbumName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalTrackName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalTotalTime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameSml:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2300(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameSml:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2300(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2122
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 2124
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameSml:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2500(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameSml:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2500(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    :cond_35
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2600(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    :cond_40
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameSml:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameSml:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    :cond_53
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2800(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2129
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    #getter for: Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/MediaPlaybackActivity;->access$2900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity$13;->val$finalTotalTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    return-void
.end method
