.class Lcom/sec/android/app/music/MusicContentListView$1;
.super Ljava/lang/Object;
.source "MusicContentListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicContentListView;->checkAddMusicHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicContentListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicContentListView;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/app/music/MusicContentListView$1;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 185
    invoke-static {}, Lcom/sec/android/app/music/MusicContentListView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Add music clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.ADD_TO_PLAYLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, i:Landroid/content/Intent;
    const-string v1, "tabFrom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "mode"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "selectMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView$1;->this$0:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    return-void
.end method
