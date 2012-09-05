.class final Lcom/sdgtl/mediahub/spr/contentProvider/g;
.super Lcom/sdgtl/mediahub/spr/contentProvider/p;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILandroid/os/Bundle;)J
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v0, p1, p2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;ILandroid/os/Bundle;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;)V

    return-wide v0
.end method

.method public final a(JI)J
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;JI)V

    return-wide p1
.end method

.method public final a(J)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-virtual {v0, p1, p2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(J)V

    return-void
.end method

.method public final a(Z)Z
    .registers 2

    return p1
.end method

.method public final b(J)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-static {v0, p1, p2}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a(Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;J)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/g;->a:Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/ContentProviderService;->a()Z

    move-result v0

    return v0
.end method
