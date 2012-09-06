.class Li/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Li/b;

.field final synthetic b:Li/O;


# direct methods
.method constructor <init>(Li/O;Li/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Li/P;->b:Li/O;

    iput-object p2, p0, Li/P;->a:Li/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Li/P;->b:Li/O;

    iget-object v0, v0, Li/O;->a:Landroid/os/Handler;

    new-instance v1, Li/Q;

    invoke-direct {v1, p0}, Li/Q;-><init>(Li/P;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    return-void
.end method
