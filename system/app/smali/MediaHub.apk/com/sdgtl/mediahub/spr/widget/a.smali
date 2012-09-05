.class final Lcom/sdgtl/mediahub/spr/widget/a;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/widget/a;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/widget/a;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/a;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    return-void
.end method
