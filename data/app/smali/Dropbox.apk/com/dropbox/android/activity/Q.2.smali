.class final Lcom/dropbox/android/activity/Q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/FavoritesActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/FavoritesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/dropbox/android/activity/Q;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/android/activity/Q;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/T;->c(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/dropbox/android/provider/s;

    iget-object v2, p0, Lcom/dropbox/android/activity/Q;->a:Lcom/dropbox/android/activity/FavoritesActivity;

    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/android/provider/s;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Lcom/dropbox/android/filemanager/U;)V

    .line 188
    invoke-virtual {v1}, Lcom/dropbox/android/provider/s;->start()V

    .line 189
    return-void
.end method
