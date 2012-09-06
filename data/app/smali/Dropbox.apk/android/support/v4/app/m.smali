.class final Landroid/support/v4/app/m;
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
    .line 417
    iput-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()Z

    .line 421
    return-void
.end method
