.class Lcom/google/googlenav/ui/view/dialog/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/c;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/c;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/d;->a:Lcom/google/googlenav/ui/view/dialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/d;->a:Lcom/google/googlenav/ui/view/dialog/c;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/d;->a:Lcom/google/googlenav/ui/view/dialog/c;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/a;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 203
    return-void
.end method
