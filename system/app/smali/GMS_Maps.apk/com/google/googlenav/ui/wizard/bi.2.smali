.class Lcom/google/googlenav/ui/wizard/bI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bH;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bI;->b:Lcom/google/googlenav/ui/wizard/bH;

    iput p2, p0, Lcom/google/googlenav/ui/wizard/bI;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bI;->b:Lcom/google/googlenav/ui/wizard/bH;

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/googlenav/ui/wizard/bI;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bH;->a(IILjava/lang/Object;)Z

    .line 140
    return-void
.end method
