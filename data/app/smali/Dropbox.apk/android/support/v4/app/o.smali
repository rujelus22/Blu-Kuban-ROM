.class final Landroid/support/v4/app/o;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/l;


# direct methods
.method constructor <init>(Landroid/support/v4/app/l;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/l;

    iput p2, p0, Landroid/support/v4/app/o;->a:I

    iput p3, p0, Landroid/support/v4/app/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/o;->c:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/o;->a:I

    iget v4, p0, Landroid/support/v4/app/o;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/l;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 474
    return-void
.end method
