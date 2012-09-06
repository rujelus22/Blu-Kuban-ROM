.class final enum Lcom/dropbox/android/activity/delegate/b;
.super Lcom/dropbox/android/activity/delegate/a;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/a;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/b;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/dropbox/android/activity/delegate/x;->d:Z

    .line 35
    const/4 v0, 0x2

    if-ne p4, v0, :cond_12

    .line 37
    invoke-static {}, Lcom/dropbox/android/activity/delegate/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Canceled login"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 41
    :cond_12
    return-void
.end method
