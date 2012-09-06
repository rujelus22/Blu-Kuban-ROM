.class public LJY;
.super Ljava/lang/Object;
.source "FixedDelayScheduler.java"


# instance fields
.field private final a:I

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LJY;->a:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, LJY;->a:Ljava/lang/Runnable;

    .line 28
    iput p3, p0, LJY;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 36
    invoke-virtual {p0}, LJY;->b()V

    .line 37
    iget-object v0, p0, LJY;->a:Landroid/os/Handler;

    iget-object v1, p0, LJY;->a:Ljava/lang/Runnable;

    iget v2, p0, LJY;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, LJY;->a:Landroid/os/Handler;

    iget-object v1, p0, LJY;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
