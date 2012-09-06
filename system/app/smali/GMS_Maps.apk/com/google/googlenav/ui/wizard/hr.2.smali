.class Lcom/google/googlenav/ui/wizard/hR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hQ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hQ;)V
    .registers 2
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hR;->a:Lcom/google/googlenav/ui/wizard/hQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hR;->a:Lcom/google/googlenav/ui/wizard/hQ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hQ;->a:Lcom/google/googlenav/ui/wizard/hG;

    const/16 v1, 0x5dd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hG;->a(IILjava/lang/Object;)Z

    .line 1039
    return-void
.end method
