.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->initButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;)Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->submitReorder()V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->finish()V

    .line 53
    return-void
.end method
