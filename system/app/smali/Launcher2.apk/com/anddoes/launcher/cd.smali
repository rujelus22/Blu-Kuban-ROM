.class final Lcom/anddoes/launcher/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/EditShortcutActivity;

.field private final synthetic b:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/cd;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    iput-object p2, p0, Lcom/anddoes/launcher/cd;->b:Landroid/widget/ListAdapter;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/anddoes/launcher/cd;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/gh;

    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0}, Lcom/anddoes/launcher/gh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 279
    invoke-static {}, Lcom/anddoes/launcher/gg;->a()Lcom/anddoes/launcher/gg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/anddoes/launcher/gg;->a(Lcom/anddoes/launcher/gh;)Landroid/content/Intent;

    move-result-object v3

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 281
    iget-object v3, p0, Lcom/anddoes/launcher/cd;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-virtual {v3}, Lcom/anddoes/launcher/EditShortcutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Lcom/anddoes/launcher/gh;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 284
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Lcom/anddoes/launcher/cd;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    return-void
.end method
