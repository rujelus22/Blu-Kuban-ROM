.class final Lcom/dropbox/android/activity/N;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/FavoritesActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/FavoritesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dropbox/android/activity/N;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/android/activity/N;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/FavoritesActivity;->o()V

    .line 40
    return-void
.end method
