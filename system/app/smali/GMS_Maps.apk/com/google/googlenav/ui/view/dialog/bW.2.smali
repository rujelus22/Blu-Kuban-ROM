.class Lcom/google/googlenav/ui/view/dialog/bW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Laz/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;ILaz/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bW;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/bW;->a:I

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/bW;->b:Laz/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 333
    const-string v0, "c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/view/dialog/bW;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bW;->c:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bW;->b:Laz/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bO;->a(Lcom/google/googlenav/ui/view/dialog/bO;Laz/f;)V

    .line 337
    return-void
.end method
