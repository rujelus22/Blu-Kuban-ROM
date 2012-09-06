.class final Lcom/dropbox/android/widget/B;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/FavoritesListView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/FavoritesListView;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dropbox/android/widget/B;->a:Lcom/dropbox/android/widget/FavoritesListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/android/widget/B;->a:Lcom/dropbox/android/widget/FavoritesListView;

    invoke-static {v0}, Lcom/dropbox/android/widget/FavoritesListView;->a(Lcom/dropbox/android/widget/FavoritesListView;)V

    .line 160
    return-void
.end method
