.class LNw;
.super Ljava/lang/Object;
.source "PunchSlideAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LNu;


# direct methods
.method constructor <init>(LNu;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, LNw;->a:LNu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, LNw;->a:LNu;

    invoke-static {v0}, LNu;->a(LNu;)LNx;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    iget-object v1, p0, LNw;->a:LNu;

    invoke-static {v1}, LNu;->a(LNu;)LNx;

    move-result-object v1

    invoke-interface {v1, v0}, LNx;->a(I)V

    .line 171
    :cond_1b
    return-void
.end method
