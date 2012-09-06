.class Lcom/google/googlenav/ui/view/dialog/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/X;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/X;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/X;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/H;

    .line 190
    instance-of v1, v0, LaL/j;

    if-nez v1, :cond_13

    instance-of v1, v0, LaL/D;

    if-eqz v1, :cond_27

    .line 192
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/X;->b(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/ui/view/dialog/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/dialog/ah;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 212
    :cond_26
    :goto_26
    return-void

    .line 196
    :cond_27
    instance-of v1, v0, LaL/x;

    if-eqz v1, :cond_4f

    .line 197
    check-cast v0, LaL/x;

    invoke-virtual {v0}, LaL/x;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/X;->b(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/ui/view/dialog/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/Y;->a:Lcom/google/googlenav/ui/view/dialog/X;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/dialog/X;->a(Lcom/google/googlenav/ui/view/dialog/X;)Lcom/google/googlenav/friend/history/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v3

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/ah;->a(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_26

    .line 203
    :cond_4f
    instance-of v1, v0, LaL/d;

    if-eqz v1, :cond_5d

    .line 204
    check-cast v0, LaL/d;

    invoke-virtual {v0}, LaL/d;->d()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_26

    .line 208
    :cond_5d
    instance-of v1, v0, LaL/g;

    if-eqz v1, :cond_26

    .line 209
    check-cast v0, LaL/g;

    invoke-virtual {v0}, LaL/g;->d()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_26
.end method
