.class final Lcom/acquariusoft/UpdateMe/w;
.super Lcom/a/b/d;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/w;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    invoke-direct {p0}, Lcom/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/w;->a:Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/IconPreferenceOnline;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
