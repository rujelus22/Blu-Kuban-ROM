.class Lcom/sec/android/app/music/MusicBrowserTabActivity$13;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 780
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$13;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$13;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->refreshCurrentListView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$500(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 789
    return-void
.end method
