.class public LabA;
.super LIh;
.source "PreHoneycombActionBarHelper.java"


# instance fields
.field private a:LIB;

.field private final a:LIC;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILIC;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, LIh;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 63
    iput-object p4, p0, LabA;->a:LIC;

    .line 64
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, LabA;->a:LIB;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, LabA;->a:LIB;

    invoke-interface {v0}, LIB;->a()V

    .line 146
    :cond_9
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 132
    sget v0, LcR;->launcher_docs_icon:I

    if-ne p1, v0, :cond_6

    .line 133
    sget p1, LcR;->topbar_docshome:I

    .line 136
    :cond_6
    iget-object v0, p0, LabA;->a:LIB;

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, p0, LabA;->a:LIB;

    invoke-interface {v0, p1}, LIB;->setLogo(I)V

    .line 139
    :cond_f
    return-void
.end method

.method public a(LIB;)V
    .registers 4
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, LabA;->a:LIB;

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, LabA;->a:LIB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LIB;->setListener(LIC;)V

    .line 104
    :cond_a
    invoke-virtual {p0}, LabA;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LIB;->setAccountName(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, LabA;->a:LIC;

    invoke-interface {p1, v0}, LIB;->setListener(LIC;)V

    .line 106
    iput-object p1, p0, LabA;->a:LIB;

    .line 107
    return-void
.end method

.method public a(Landroid/view/MenuItem;LIl;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public a(Landroid/widget/Button;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, LIh;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, LabA;->a:LIB;

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, LabA;->a:LIB;

    invoke-interface {v0, p2}, LIB;->setAccountName(Ljava/lang/String;)V

    .line 77
    :cond_c
    if-eqz p1, :cond_11

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_11
    return-void
.end method

.method public a(Landroid/widget/Button;[Landroid/accounts/Account;LIj;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_b

    .line 93
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    const/16 v0, 0x8

    :goto_8
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :cond_b
    return-void

    .line 93
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, LabA;->a:Landroid/app/Activity;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 116
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, LabA;->a:LIB;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, LabA;->a:LIB;

    invoke-interface {v0, p1, p2}, LIB;->setTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_9
    return-void
.end method
