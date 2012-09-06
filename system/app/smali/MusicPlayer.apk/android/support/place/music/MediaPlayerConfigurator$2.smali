.class Landroid/support/place/music/MediaPlayerConfigurator$2;
.super Ljava/lang/Object;
.source "MediaPlayerConfigurator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/music/MediaPlayerConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/place/music/MediaPlayerConfigurator;


# direct methods
.method constructor <init>(Landroid/support/place/music/MediaPlayerConfigurator;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/place/music/MediaPlayerConfigurator$2;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/place/music/MediaPlayerConfigurator$2;->this$0:Landroid/support/place/music/MediaPlayerConfigurator;

    #calls: Landroid/support/place/music/MediaPlayerConfigurator;->restoreUnicastGroup()V
    invoke-static {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->access$500(Landroid/support/place/music/MediaPlayerConfigurator;)V

    .line 339
    return-void
.end method
