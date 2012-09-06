.class final Landroid/support/v4/app/n;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/l;


# direct methods
.method constructor <init>(Landroid/support/v4/app/l;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/l;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 439
    return-void
.end method
