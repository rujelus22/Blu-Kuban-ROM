.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderListView.java"

# interfaces
.implements Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(II)V
    .registers 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$2;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setScrollbarFadingEnabled(Z)V

    .line 510
    :cond_14
    return-void
.end method
