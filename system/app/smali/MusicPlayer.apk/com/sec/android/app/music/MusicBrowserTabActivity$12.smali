.class Lcom/sec/android/app/music/MusicBrowserTabActivity$12;
.super Landroid/os/Handler;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$12;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$12;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 766
    return-void
.end method
