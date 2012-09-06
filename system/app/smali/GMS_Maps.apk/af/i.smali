.class LaF/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaF/c;


# direct methods
.method constructor <init>(LaF/c;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, LaF/i;->a:LaF/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, LaF/i;->a:LaF/c;

    invoke-static {v0}, LaF/c;->b(LaF/c;)Lcom/google/googlenav/ui/wizard/hg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hg;->e()V

    .line 357
    return-void
.end method
