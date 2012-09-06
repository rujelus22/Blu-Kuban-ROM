.class final Lcom/google/android/music/store/RecentItemsManager$1;
.super Ljava/lang/Object;
.source "RecentItemsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/store/RecentItemsManager;->updateRecentItemsAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/music/store/RecentItemsManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItems(Landroid/content/Context;)V

    .line 53
    return-void
.end method
