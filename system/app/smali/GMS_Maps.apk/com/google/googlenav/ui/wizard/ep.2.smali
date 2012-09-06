.class Lcom/google/googlenav/ui/wizard/eP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eO;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eP;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eP;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->a()V

    .line 141
    return-void
.end method
