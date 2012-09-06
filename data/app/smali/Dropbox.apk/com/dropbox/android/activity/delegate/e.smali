.class final enum Lcom/dropbox/android/activity/delegate/e;
.super Lcom/dropbox/android/activity/delegate/a;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/a;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/android/activity/delegate/g;->f:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {p1, p2, v0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/g;)V

    .line 94
    return-void
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/activity/D;ILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    return-void
.end method
