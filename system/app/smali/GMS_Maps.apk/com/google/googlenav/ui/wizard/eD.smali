.class Lcom/google/googlenav/ui/wizard/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ec;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ec;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/ec;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ec;->b(Lcom/google/googlenav/ui/wizard/ec;)Lcom/google/googlenav/ui/wizard/eg;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ed;->a:Lcom/google/googlenav/ui/wizard/ec;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ec;->a(Lcom/google/googlenav/ui/wizard/ec;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/ee;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ee;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/eg;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 120
    return-void
.end method
