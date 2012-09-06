.class final Lcom/dropbox/android/activity/aY;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/dropbox/android/activity/aY;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-static {}, Lcom/dropbox/android/util/h;->r()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 368
    new-instance v0, Ldbxyzptlk/j/r;

    iget-object v1, p0, Lcom/dropbox/android/activity/aY;->a:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {v0, v1}, Ldbxyzptlk/j/r;-><init>(Landroid/content/Context;)V

    .line 369
    new-instance v1, Lcom/dropbox/android/activity/aZ;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/aZ;-><init>(Lcom/dropbox/android/activity/aY;)V

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/r;->a(Ljava/lang/Runnable;)V

    .line 375
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/r;->a(I)V

    .line 376
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    return-void
.end method
