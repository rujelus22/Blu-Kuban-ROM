.class final enum Lcom/dropbox/android/activity/delegate/M;
.super Lcom/dropbox/android/activity/delegate/I;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/I;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/J;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/app/Activity;->onSearchRequested()Z

    .line 47
    return-void
.end method
