.class LaQ/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:LaQ/Y;


# direct methods
.method constructor <init>(LaQ/Y;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, LaQ/Z;->b:LaQ/Y;

    iput-object p2, p0, LaQ/Z;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 109
    const/16 v0, 0x73

    const-string v1, "s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "t=s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LaQ/Z;->b:LaQ/Y;

    invoke-static {v5}, LaQ/Y;->a(LaQ/Y;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, LaQ/Z;->a:Lcom/google/googlenav/ui/g;

    iget-object v1, p0, LaQ/Z;->b:LaQ/Y;

    invoke-static {v1}, LaQ/Y;->b(LaQ/Y;)I

    move-result v1

    iget-object v2, p0, LaQ/Z;->b:LaQ/Y;

    invoke-static {v2}, LaQ/Y;->a(LaQ/Y;)I

    move-result v2

    iget-object v3, p0, LaQ/Z;->b:LaQ/Y;

    invoke-static {v3}, LaQ/Y;->c(LaQ/Y;)Lcom/google/googlenav/ca;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 115
    return-void
.end method
