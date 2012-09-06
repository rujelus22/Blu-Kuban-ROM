.class Lcom/google/googlenav/mylocationnotifier/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/mylocationnotifier/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/l;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/m;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/m;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 90
    const/16 v0, 0x76

    const-string v1, "e"

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/m;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v2}, Lcom/google/googlenav/mylocationnotifier/l;->a(Lcom/google/googlenav/mylocationnotifier/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/bN;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
