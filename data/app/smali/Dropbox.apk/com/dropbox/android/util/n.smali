.class final Lcom/dropbox/android/util/n;
.super Ljava/util/TimerTask;
.source "panda.py"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 834
    invoke-static {}, Lcom/dropbox/android/util/h;->am()V

    .line 835
    return-void
.end method
