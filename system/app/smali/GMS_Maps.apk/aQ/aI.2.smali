.class LaQ/aI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:LaQ/aL;

.field final synthetic c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field final synthetic d:LaQ/aE;


# direct methods
.method constructor <init>(LaQ/aE;Lcom/google/googlenav/ui/g;LaQ/aL;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, LaQ/aI;->d:LaQ/aE;

    iput-object p2, p0, LaQ/aI;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, LaQ/aI;->b:LaQ/aL;

    iput-object p4, p0, LaQ/aI;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 878
    iget-object v0, p0, LaQ/aI;->d:LaQ/aE;

    invoke-static {v0}, LaQ/aE;->d(LaQ/aE;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 879
    iget-object v0, p0, LaQ/aI;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x6a4

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 892
    :goto_11
    return-void

    .line 882
    :cond_12
    const/16 v0, 0x6f

    const-string v1, "rc"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 884
    iget-object v0, p0, LaQ/aI;->d:LaQ/aE;

    invoke-static {v0}, LaQ/aE;->c(LaQ/aE;)Lcom/google/googlenav/ai;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    .line 885
    :goto_22
    if-eqz v0, :cond_31

    .line 886
    iget-object v0, p0, LaQ/aI;->a:Lcom/google/googlenav/ui/g;

    check-cast v0, LaM/i;

    .line 887
    iget-object v1, p0, LaQ/aI;->d:LaQ/aE;

    invoke-static {v1}, LaQ/aE;->b(LaQ/aE;)I

    move-result v1

    invoke-virtual {v0, v1}, LaM/i;->b(I)V

    .line 889
    :cond_31
    iget-object v0, p0, LaQ/aI;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x906

    iget-object v2, p0, LaQ/aI;->b:LaQ/aL;

    iget v2, v2, LaQ/aL;->o:I

    iget-object v3, p0, LaQ/aI;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    goto :goto_11

    .line 884
    :cond_3f
    const/4 v0, 0x0

    goto :goto_22
.end method
