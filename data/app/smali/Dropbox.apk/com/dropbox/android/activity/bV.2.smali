.class final Lcom/dropbox/android/activity/bV;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/UpgradeMessageActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/UpgradeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dropbox/android/activity/bV;->a:Lcom/dropbox/android/activity/UpgradeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/android/activity/bV;->a:Lcom/dropbox/android/activity/UpgradeMessageActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/UpgradeMessageActivity;->finish()V

    .line 38
    return-void
.end method
