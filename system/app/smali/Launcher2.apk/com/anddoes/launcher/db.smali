.class final Lcom/anddoes/launcher/db;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/cx;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/cx;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    .line 278
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    invoke-static {v0}, Lcom/anddoes/launcher/cx;->a(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 282
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    invoke-static {v0}, Lcom/anddoes/launcher/cx;->a(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/CellLayout;->b(Lcom/anddoes/launcher/cx;)V

    .line 284
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v0, v0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_6b

    .line 285
    const-string v0, "NONE"

    iget-object v1, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    invoke-static {v1}, Lcom/anddoes/launcher/cx;->b(Lcom/anddoes/launcher/cx;)Lcom/anddoes/launcher/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-object v1, v1, Lcom/anddoes/launcher/preference/f;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 286
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v0, v0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    invoke-static {v0}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :goto_38
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v0, v0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    iget-object v0, v0, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v0}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 291
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v0, v0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    invoke-static {v0}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v0, v0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    invoke-static {v0}, Lcom/anddoes/launcher/FolderIcon;->b(Lcom/anddoes/launcher/FolderIcon;)Lcom/anddoes/launcher/BubbleTextView;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/anddoes/launcher/cj;

    iget-object v2, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v2, v2, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    iget-object v2, v2, Lcom/anddoes/launcher/FolderIcon;->b:Lcom/anddoes/launcher/dd;

    invoke-virtual {v2}, Lcom/anddoes/launcher/dd;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    .line 292
    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/anddoes/launcher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_6b
    return-void

    .line 288
    :cond_6c
    iget-object v0, p0, Lcom/anddoes/launcher/db;->a:Lcom/anddoes/launcher/cx;

    iget-object v0, v0, Lcom/anddoes/launcher/cx;->e:Lcom/anddoes/launcher/FolderIcon;

    invoke-static {v0}, Lcom/anddoes/launcher/FolderIcon;->a(Lcom/anddoes/launcher/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_38
.end method
