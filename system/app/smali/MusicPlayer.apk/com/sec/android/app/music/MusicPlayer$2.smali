.class Lcom/sec/android/app/music/MusicPlayer$2;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$2;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 609
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$2;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v1, v1, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer$2;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 612
    const/4 v0, 0x0

    return v0
.end method
