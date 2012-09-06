.class Lcom/google/googlenav/ui/wizard/eM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/googlenav/ui/wizard/eE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eE;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p2, p0, Lcom/google/googlenav/ui/wizard/eM;->a:I

    .line 148
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eE;->a(Lcom/google/googlenav/ui/wizard/eE;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/eM;->a:I

    add-int/2addr v0, v1

    .line 153
    if-ltz v0, :cond_25

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eE;->b(Lcom/google/googlenav/ui/wizard/eE;)Lcom/google/googlenav/ui/wizard/eK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/eK;->a()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 154
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eM;->b:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eE;->a(Lcom/google/googlenav/ui/wizard/eE;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 156
    :cond_25
    return-void
.end method
