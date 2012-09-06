.class Lcom/google/googlenav/ui/view/dialog/bX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laz/f;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;Laz/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bX;->b:Lcom/google/googlenav/ui/view/dialog/bS;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bX;->a:Laz/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bX;->b:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bX;->a:Laz/f;

    invoke-virtual {v0, v1}, Laz/a;->a(Laz/f;)I

    .line 347
    return-void
.end method
