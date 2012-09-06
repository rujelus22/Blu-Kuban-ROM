.class LaQ/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bx;

.field final synthetic b:LaQ/aL;

.field final synthetic c:LaQ/aE;


# direct methods
.method constructor <init>(LaQ/aE;Lcom/google/googlenav/ui/bx;LaQ/aL;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, LaQ/aH;->c:LaQ/aE;

    iput-object p2, p0, LaQ/aH;->a:Lcom/google/googlenav/ui/bx;

    iput-object p3, p0, LaQ/aH;->b:LaQ/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 4

    .prologue
    .line 795
    iget-object v0, p0, LaQ/aH;->c:LaQ/aE;

    iget-object v1, p0, LaQ/aH;->a:Lcom/google/googlenav/ui/bx;

    iget-object v2, p0, LaQ/aH;->b:LaQ/aL;

    iget-object v2, v2, LaQ/aL;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, LaQ/aE;->a(LaQ/aE;Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V

    .line 796
    return-void
.end method
