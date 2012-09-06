.class final Lcom/anddoes/launcher/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

.field private final synthetic b:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/la;->a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/anddoes/launcher/la;->b:Landroid/widget/Gallery;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/la;->a:Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

    iget-object v1, p0, Lcom/anddoes/launcher/la;->b:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/WallpaperChooserDialogFragment;->a(Lcom/anddoes/launcher/WallpaperChooserDialogFragment;I)V

    .line 169
    return-void
.end method
