.class Lcom/sec/android/app/music/MusicFileEmptyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicFileEmptyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicFileEmptyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicFileEmptyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;->this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;->this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;

    #getter for: Lcom/sec/android/app/music/MusicFileEmptyActivity;->mReceive:Z
    invoke-static {v0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->access$000(Lcom/sec/android/app/music/MusicFileEmptyActivity;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;->this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/music/MusicFileEmptyActivity;->mReceive:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->access$002(Lcom/sec/android/app/music/MusicFileEmptyActivity;Z)Z

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;->this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;

    const-class v2, Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;->this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/music/MusicFileEmptyActivity$1;->this$0:Lcom/sec/android/app/music/MusicFileEmptyActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicFileEmptyActivity;->finish()V

    .line 93
    :cond_2d
    return-void
.end method
