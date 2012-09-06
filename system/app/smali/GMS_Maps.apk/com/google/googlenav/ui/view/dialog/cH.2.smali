.class Lcom/google/googlenav/ui/view/dialog/cH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cG;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cG;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cH;->a:Lcom/google/googlenav/ui/view/dialog/cG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cH;->a:Lcom/google/googlenav/ui/view/dialog/cG;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Lcom/google/googlenav/ui/view/dialog/cF;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cH;->a:Lcom/google/googlenav/ui/view/dialog/cG;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/cF;->c:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cH;->a:Lcom/google/googlenav/ui/view/dialog/cG;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Lcom/google/googlenav/ui/view/dialog/cF;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cH;->a:Lcom/google/googlenav/ui/view/dialog/cG;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cG;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->a(Lcom/google/googlenav/ui/view/dialog/cF;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 139
    return-void
.end method
