.class final Lcom/dropbox/android/activity/O;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/service/v;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/FavoritesActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/FavoritesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dropbox/android/activity/O;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/service/w;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dropbox/android/activity/O;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/FavoritesActivity;->a(Lcom/dropbox/android/activity/FavoritesActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
