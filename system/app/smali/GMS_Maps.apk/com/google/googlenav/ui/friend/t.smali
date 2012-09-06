.class Lcom/google/googlenav/ui/friend/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/friend/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/friend/r;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/t;->a:Lcom/google/googlenav/ui/friend/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/t;->a:Lcom/google/googlenav/ui/friend/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/friend/r;->b(Lcom/google/googlenav/ui/friend/r;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    const/16 v1, 0x132

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 252
    return-void
.end method
