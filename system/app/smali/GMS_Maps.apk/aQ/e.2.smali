.class LaQ/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:LaQ/D;


# direct methods
.method constructor <init>(LaQ/D;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, LaQ/E;->b:LaQ/D;

    iput-object p2, p0, LaQ/E;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, LaQ/E;->b:LaQ/D;

    iget-object v0, v0, LaQ/D;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 37
    iget-object v0, p0, LaQ/E;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x90d

    const/4 v2, -0x1

    iget-object v3, p0, LaQ/E;->b:LaQ/D;

    iget-object v3, v3, LaQ/D;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 39
    :cond_16
    const/16 v0, 0x54

    const-string v1, "ac"

    const-string v2, "hc"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
