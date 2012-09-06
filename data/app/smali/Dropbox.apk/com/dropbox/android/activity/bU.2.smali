.class final Lcom/dropbox/android/activity/bU;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/UpgradeMessageActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/UpgradeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dropbox/android/activity/bU;->a:Lcom/dropbox/android/activity/UpgradeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/android/activity/bU;->a:Lcom/dropbox/android/activity/UpgradeMessageActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/UpgradeMessageActivity;->finish()V

    .line 29
    return-void
.end method
