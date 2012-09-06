.class LaR/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:LaR/a;


# direct methods
.method constructor <init>(LaR/a;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, LaR/b;->d:LaR/a;

    iput-object p2, p0, LaR/b;->a:Ljava/util/List;

    iput-object p3, p0, LaR/b;->b:Ljava/util/List;

    iput-object p4, p0, LaR/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 5

    .prologue
    .line 106
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    iget-object v0, p0, LaR/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_48

    .line 107
    iget-object v0, p0, LaR/b;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    .line 108
    iget-object v1, p0, LaR/b;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 109
    iget-object v2, p0, LaR/b;->d:LaR/a;

    invoke-static {v2}, LaR/a;->a(LaR/a;)Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v2

    check-cast v2, LT/f;

    invoke-static {v1, v2}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 110
    iget-object v2, p0, LaR/b;->d:LaR/a;

    invoke-static {v2}, LaR/a;->a(LaR/a;)Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, LaR/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 111
    iget-object v0, p0, LaR/b;->d:LaR/a;

    iget-object v2, p0, LaR/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, LaR/a;->a(LaR/a;Landroid/view/View;Ljava/lang/String;I)V

    .line 106
    :cond_44
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 114
    :cond_48
    return-void
.end method
