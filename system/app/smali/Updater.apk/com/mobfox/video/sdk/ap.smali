.class final Lcom/mobfox/video/sdk/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/ap;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "###########TRACKING SKIP INTERSTITIAL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/ap;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->n(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ap;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ap;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    return-void
.end method
