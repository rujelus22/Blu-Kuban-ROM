.class public Lcom/google/googlenav/ui/wizard/ij;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# static fields
.field private static b:Landroid/media/AudioManager;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/im;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 83
    return-void
.end method

.method static synthetic a(Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 1
    .parameter

    .prologue
    .line 51
    sput-object p0, Lcom/google/googlenav/ui/wizard/ij;->b:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ij;)Lcom/google/googlenav/ui/wizard/im;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    return-object v0
.end method

.method static synthetic e()Landroid/media/AudioManager;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/googlenav/ui/wizard/ij;->b:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    .line 123
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ij;->a()V

    .line 124
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    .line 125
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ij;->j()V

    .line 126
    return-void
.end method

.method public a(LZ/a;)I
    .registers 3
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x3

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/il;Ljava/util/EnumSet;Ljava/util/EnumSet;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/google/googlenav/ui/wizard/im;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/im;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/im;->a:Lcom/google/googlenav/ui/wizard/il;

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    iput-object p2, v0, Lcom/google/googlenav/ui/wizard/im;->b:Ljava/util/EnumSet;

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    iput-object p3, v0, Lcom/google/googlenav/ui/wizard/im;->c:Ljava/util/EnumSet;

    .line 102
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ij;->j()V

    .line 103
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->h:Lcom/google/googlenav/ui/view/android/bb;

    const v1, 0x7f100461

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 565
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 110
    new-instance v0, Lcom/google/googlenav/ui/wizard/in;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/in;-><init>(Lcom/google/googlenav/ui/wizard/ij;Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 111
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 112
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    .line 117
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 118
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ij;->a:Lcom/google/googlenav/ui/wizard/im;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/im;->a:Lcom/google/googlenav/ui/wizard/il;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/il;->a()V

    .line 136
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ij;->a()V

    .line 137
    return-void
.end method
