.class final Lcom/mobfox/video/sdk/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/ao;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

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

    const-string v1, "MobFoxRichMediaActivity mInterstitialClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/ao;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->p(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/q;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mobfox/video/sdk/ao;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->p(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/q;->c()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ao;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->p(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/q;->a()V

    :cond_2a
    return-void
.end method
