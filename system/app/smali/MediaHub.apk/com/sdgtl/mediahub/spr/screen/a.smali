.class final Lcom/sdgtl/mediahub/spr/screen/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/a;->a:Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    :cond_13
    return-void
.end method
