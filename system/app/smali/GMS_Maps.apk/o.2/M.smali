.class Lo/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lo/b;

.field final synthetic b:Lo/L;


# direct methods
.method constructor <init>(Lo/L;Lo/b;)V
    .registers 3

    iput-object p1, p0, Lo/M;->b:Lo/L;

    iput-object p2, p0, Lo/M;->a:Lo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6

    iget-object v0, p0, Lo/M;->b:Lo/L;

    iget-object v0, v0, Lo/L;->a:Landroid/os/Handler;

    new-instance v1, Lo/N;

    invoke-direct {v1, p0}, Lo/N;-><init>(Lo/M;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
