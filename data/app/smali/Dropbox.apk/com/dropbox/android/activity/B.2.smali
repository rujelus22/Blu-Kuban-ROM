.class final Lcom/dropbox/android/activity/B;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/DropboxCreateShortcut;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/DropboxCreateShortcut;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dropbox/android/activity/B;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/android/activity/B;->a:Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->finish()V

    .line 52
    return-void
.end method
