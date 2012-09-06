.class final Lcom/mobfox/video/sdk/bh;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/mobfox/video/sdk/bh;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/mobfox/video/sdk/bh;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/mobfox/video/sdk/bh;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/mobfox/video/sdk/bh;->b:Landroid/app/Activity;

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

    const-string v1, "###########TRACKING VIDEO TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/bh;->b:Landroid/app/Activity;

    new-instance v1, Lcom/mobfox/video/sdk/bi;

    invoke-direct {v1, p0}, Lcom/mobfox/video/sdk/bi;-><init>(Lcom/mobfox/video/sdk/bh;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
