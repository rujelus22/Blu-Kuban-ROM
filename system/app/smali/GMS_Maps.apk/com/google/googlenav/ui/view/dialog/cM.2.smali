.class Lcom/google/googlenav/ui/view/dialog/cM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cK;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/dialog/cK;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cM;->a:Lcom/google/googlenav/ui/view/dialog/cK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/dialog/cK;Lcom/google/googlenav/ui/view/dialog/cL;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cM;-><init>(Lcom/google/googlenav/ui/view/dialog/cK;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cM;->a:Lcom/google/googlenav/ui/view/dialog/cK;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cK;->a(Lcom/google/googlenav/ui/view/dialog/cK;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    invoke-virtual {v0}, Lcom/google/googlenav/bS;->b()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cM;->a:Lcom/google/googlenav/ui/view/dialog/cK;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/cK;->a(Lcom/google/googlenav/ui/view/dialog/cK;I)V

    .line 163
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    return-void
.end method
