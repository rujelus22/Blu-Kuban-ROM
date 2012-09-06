.class public LaQ/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/ui/bd;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bd;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    .line 48
    iput p2, p0, LaQ/bx;->b:I

    .line 49
    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/bd;)I
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    const v0, 0x7f0400c4

    .line 92
    :goto_9
    return v0

    .line 60
    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/bd;->r:I

    sparse-switch v0, :sswitch_data_38

    .line 92
    const v0, 0x7f0400b9

    goto :goto_9

    .line 62
    :sswitch_13
    const v0, 0x7f0400bc

    goto :goto_9

    .line 65
    :sswitch_17
    const v0, 0x7f0400dc

    goto :goto_9

    .line 68
    :sswitch_1b
    const v0, 0x7f040058

    goto :goto_9

    .line 72
    :sswitch_1f
    const v0, 0x7f0400ba

    goto :goto_9

    .line 75
    :sswitch_23
    const v0, 0x7f0400c3

    goto :goto_9

    .line 78
    :sswitch_27
    const v0, 0x7f0400da

    goto :goto_9

    .line 81
    :sswitch_2b
    const v0, 0x7f0400e6

    goto :goto_9

    .line 84
    :sswitch_2f
    const v0, 0x7f0400c2

    goto :goto_9

    .line 87
    :sswitch_33
    const v0, 0x7f04016f

    goto :goto_9

    .line 60
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_17
        0x3 -> :sswitch_1b
        0x4 -> :sswitch_1f
        0x9 -> :sswitch_23
        0xe -> :sswitch_2f
        0x18 -> :sswitch_27
        0x1d -> :sswitch_2b
        0x35 -> :sswitch_1f
        0x38 -> :sswitch_33
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 98
    new-instance v0, LaQ/bz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LaQ/bz;-><init>(LaQ/by;)V

    .line 99
    check-cast p1, Lcom/google/googlenav/ui/android/TemplateView;

    iput-object p1, v0, LaQ/bz;->a:Lcom/google/googlenav/ui/android/TemplateView;

    .line 100
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 105
    check-cast p2, LaQ/bz;

    .line 106
    iget-object v0, p2, LaQ/bz;->a:Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 108
    iget-object v0, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    iget-object v0, p2, LaQ/bz;->a:Lcom/google/googlenav/ui/android/TemplateView;

    check-cast v0, Lcom/google/googlenav/ui/android/EditableTemplateView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/EditableTemplateView;->setDialogActionHandler(Lcom/google/googlenav/ui/g;)V

    .line 112
    :cond_18
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    iget v0, v0, Lcom/google/googlenav/ui/bd;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 116
    iget-object v0, p2, LaQ/bz;->a:Lcom/google/googlenav/ui/android/TemplateView;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    .line 118
    :cond_31
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    iget v0, v0, Lcom/google/googlenav/ui/bd;->r:I

    sparse-switch v0, :sswitch_data_c

    .line 131
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 129
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 126
    nop

    :sswitch_data_c
    .sparse-switch
        0x2 -> :sswitch_9
        0x38 -> :sswitch_9
    .end sparse-switch
.end method

.method public b()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, LaQ/bx;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    invoke-static {v0}, LaQ/bx;->a(Lcom/google/googlenav/ui/bd;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/google/googlenav/ui/bd;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, LaQ/bx;->a:Lcom/google/googlenav/ui/bd;

    return-object v0
.end method
