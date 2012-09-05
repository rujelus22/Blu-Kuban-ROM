.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderListView.java"

# interfaces
.implements Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;


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
    .line 515
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 8
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 518
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 523
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;>;"
    if-ne p1, p2, :cond_1b

    .line 524
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z

    .line 525
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setScrollbarFadingEnabled(Z)V

    .line 550
    :cond_1a
    :goto_1a
    return-void

    .line 528
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 529
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->isDnd:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z

    .line 544
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    .line 545
    .local v1, fromItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setScrollbarFadingEnabled(Z)V

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->changeArray(Ljava/util/ArrayList;)V

    goto :goto_1a
.end method
