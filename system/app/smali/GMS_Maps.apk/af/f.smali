.class LaF/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Lah/s;

.field final synthetic b:Lcom/google/googlenav/ui/bx;

.field final synthetic c:LaF/c;


# direct methods
.method constructor <init>(LaF/c;Lah/s;Lcom/google/googlenav/ui/bx;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, LaF/f;->c:LaF/c;

    iput-object p2, p0, LaF/f;->a:Lah/s;

    iput-object p3, p0, LaF/f;->b:Lcom/google/googlenav/ui/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 713
    iget-object v0, p0, LaF/f;->a:Lah/s;

    iget-object v1, p0, LaF/f;->b:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 714
    iget-object v1, p0, LaF/f;->c:LaF/c;

    invoke-static {v1}, LaF/c;->e(LaF/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 715
    return-void
.end method
