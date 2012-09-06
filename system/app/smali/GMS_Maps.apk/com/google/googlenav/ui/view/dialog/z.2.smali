.class Lcom/google/googlenav/ui/view/dialog/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bi;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/X;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/X;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/Z;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Z;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/X;->c(Lcom/google/googlenav/ui/view/dialog/X;)LaL/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LaL/l;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 219
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Z;->a:Lcom/google/googlenav/ui/view/dialog/X;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/X;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 220
    return-void
.end method
