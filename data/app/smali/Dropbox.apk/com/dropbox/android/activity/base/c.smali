.class final Lcom/dropbox/android/activity/base/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/base/b;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/base/b;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dropbox/android/activity/base/c;->a:Lcom/dropbox/android/activity/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/android/activity/base/c;->a:Lcom/dropbox/android/activity/base/b;

    iget-object v0, v0, Lcom/dropbox/android/activity/base/b;->a:Lcom/dropbox/android/activity/base/a;

    invoke-static {v0}, Lcom/dropbox/android/activity/base/a;->b(Lcom/dropbox/android/activity/base/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 95
    return-void
.end method
