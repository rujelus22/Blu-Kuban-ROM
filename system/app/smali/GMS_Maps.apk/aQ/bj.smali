.class LaQ/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Lcom/google/googlenav/aO;

.field final synthetic c:LaQ/bi;


# direct methods
.method constructor <init>(LaQ/bi;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/aO;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, LaQ/bj;->c:LaQ/bi;

    iput-object p2, p0, LaQ/bj;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, LaQ/bj;->b:Lcom/google/googlenav/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x11

    .line 172
    iget-object v0, p0, LaQ/bj;->a:Lcom/google/googlenav/ui/g;

    iget-object v1, p0, LaQ/bj;->b:Lcom/google/googlenav/aO;

    iget-object v1, v1, Lcom/google/googlenav/aO;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v2, v1}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 175
    return-void
.end method
