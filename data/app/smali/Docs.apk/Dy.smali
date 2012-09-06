.class public LDy;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:Landroid/text/Editable;

.field private final a:Landroid/view/LayoutInflater;

.field private final a:Landroid/view/View;

.field private a:Landroid/widget/Button;

.field private final a:Ljava/lang/String;

.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, LDy;->a:Landroid/view/View;

    .line 61
    iput-object p3, p0, LDy;->a:Landroid/text/Editable;

    .line 62
    iput-object p4, p0, LDy;->a:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, LDy;->a:Z

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LDy;->a:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method static synthetic a(LDy;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LDy;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(LDy;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LDy;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, LDy;->a:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 97
    iget-boolean v1, p0, LDy;->a:Z

    if-nez v1, :cond_c

    if-nez v0, :cond_15

    .line 98
    :cond_c
    iget-object v1, p0, LDy;->a:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 103
    :goto_11
    invoke-virtual {p0}, LDy;->dismiss()V

    .line 104
    return-void

    .line 100
    :cond_15
    iget-object v1, p0, LDy;->a:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_11
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LDy;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 112
    invoke-virtual {p0}, LDy;->dismiss()V

    .line 117
    :cond_7
    :goto_7
    return-void

    .line 113
    :cond_8
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 114
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, LDy;->a(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, LDy;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 72
    iget-object v1, p0, LDy;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 73
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 74
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    sget v0, LCB;->character_picker:I

    invoke-virtual {p0, v0}, LDy;->setContentView(I)V

    .line 78
    sget v0, LCA;->characterPicker:I

    invoke-virtual {p0, v0}, LDy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 79
    new-instance v1, LDz;

    invoke-virtual {p0}, LDy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LDz;-><init>(LDy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    sget v0, LCA;->cancel:I

    invoke-virtual {p0, v0}, LDy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LDy;->a:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, LDy;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, LDy;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, LDy;->a(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
