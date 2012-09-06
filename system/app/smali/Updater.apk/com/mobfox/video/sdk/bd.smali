.class final Lcom/mobfox/video/sdk/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bc;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/bc;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bd;->a:Lcom/mobfox/video/sdk/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mobfox/video/sdk/bd;->a:Lcom/mobfox/video/sdk/bc;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bc;->a(Lcom/mobfox/video/sdk/bc;)Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
