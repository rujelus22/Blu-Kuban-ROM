.class Lei;
.super Ljava/lang/Object;
.source "CreateNewDocActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lef;


# direct methods
.method constructor <init>(Lef;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lei;->a:Lef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lei;->a:Lef;

    iget-object v0, v0, Lef;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 209
    if-eqz v0, :cond_17

    .line 210
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    iget-object v0, p0, Lei;->a:Lef;

    iget-object v0, v0, Lef;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 214
    :cond_17
    iget-object v0, p0, Lei;->a:Lef;

    iget-object v0, v0, Lef;->a:Landroid/app/Activity;

    invoke-static {v0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 215
    iget-object v0, p0, Lei;->a:Lef;

    iget-object v0, v0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iget-object v1, p0, Lei;->a:Lef;

    iget-object v1, v1, Lef;->a:LkU;

    iget-object v2, p0, Lei;->a:Lef;

    iget-object v2, v2, Lef;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(LkU;Ljava/lang/String;)V

    .line 219
    :goto_30
    return-void

    .line 217
    :cond_31
    iget-object v0, p0, Lei;->a:Lef;

    iget-object v0, v0, Lef;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_30
.end method
