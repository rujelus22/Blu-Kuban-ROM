.class Lcom/google/android/maps/driveabout/app/cZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/view/View;

.field private g:Lo/x;

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    .line 49
    const v0, 0x7f10012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f100122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f100130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f100131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/da;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/da;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/RouteSelectorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/cZ;->h:Z

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/cX;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cZ;)Lo/x;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->g:Lo/x;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 82
    if-gez p1, :cond_b

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_a
    return-void

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(IIZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_a
.end method

.method public a(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 93
    if-eqz p2, :cond_14

    .line 94
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_13
    :goto_13
    return-void

    .line 99
    :cond_14
    if-gez p1, :cond_25

    .line 100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 102
    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(IZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1b
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 66
    if-nez p1, :cond_b

    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_a
    return-void

    .line 69
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->h:Z

    if-eqz v0, :cond_26

    .line 72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d008c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 74
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->g:Lo/x;

    invoke-virtual {v0}, Lo/x;->E()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    .line 77
    :cond_38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/es;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_a
.end method

.method public a(Lo/x;)V
    .registers 6
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cZ;->g:Lo/x;

    .line 136
    invoke-virtual {p1}, Lo/x;->p()I

    move-result v0

    invoke-virtual {p1}, Lo/x;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(II)V

    .line 138
    invoke-virtual {p1}, Lo/x;->o()I

    move-result v0

    invoke-virtual {p1}, Lo/x;->y()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cZ;->a(IZ)V

    .line 139
    invoke-virtual {p1}, Lo/x;->w()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    .line 140
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->a:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->g:Lo/x;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lo/x;->p()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;Lo/x;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cZ;->a(Ljava/lang/String;)V

    .line 145
    :goto_32
    return-void

    .line 143
    :cond_33
    invoke-virtual {p1}, Lo/x;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cZ;->a(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_24

    const v0, 0x7f090079

    :goto_b
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cZ;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 128
    return-void

    .line 121
    :cond_24
    const v0, 0x7f09007a

    goto :goto_b
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cZ;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 132
    return-void
.end method
