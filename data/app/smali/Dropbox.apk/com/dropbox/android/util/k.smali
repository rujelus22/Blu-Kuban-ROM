.class final Lcom/dropbox/android/util/k;
.super Ljava/util/TimerTask;
.source "panda.py"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 632
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 635
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(J)V

    .line 636
    return-void
.end method
