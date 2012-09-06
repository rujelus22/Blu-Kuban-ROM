.class final Lcom/anddoes/launcher/kr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/kq;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/kq;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/kr;->a:Lcom/anddoes/launcher/kq;

    iput p2, p0, Lcom/anddoes/launcher/kr;->b:I

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/anddoes/launcher/kr;->a:Lcom/anddoes/launcher/kq;

    invoke-static {v0}, Lcom/anddoes/launcher/kq;->a(Lcom/anddoes/launcher/kq;)Lcom/anddoes/launcher/TabConfigActivity;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/kr;->b:I

    invoke-static {v0, v1}, Lcom/anddoes/launcher/TabConfigActivity;->a(Lcom/anddoes/launcher/TabConfigActivity;I)V

    .line 262
    return-void
.end method
