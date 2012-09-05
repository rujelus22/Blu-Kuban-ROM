.class Lcom/sec/android/app/music/MusicBrowserTabActivity$16;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerNowPlayingButtons()V
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
    .line 1436
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$16;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1439
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$16;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1440
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1441
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$16;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1444
    return-void
.end method
