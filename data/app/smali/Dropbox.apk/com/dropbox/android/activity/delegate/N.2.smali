.class final enum Lcom/dropbox/android/activity/delegate/N;
.super Lcom/dropbox/android/activity/delegate/I;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/I;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/J;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->c:Lcom/dropbox/android/activity/delegate/a;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/android/activity/delegate/a;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V

    .line 53
    return-void
.end method
