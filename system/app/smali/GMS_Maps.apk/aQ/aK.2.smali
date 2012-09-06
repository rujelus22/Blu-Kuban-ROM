.class LaQ/aK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Lah/s;

.field final synthetic b:Lcom/google/googlenav/ui/bx;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:LaQ/aE;


# direct methods
.method constructor <init>(LaQ/aE;Lah/s;Lcom/google/googlenav/ui/bx;Landroid/widget/ImageView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1184
    iput-object p1, p0, LaQ/aK;->d:LaQ/aE;

    iput-object p2, p0, LaQ/aK;->a:Lah/s;

    iput-object p3, p0, LaQ/aK;->b:Lcom/google/googlenav/ui/bx;

    iput-object p4, p0, LaQ/aK;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 1187
    iget-object v0, p0, LaQ/aK;->a:Lah/s;

    iget-object v1, p0, LaQ/aK;->b:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v0, v1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 1188
    iget-object v1, p0, LaQ/aK;->c:Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 1189
    return-void
.end method
