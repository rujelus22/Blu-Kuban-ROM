.class Lcom/google/googlenav/ui/view/dialog/bB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bA;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bB;->a:Lcom/google/googlenav/ui/view/dialog/bA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bB;->a:Lcom/google/googlenav/ui/view/dialog/bA;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bA;->b:LaM/m;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 79
    return-void
.end method
