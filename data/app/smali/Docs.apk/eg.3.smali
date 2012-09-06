.class Leg;
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
    .line 152
    iput-object p1, p0, Leg;->a:Lef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 155
    iget-object v0, p0, Leg;->a:Lef;

    iget-object v0, v0, Lef;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Leg;->a:Lef;

    iget-object v1, v1, Lef;->a:Landroid/app/Activity;

    invoke-static {v1}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Leg;->a:Lef;

    iget-object v3, v3, Lef;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    return-void
.end method
