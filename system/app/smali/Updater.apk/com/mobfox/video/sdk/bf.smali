.class final Lcom/mobfox/video/sdk/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/be;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/be;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bf;->a:Lcom/mobfox/video/sdk/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/bf;->a:Lcom/mobfox/video/sdk/be;

    invoke-static {v0}, Lcom/mobfox/video/sdk/be;->a(Lcom/mobfox/video/sdk/be;)Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bf;->a:Lcom/mobfox/video/sdk/be;

    invoke-static {v0}, Lcom/mobfox/video/sdk/be;->a(Lcom/mobfox/video/sdk/be;)Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    return-void
.end method
