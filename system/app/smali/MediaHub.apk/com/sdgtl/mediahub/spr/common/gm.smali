.class final Lcom/sdgtl/mediahub/spr/common/gm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/c/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/gm;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/gm;->b:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/gm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/gm;->b:Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V

    return-void
.end method
