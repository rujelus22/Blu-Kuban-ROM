.class final Lcom/mobfox/video/sdk/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobfox/video/sdk/bz;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-string v0, "MOBFOX"

    const-string v1, "onPageLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;

    move-result-object v0

    iget v0, v0, Lcom/mobfox/video/sdk/g;->a:I

    if-lez v0, :cond_55

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->q(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    iget-boolean v0, v0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a:Z

    if-nez v0, :cond_55

    new-instance v0, Lcom/mobfox/video/sdk/be;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    iget-object v2, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/video/sdk/be;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->q(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;

    move-result-object v2

    iget v2, v2, Lcom/mobfox/video/sdk/g;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "MOBFOX"

    const-string v1, "onPageLoaded mInterstitialAutocloseTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;

    move-result-object v0

    iget v0, v0, Lcom/mobfox/video/sdk/g;->g:I

    if-lez v0, :cond_c2

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->s(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_9d

    new-instance v0, Lcom/mobfox/video/sdk/bc;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    iget-object v2, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/video/sdk/bc;-><init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->b(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->s(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->r(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/g;

    move-result-object v2

    iget v2, v2, Lcom/mobfox/video/sdk/g;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "MOBFOX"

    const-string v1, "onPageLoaded mInterstitialCanCloseTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->t(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->t(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->u(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    :cond_b3
    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->v(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->p(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/q;->e()V

    return-void

    :cond_c2
    iget-object v0, p0, Lcom/mobfox/video/sdk/ar;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->o(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    goto :goto_9d
.end method
