.class final Lcom/sdgtl/mediahub/spr/customview/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/e;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/h;->a:Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/h;->a:Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/e;->a()V

    return-void
.end method
