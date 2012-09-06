.class final enum Lcom/dropbox/android/activity/delegate/J;
.super Lcom/dropbox/android/activity/delegate/I;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/I;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/J;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/PrefsActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    sget-object v1, Lcom/dropbox/android/activity/delegate/a;->e:Lcom/dropbox/android/activity/delegate/a;

    invoke-static {p2, v0, v1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/dropbox/android/activity/delegate/a;)V

    .line 23
    return-void
.end method
