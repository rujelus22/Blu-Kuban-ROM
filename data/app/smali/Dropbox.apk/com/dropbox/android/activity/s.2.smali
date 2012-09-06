.class final Lcom/dropbox/android/activity/s;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/r;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/r;)V
    .registers 2
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/dropbox/android/activity/s;->a:Lcom/dropbox/android/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 811
    iget-object v0, p0, Lcom/dropbox/android/activity/s;->a:Lcom/dropbox/android/activity/r;

    iget-object v0, v0, Lcom/dropbox/android/activity/r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 812
    iget-object v0, p0, Lcom/dropbox/android/activity/s;->a:Lcom/dropbox/android/activity/r;

    iget-object v0, v0, Lcom/dropbox/android/activity/r;->c:Lcom/dropbox/android/activity/n;

    invoke-static {v0}, Lcom/dropbox/android/activity/n;->b(Lcom/dropbox/android/activity/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/s;->a:Lcom/dropbox/android/activity/r;

    iget-object v1, v1, Lcom/dropbox/android/activity/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 813
    iget-object v1, p0, Lcom/dropbox/android/activity/s;->a:Lcom/dropbox/android/activity/r;

    iget-object v1, v1, Lcom/dropbox/android/activity/r;->c:Lcom/dropbox/android/activity/n;

    invoke-static {v1, v0}, Lcom/dropbox/android/activity/n;->a(Lcom/dropbox/android/activity/n;I)I

    move-result v1

    .line 814
    iget-object v2, p0, Lcom/dropbox/android/activity/s;->a:Lcom/dropbox/android/activity/r;

    iget-object v2, v2, Lcom/dropbox/android/activity/r;->c:Lcom/dropbox/android/activity/n;

    invoke-static {v2, v0, v1}, Lcom/dropbox/android/activity/n;->a(Lcom/dropbox/android/activity/n;II)V

    .line 815
    return-void
.end method
