.class final Lcom/dropbox/android/activity/base/d;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/util/r;

.field final synthetic b:Lcom/dropbox/android/activity/base/a;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/base/a;Lcom/dropbox/android/util/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dropbox/android/activity/base/d;->b:Lcom/dropbox/android/activity/base/a;

    iput-object p2, p0, Lcom/dropbox/android/activity/base/d;->a:Lcom/dropbox/android/util/r;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/android/activity/base/d;->a:Lcom/dropbox/android/util/r;

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->b()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 138
    return-void
.end method
