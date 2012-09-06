.class Lcom/google/googlenav/mylocationnotifier/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/mylocationnotifier/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/l;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x76

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/l;->b(Lcom/google/googlenav/mylocationnotifier/l;)[Lcom/google/googlenav/ai;

    move-result-object v0

    aget-object v0, v0, p3

    .line 110
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->h()V

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v0}, Lcom/google/googlenav/mylocationnotifier/l;->c(Lcom/google/googlenav/mylocationnotifier/l;)V

    .line 116
    const-string v0, "n"

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->a(Lcom/google/googlenav/mylocationnotifier/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/bN;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_2d
    return-void

    .line 124
    :cond_2e
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/ai;)V

    .line 128
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->d(Lcom/google/googlenav/mylocationnotifier/l;)Lcom/google/googlenav/mylocationnotifier/d;

    move-result-object v1

    if-nez v1, :cond_4e

    .line 129
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    new-instance v3, Lcom/google/googlenav/mylocationnotifier/d;

    iget-object v4, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v4, v4, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    iget-object v5, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/google/googlenav/mylocationnotifier/d;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/mylocationnotifier/k;Lcom/google/googlenav/mylocationnotifier/l;Z)V

    invoke-static {v2, v3}, Lcom/google/googlenav/mylocationnotifier/l;->a(Lcom/google/googlenav/mylocationnotifier/l;Lcom/google/googlenav/mylocationnotifier/d;)Lcom/google/googlenav/mylocationnotifier/d;

    .line 136
    :cond_4e
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v1

    if-nez v1, :cond_6a

    .line 138
    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "i"

    invoke-static {v1}, Lcom/google/googlenav/bN;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/google/googlenav/mylocationnotifier/l;->a(Lcom/google/googlenav/mylocationnotifier/l;Ljava/lang/String;I)V

    .line 146
    :cond_6a
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/n;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-static {v1}, Lcom/google/googlenav/mylocationnotifier/l;->d(Lcom/google/googlenav/mylocationnotifier/l;)Lcom/google/googlenav/mylocationnotifier/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    goto :goto_2d
.end method
