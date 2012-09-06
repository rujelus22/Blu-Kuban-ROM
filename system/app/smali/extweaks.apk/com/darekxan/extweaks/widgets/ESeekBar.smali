.class public Lcom/darekxan/extweaks/widgets/ESeekBar;
.super Lcom/darekxan/extweaks/model/ASetting;
.source "ESeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private current:I

.field private currentTV:Landroid/widget/TextView;

.field private currentTVContent:Ljava/lang/String;

.field private initial:I

.field private max:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private min:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private output:Ljava/lang/String;

.field reversed:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field private seekBar:Landroid/widget/SeekBar;

.field private smax:I

.field private step:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private touched:Z

.field private tracking:Z

.field private unit:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/darekxan/extweaks/model/ASetting;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput p4, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->min:I

    .line 41
    iput p5, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->max:I

    .line 42
    iput p6, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->step:I

    .line 43
    iput-boolean p8, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->reversed:Z

    .line 44
    iput-object p7, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->unit:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    .line 110
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 111
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->touched:Z

    .line 113
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 6
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/darekxan/extweaks/model/ASetting;->getView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    sget v2, Lcom/darekxan/extweaks/d;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 57
    sget v0, Lcom/darekxan/extweaks/c;->g:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    .line 58
    sget v0, Lcom/darekxan/extweaks/c;->c:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->smax:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 61
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 63
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    return-object v1
.end method

.method public hasChanged()Z
    .registers 3

    .prologue
    .line 88
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->touched:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;->init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V

    .line 118
    invoke-interface {p2}, Lcom/darekxan/extweaks/i;->a()Lcom/darekxan/extweaks/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESeekBar;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/darekxan/extweaks/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    .line 119
    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->reversed:Z

    .line 120
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->max:I

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->min:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->step:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->smax:I

    .line 124
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->min:I

    invoke-static {v0, v1}, Lcom/darekxan/extweaks/j;->a(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->min:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->step:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    .line 126
    if-nez p3, :cond_33

    .line 127
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    .line 128
    :cond_33
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->tracking:Z

    if-nez v0, :cond_24

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESeekBar;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/widgets/ESeekBar;->notifyObservers(Ljava/lang/Object;)V

    .line 72
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->min:I

    iget v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->step:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTVContent:Ljava/lang/String;

    .line 73
    if-eqz p3, :cond_4f

    .line 74
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTVContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->touched:Z

    .line 78
    :cond_4f
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->tracking:Z

    .line 84
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 92
    iput-boolean v4, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->tracking:Z

    .line 94
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESeekBar;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->unit:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/widgets/ESeekBar;->notifyObservers(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public populateView()V
    .registers 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/ESeekBar;->hasView()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 132
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 133
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 134
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTVContent:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 135
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTVContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_1f
    :goto_1f
    return-void

    .line 137
    :cond_20
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 100
    iget v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    iput v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->current:I

    .line 101
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 102
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->initial:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 103
    iget-object v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->currentTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->output:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/widgets/ESeekBar;->touched:Z

    .line 106
    return-void
.end method
