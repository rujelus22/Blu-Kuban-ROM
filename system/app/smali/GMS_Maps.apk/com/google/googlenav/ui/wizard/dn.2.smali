.class Lcom/google/googlenav/ui/wizard/dN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dL;)V
    .registers 2
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dN;->a:Lcom/google/googlenav/ui/wizard/dL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 773
    if-ltz p3, :cond_5

    .line 774
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 776
    :cond_5
    return-void
.end method
