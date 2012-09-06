.class final Lcom/mobfox/video/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/at;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, " onCompletion Video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/at;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a()V

    return-void
.end method
