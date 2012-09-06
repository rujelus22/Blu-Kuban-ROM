.class LaQ/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:LaQ/aE;


# direct methods
.method constructor <init>(LaQ/aE;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, LaQ/aG;->b:LaQ/aE;

    iput-object p2, p0, LaQ/aG;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, LaQ/aG;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x2bc

    iget-object v2, p0, LaQ/aG;->b:LaQ/aE;

    invoke-static {v2}, LaQ/aE;->b(LaQ/aE;)I

    move-result v2

    iget-object v3, p0, LaQ/aG;->b:LaQ/aE;

    invoke-static {v3}, LaQ/aE;->c(LaQ/aE;)Lcom/google/googlenav/ai;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 735
    return-void
.end method
