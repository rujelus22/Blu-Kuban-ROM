.class final Lcom/sdgtl/mediahub/spr/contentProvider/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/j;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/j;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;Z)V

    :goto_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/j;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->d(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/j;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;Z)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/j;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->e(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V

    goto :goto_6
.end method
