.class public Lcom/google/android/maps/PlacesRefinementLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/googlenav/ui/wizard/gi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->b:Lcom/google/googlenav/ui/wizard/gi;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->setWillNotDraw(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->b:Lcom/google/googlenav/ui/wizard/gi;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->setWillNotDraw(Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->b:Lcom/google/googlenav/ui/wizard/gi;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/PlacesRefinementLinearLayout;->setWillNotDraw(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->b:Lcom/google/googlenav/ui/wizard/gi;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->b:Lcom/google/googlenav/ui/wizard/gi;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->ae_()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 54
    const/16 v0, 0x57

    const-string v1, "ref"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->a:Ljava/lang/String;

    .line 64
    :cond_3c
    return-void
.end method

.method public setPlacesWizardActions(Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gi;

    iput-object v0, p0, Lcom/google/android/maps/PlacesRefinementLinearLayout;->b:Lcom/google/googlenav/ui/wizard/gi;

    .line 68
    return-void
.end method
