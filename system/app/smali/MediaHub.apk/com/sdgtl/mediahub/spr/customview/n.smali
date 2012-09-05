.class final Lcom/sdgtl/mediahub/spr/customview/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/m;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/sdgtl/mediahub/spr/ar;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/m;Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/n;->a:Lcom/sdgtl/mediahub/spr/customview/m;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/n;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/customview/n;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/n;->b:Landroid/app/Activity;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/n;->a:Lcom/sdgtl/mediahub/spr/customview/m;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/m;->a(Lcom/sdgtl/mediahub/spr/customview/m;)Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    move-result-object v0

    const v1, 0x7f0d0057

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/n;->c:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x0

    #calls: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finishiActivities(ILcom/sdgtl/mediahub/spr/ar;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$1(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;ILcom/sdgtl/mediahub/spr/ar;Z)V

    return-void
.end method
