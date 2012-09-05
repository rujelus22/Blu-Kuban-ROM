.class final Lcom/sdgtl/mediahub/spr/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/widget/d;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/d;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    return-void
.end method
