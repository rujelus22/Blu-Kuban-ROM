.class Lcom/google/googlenav/ui/wizard/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/e;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/k;->a:Lcom/google/googlenav/ui/wizard/e;

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
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/k;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->c(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_25

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/k;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->c(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/n;

    .line 234
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/k;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/e;->a(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/wizard/q;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/n;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 236
    :cond_25
    return-void
.end method
