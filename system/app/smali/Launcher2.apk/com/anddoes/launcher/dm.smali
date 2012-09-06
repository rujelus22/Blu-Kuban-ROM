.class final Lcom/anddoes/launcher/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/dl;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/dl;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/dm;->a:Lcom/anddoes/launcher/dl;

    iput p2, p0, Lcom/anddoes/launcher/dm;->b:I

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/anddoes/launcher/dm;->a:Lcom/anddoes/launcher/dl;

    invoke-static {v0}, Lcom/anddoes/launcher/dl;->a(Lcom/anddoes/launcher/dl;)Lcom/anddoes/launcher/GroupConfigActivity;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/dm;->b:I

    invoke-static {v0, p1, v1}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;Landroid/view/View;I)V

    .line 488
    return-void
.end method
