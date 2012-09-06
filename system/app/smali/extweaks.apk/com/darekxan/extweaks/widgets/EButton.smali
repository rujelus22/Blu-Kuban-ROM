.class public Lcom/darekxan/extweaks/widgets/EButton;
.super Lcom/darekxan/extweaks/model/ASetting;
.source "EButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private label:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/darekxan/extweaks/model/ASetting;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/darekxan/extweaks/model/ASetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p4, p0, Lcom/darekxan/extweaks/widgets/EButton;->label:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 6
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/darekxan/extweaks/model/ASetting;->getView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    sget v2, Lcom/darekxan/extweaks/d;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    .line 40
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 42
    sget v0, Lcom/darekxan/extweaks/c;->a:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v2, p0, Lcom/darekxan/extweaks/widgets/EButton;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object v1
.end method

.method public hasChanged()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/EButton;->setChanged()V

    .line 56
    invoke-virtual {p0}, Lcom/darekxan/extweaks/widgets/EButton;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/darekxan/extweaks/widgets/EButton;->notifyObservers(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
