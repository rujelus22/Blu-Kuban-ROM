.class final Lcom/dropbox/android/activity/lock/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

.field final synthetic b:Lcom/dropbox/android/activity/lock/d;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/lock/d;Lcom/dropbox/android/activity/lock/LockCodeActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/f;->b:Lcom/dropbox/android/activity/lock/d;

    iput-object p2, p0, Lcom/dropbox/android/activity/lock/f;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/f;->a:Lcom/dropbox/android/activity/lock/LockCodeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    .line 200
    return-void
.end method
