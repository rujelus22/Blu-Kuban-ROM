.class final Lcom/mobfox/video/sdk/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bj;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bo;->a:Lcom/mobfox/video/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    iget-object v0, p0, Lcom/mobfox/video/sdk/bo;->a:Lcom/mobfox/video/sdk/bj;

    invoke-static {v0, p2}, Lcom/mobfox/video/sdk/bj;->c(Lcom/mobfox/video/sdk/bj;I)V

    return-void
.end method
