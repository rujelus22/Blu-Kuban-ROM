.class final Lcom/mobfox/video/sdk/bc;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

.field private final b:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method public constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/mobfox/video/sdk/bc;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/mobfox/video/sdk/bc;->b:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    return-void
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/bc;)Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bc;->b:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 3

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "###########TRACKING CAN CLOSE INTERSTITIAL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bc;->b:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->o(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bc;->b:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mobfox/video/sdk/bc;->b:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    new-instance v1, Lcom/mobfox/video/sdk/bd;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/bd;-><init>(Lcom/mobfox/video/sdk/bc;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method
