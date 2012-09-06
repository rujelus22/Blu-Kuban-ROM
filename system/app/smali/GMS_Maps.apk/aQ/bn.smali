.class LaQ/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/google/googlenav/ui/bx;

.field final synthetic c:LaQ/bm;


# direct methods
.method constructor <init>(LaQ/bm;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, LaQ/bn;->c:LaQ/bm;

    iput-object p2, p0, LaQ/bn;->a:Landroid/widget/ImageView;

    iput-object p3, p0, LaQ/bn;->b:Lcom/google/googlenav/ui/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, LaQ/bn;->c:LaQ/bm;

    iget-object v1, p0, LaQ/bn;->a:Landroid/widget/ImageView;

    iget-object v2, p0, LaQ/bn;->b:Lcom/google/googlenav/ui/bx;

    invoke-static {v0, v1, v2}, LaQ/bm;->a(LaQ/bm;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    .line 114
    return-void
.end method
