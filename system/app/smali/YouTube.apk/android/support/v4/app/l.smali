.class final Landroid/support/v4/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/j;


# direct methods
.method constructor <init>(Landroid/support/v4/app/j;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/j;

    iput p2, p0, Landroid/support/v4/app/l;->a:I

    iput p3, p0, Landroid/support/v4/app/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/l;->c:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a_:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/l;->a:I

    iget v3, p0, Landroid/support/v4/app/l;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/j;->a(Ljava/lang/String;II)Z

    .line 474
    return-void
.end method
