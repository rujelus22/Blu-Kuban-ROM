.class LD;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lz;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lz;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, LD;->a:Lz;

    iput p2, p0, LD;->a:I

    iput p3, p0, LD;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 473
    iget-object v0, p0, LD;->a:Lz;

    iget-object v1, p0, LD;->a:Lz;

    iget-object v1, v1, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, LD;->a:I

    iget v4, p0, LD;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lz;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 474
    return-void
.end method
