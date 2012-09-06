.class public Lcom/google/googlenav/ui/view/android/bX;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->a:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method private a(Landroid/view/View;I)Landroid/widget/TextView;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f1001ab

    .line 32
    if-nez p2, :cond_f

    .line 33
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bX;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040188

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 35
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bX;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 36
    const v1, 0x7f10001e

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/view/android/bX;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 39
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_31
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 42
    invoke-direct {p0, p2, v3}, Lcom/google/googlenav/ui/view/android/bX;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_3e
    return-object p2

    .line 44
    :cond_3f
    invoke-direct {p0, p2, v3}, Lcom/google/googlenav/ui/view/android/bX;->a(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3e

    :cond_49
    move-object v0, v1

    goto :goto_31
.end method
