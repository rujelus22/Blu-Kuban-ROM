.class final Lcom/mobfox/video/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobfox/video/sdk/y;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/aq;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "###########RESET AUTOCLOSE INTERSTITIAL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/aq;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/aq;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->q(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/mobfox/video/sdk/aq;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->q(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mobfox/video/sdk/aq;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Ljava/util/Timer;)V

    :cond_2c
    return-void
.end method
