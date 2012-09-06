.class LB;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lz;


# direct methods
.method constructor <init>(Lz;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, LB;->a:Lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 438
    iget-object v0, p0, LB;->a:Lz;

    iget-object v1, p0, LB;->a:Lz;

    iget-object v1, v1, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lz;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 439
    return-void
.end method
