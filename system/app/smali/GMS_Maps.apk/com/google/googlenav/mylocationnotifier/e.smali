.class Lcom/google/googlenav/mylocationnotifier/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/mylocationnotifier/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/d;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/e;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/e;->a:Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/d;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/e;->a:Lcom/google/googlenav/mylocationnotifier/d;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/d;->a(Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/16 v1, 0x76

    const-string v2, "d"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
