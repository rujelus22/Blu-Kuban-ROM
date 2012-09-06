.class final enum Lcom/dropbox/android/activity/delegate/L;
.super Lcom/dropbox/android/activity/delegate/I;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
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
    .line 37
    instance-of v0, p2, Lcom/dropbox/android/activity/D;

    if-eqz v0, :cond_10

    .line 38
    check-cast p2, Lcom/dropbox/android/activity/D;

    invoke-interface {p2}, Lcom/dropbox/android/activity/D;->o()V

    .line 39
    invoke-static {}, Lcom/dropbox/android/util/h;->ab()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 41
    :cond_10
    return-void
.end method
