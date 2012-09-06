.class final Lcom/anddoes/launcher/fh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fh;->a:Lcom/anddoes/launcher/Launcher;

    .line 5455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/anddoes/launcher/fh;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    .line 5459
    return-void
.end method
