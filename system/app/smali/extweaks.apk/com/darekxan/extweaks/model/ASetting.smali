.class public abstract Lcom/darekxan/extweaks/model/ASetting;
.super Ljava/util/Observable;
.source "ASetting.java"

# interfaces
.implements Lcom/darekxan/extweaks/model/a;


# annotations
.annotation runtime Lorg/simpleframework/xml/Element;
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field private hasView:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field protected sif:Lcom/darekxan/extweaks/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/darekxan/extweaks/model/ASetting;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/darekxan/extweaks/model/ASetting;->description:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/darekxan/extweaks/model/ASetting;->action:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/darekxan/extweaks/model/ASetting;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/darekxan/extweaks/model/ASetting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 5
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    sget v1, Lcom/darekxan/extweaks/d;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    sget v1, Lcom/darekxan/extweaks/c;->f:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/darekxan/extweaks/model/ASetting;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/darekxan/extweaks/j;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    sget v1, Lcom/darekxan/extweaks/c;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/darekxan/extweaks/model/ASetting;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/darekxan/extweaks/j;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method

.method protected hasView()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/darekxan/extweaks/model/ASetting;->hasView:Z

    return v0
.end method

.method public init(Lcom/darekxan/extweaks/f;Lcom/darekxan/extweaks/i;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    if-nez p3, :cond_24

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/darekxan/extweaks/a;->a(Lcom/darekxan/extweaks/f;)Lcom/darekxan/extweaks/widgets/SettingsRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/darekxan/extweaks/widgets/SettingsRoot;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/darekxan/extweaks/model/ASetting;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/model/ASetting;->action:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Lcom/darekxan/extweaks/model/ASetting;->addObserver(Ljava/util/Observer;)V

    .line 63
    iput-object p2, p0, Lcom/darekxan/extweaks/model/ASetting;->sif:Lcom/darekxan/extweaks/i;

    .line 65
    :cond_24
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/darekxan/extweaks/model/ASetting;->hasView:Z

    .line 89
    return-void
.end method

.method public onViewCreated()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/darekxan/extweaks/model/ASetting;->hasView:Z

    .line 94
    return-void
.end method

.method public populateView()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method
