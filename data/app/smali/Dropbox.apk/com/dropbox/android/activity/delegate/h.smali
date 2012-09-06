.class final enum Lcom/dropbox/android/activity/delegate/h;
.super Lcom/dropbox/android/activity/delegate/g;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p2}, Lcom/dropbox/android/util/b;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    return-void
.end method
