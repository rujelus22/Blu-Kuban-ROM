.class final Lcom/sdgtl/mediahub/spr/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/am;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/widget/c;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/widget/c;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/widget/c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/c;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    invoke-static {p1}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->H:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/widget/c;->a:Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/widget/c;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;->a(Lcom/sdgtl/mediahub/spr/widget/MediaHubWidget;Landroid/content/Context;)V

    goto :goto_2
.end method
