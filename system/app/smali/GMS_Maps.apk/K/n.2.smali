.class Lk/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:I

.field final synthetic c:Lk/M;


# direct methods
.method constructor <init>(Lk/M;Landroid/os/Handler;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lk/N;->c:Lk/M;

    iput-object p2, p0, Lk/N;->a:Landroid/os/Handler;

    iput p3, p0, Lk/N;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 75
    iget-object v0, p0, Lk/N;->c:Lk/M;

    iget-object v1, p0, Lk/N;->c:Lk/M;

    invoke-static {v1}, Lk/M;->a(Lk/M;)I

    move-result v1

    invoke-static {v0, v1}, Lk/M;->a(Lk/M;I)V

    .line 76
    iget-object v0, p0, Lk/N;->a:Landroid/os/Handler;

    iget-object v1, p0, Lk/N;->c:Lk/M;

    invoke-static {v1}, Lk/M;->b(Lk/M;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lk/N;->b:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method
