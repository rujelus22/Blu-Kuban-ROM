.class final Lcom/anddoes/launcher/lb;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/WallpaperChooserDialogFragment;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/anddoes/launcher/lb;->a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 304
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/lb;->b:Landroid/view/LayoutInflater;

    .line 305
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/anddoes/launcher/lb;->a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/anddoes/launcher/WallpaperChooserDialogFragment;->a(Lcom/anddoes/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 316
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    if-nez p2, :cond_c

    .line 323
    iget-object v0, p0, Lcom/anddoes/launcher/lb;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 325
    :cond_c
    const v0, 0x7f08006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 329
    iget-object v1, p0, Lcom/anddoes/launcher/lb;->a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

    invoke-static {v1}, Lcom/anddoes/launcher/WallpaperChooserDialogFragment;->a(Lcom/anddoes/launcher/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/ld;

    .line 330
    iget v2, v1, Lcom/anddoes/launcher/ld;->c:I

    .line 332
    iget-object v1, v1, Lcom/anddoes/launcher/ld;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_37

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 341
    :goto_36
    return-object p2

    .line 337
    :cond_37
    const-string v0, "Launcher.WallpaperChooserDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error decoding thumbnail resId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for wallpaper #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method
