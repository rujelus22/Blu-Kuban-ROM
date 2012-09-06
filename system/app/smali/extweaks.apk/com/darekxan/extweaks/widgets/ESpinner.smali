.class public Lcom/darekxan/extweaks/widgets/ESpinner;
.super Lcom/darekxan/extweaks/model/ASetting;
.source "ESpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/darekxan/extweaks/model/ASetting;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/Adapter;

.field private initial:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SpinnerItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
    .end annotation
.end field

.field private selected:I

.field private spinner:Landroid/widget/Spinner;

.field private supress:Z

.field private touched:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/darekxan/extweaks/model/ASetting;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->supress:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/darekxan/extweaks/widgets/SpinnerItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->supress:Z

    .line 38
    iput-object p4, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->items:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->initial:I

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->touched:Z

    .line 100
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 6
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/darekxan/extweaks/model/ASetting;->getView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    sget v2, Lcom/darekxan/extweaks/d;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    sget v0, Lcom/darekxan/extweaks/c;->h:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->spinner:Landroid/widget/Spinner;

    .line 57
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->adapter:Landroid/widget/Adapter;

    .line 58
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 59
    sget v2, Lcom/darekxan/extweaks/d;->g:I

    .line 60
    iget-object v3, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->items:Ljava/util/List;

    invoke-direct {v0, p1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 58
    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->adapter:Landroid/widget/Adapter;

    .line 61
    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->adapter:Landroid/widget/Adapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    return-object v1
.end method

.method public hasChanged()Z
    .registers 3

    .prologue
    .line 44
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->initial:I

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->touched:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;->init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V

    .line 104
    invoke-interface {p2}, Lcom/darekxan/extweaks/i;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESpinner;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 109
    if-nez p3, :cond_21

    .line 110
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->initial:I

    .line 111
    :cond_21
    return-void

    .line 105
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SpinnerItem;

    .line 106
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SpinnerItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 107
    iget-object v3, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    goto :goto_15
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-boolean v1, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->supress:Z

    if-eqz v1, :cond_8

    .line 71
    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->supress:Z

    .line 81
    :goto_7
    return-void

    .line 75
    :cond_8
    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    if-eq v1, p3, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->touched:Z

    .line 76
    iput p3, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESpinner;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/darekxan/extweaks/widgets/SpinnerItem;

    .line 79
    invoke-virtual {v0}, Lcom/darekxan/extweaks/widgets/SpinnerItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/widgets/ESpinner;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public populateView()V
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESpinner;->hasView()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->spinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    :cond_d
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->initial:I

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->selected:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->supress:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->touched:Z

    .line 92
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->spinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESpinner;->initial:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 94
    return-void
.end method
