.class Lcom/google/googlenav/ui/wizard/gZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gY;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gY;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gY;Lcom/google/googlenav/ui/wizard/gU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gZ;-><init>(Lcom/google/googlenav/ui/wizard/gY;)V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .registers 6
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gB;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3d

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gz;

    .line 251
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/gT;->d(Lcom/google/googlenav/ui/wizard/gT;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->c()Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/gB;->a(Lcom/google/googlenav/friend/aF;)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 253
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gZ;->a:Lcom/google/googlenav/ui/wizard/gY;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gY;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->d(Lcom/google/googlenav/ui/wizard/gT;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 254
    return-void
.end method
