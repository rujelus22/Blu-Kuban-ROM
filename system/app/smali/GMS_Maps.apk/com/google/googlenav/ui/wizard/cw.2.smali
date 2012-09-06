.class Lcom/google/googlenav/ui/wizard/cW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/history/H;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aN;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cS;Lcom/google/googlenav/ui/view/dialog/aN;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cW;->b:Lcom/google/googlenav/ui/wizard/cS;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/view/dialog/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/view/dialog/aN;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/aN;->a()V

    .line 178
    return-void
.end method

.method public a(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cW;->a:Lcom/google/googlenav/ui/view/dialog/aN;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/view/dialog/aN;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 173
    return-void
.end method
