.class LaQ/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/T;


# direct methods
.method constructor <init>(LaQ/T;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, LaQ/U;->a:LaQ/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, LaQ/U;->a:LaQ/T;

    invoke-static {v0}, LaQ/T;->c(LaQ/T;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->F()Lcom/google/googlenav/ui/wizard/fn;

    move-result-object v0

    iget-object v1, p0, LaQ/U;->a:LaQ/T;

    invoke-static {v1}, LaQ/T;->a(LaQ/T;)Lcom/google/googlenav/ai;

    move-result-object v1

    iget-object v2, p0, LaQ/U;->a:LaQ/T;

    invoke-static {v2}, LaQ/T;->b(LaQ/T;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fn;->a(Lcom/google/googlenav/ai;ILaM/m;)V

    .line 91
    return-void
.end method
