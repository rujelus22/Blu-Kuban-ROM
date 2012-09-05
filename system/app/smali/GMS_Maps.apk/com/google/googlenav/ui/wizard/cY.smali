.class Lcom/google/googlenav/ui/wizard/cY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cW;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cW;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cY;->a:Lcom/google/googlenav/ui/wizard/cW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    if-ltz p3, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    :cond_5
    return-void
.end method
