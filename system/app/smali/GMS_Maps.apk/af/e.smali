.class LaF/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ay;

.field final synthetic b:LaF/c;


# direct methods
.method constructor <init>(LaF/c;Lcom/google/googlenav/ay;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, LaF/e;->b:LaF/c;

    iput-object p2, p0, LaF/e;->a:Lcom/google/googlenav/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, LaF/e;->b:LaF/c;

    invoke-static {v0}, LaF/c;->b(LaF/c;)Lcom/google/googlenav/ui/wizard/hg;

    move-result-object v0

    iget-object v1, p0, LaF/e;->a:Lcom/google/googlenav/ay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ay;)V

    .line 645
    return-void
.end method
