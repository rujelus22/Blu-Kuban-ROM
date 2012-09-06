.class LaQ/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Landroid/util/Pair;

.field final synthetic c:LaQ/aE;


# direct methods
.method constructor <init>(LaQ/aE;Lcom/google/googlenav/ui/g;Landroid/util/Pair;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, LaQ/aF;->c:LaQ/aE;

    iput-object p2, p0, LaQ/aF;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, LaQ/aF;->b:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, LaQ/aF;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x2ce

    const/16 v2, 0x12

    iget-object v3, p0, LaQ/aF;->b:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 676
    return-void
.end method
