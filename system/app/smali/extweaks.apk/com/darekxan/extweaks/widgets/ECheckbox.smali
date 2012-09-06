.class public Lcom/darekxan/extweaks/widgets/ECheckbox;
.super Lcom/darekxan/extweaks/model/ASetting;
.source "ECheckbox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field chb:Landroid/widget/CheckBox;

.field private initial:Z

.field private label:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private state:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/darekxan/extweaks/model/ASetting;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p4, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->label:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->initial:Z

    .line 86
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 6
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/darekxan/extweaks/model/ASetting;->getView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    sget v2, Lcom/darekxan/extweaks/d;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 52
    sget v0, Lcom/darekxan/extweaks/c;->b:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->chb:Landroid/widget/CheckBox;

    .line 53
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->chb:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->chb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->chb:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object v1
.end method

.method public hasChanged()Z
    .registers 3

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    iget-boolean v1, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->initial:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method public init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;->init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V

    .line 90
    invoke-interface {p2}, Lcom/darekxan/extweaks/i;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ECheckbox;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    .line 91
    if-nez p3, :cond_1d

    .line 92
    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->initial:Z

    .line 94
    :cond_1d
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/widgets/ECheckbox;->setState(Ljava/lang/Boolean;)V

    .line 71
    if-eqz p2, :cond_2a

    const-string v0, "on"

    .line 72
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ECheckbox;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/widgets/ECheckbox;->notifyObservers(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 71
    :cond_2a
    const-string v0, "off"

    goto :goto_b
.end method

.method public populateView()V
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ECheckbox;->hasView()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->chb:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    :cond_d
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->chb:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->initial:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->initial:Z

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    .line 81
    return-void
.end method

.method public setState(Ljava/lang/Boolean;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ECheckbox;->state:Z

    .line 62
    return-void
.end method
