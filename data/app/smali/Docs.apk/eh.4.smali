.class Leh;
.super Ljava/lang/Object;
.source "CreateNewDocActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lef;


# direct methods
.method constructor <init>(Lef;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Leh;->a:Lef;

    iput-object p2, p0, Leh;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Leh;->a:Lef;

    iget-object v0, v0, Lef;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 179
    if-eqz v0, :cond_27

    .line 180
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    iget-object v0, p0, Leh;->a:Lef;

    iget-object v0, v0, Lef;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Leh;->a:Lef;

    iget-object v0, v0, Lef;->a:Landroid/app/Activity;

    iget-object v1, p0, Leh;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    iget-object v0, p0, Leh;->a:Lef;

    iget-object v0, v0, Lef;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 185
    :cond_27
    return-void
.end method
