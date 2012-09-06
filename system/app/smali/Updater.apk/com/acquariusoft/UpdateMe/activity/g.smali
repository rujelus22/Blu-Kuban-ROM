.class final Lcom/acquariusoft/UpdateMe/activity/g;
.super Lcom/a/b/d;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/ViewImage;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/g;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    invoke-direct {p0}, Lcom/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/g;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->c:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/g;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/g;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-virtual {v0, p2}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/g;->a:Lcom/acquariusoft/UpdateMe/activity/ViewImage;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/ViewImage;->b:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a()V

    return-void
.end method
