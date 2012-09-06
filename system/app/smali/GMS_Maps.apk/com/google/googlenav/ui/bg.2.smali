.class public Lcom/google/googlenav/ui/bG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/F;


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ai;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/googlenav/ui/bG;->a:Lcom/google/googlenav/ai;

    .line 67
    iput-boolean p2, p0, Lcom/google/googlenav/ui/bG;->b:Z

    .line 68
    return-void
.end method

.method public static a(Lcom/google/googlenav/ai;Z)Lcom/google/googlenav/ui/bG;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/googlenav/ui/bG;->a(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/google/googlenav/ui/bG;->b(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 28
    new-instance v0, Lcom/google/googlenav/ui/bG;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/bG;-><init>(Lcom/google/googlenav/ai;Z)V

    .line 30
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Lcom/google/googlenav/ai;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ai()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->af()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    move v0, v1

    .line 48
    :cond_15
    :goto_15
    return v0

    .line 44
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->h()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 48
    check-cast p0, Lcom/google/googlenav/W;

    invoke-virtual {p0}, Lcom/google/googlenav/W;->q()Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_15
.end method

.method private static b(Lcom/google/googlenav/ai;)Z
    .registers 2
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bG;->b(Landroid/view/View;)Lcom/google/googlenav/ui/bI;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 72
    check-cast p2, Lcom/google/googlenav/ui/bI;

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/bG;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bm()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/google/googlenav/ui/bH;->a(Ljava/lang/String;)I

    move-result v0

    .line 80
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bH;->a(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 82
    if-eqz v1, :cond_2f

    .line 83
    iget-object v1, p0, Lcom/google/googlenav/ui/bG;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bl()Z

    move-result v1

    iget-object v3, p0, Lcom/google/googlenav/ui/bG;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->T()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/bG;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/google/googlenav/ui/bH;->a(ZILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 89
    :goto_29
    iget-boolean v3, p0, Lcom/google/googlenav/ui/bG;->b:Z

    invoke-static {p2, v2, v0, v1, v3}, Lcom/google/googlenav/ui/bH;->a(Lcom/google/googlenav/ui/bI;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Z)V

    .line 90
    return-void

    .line 86
    :cond_2f
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/ui/bG;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bb()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f0106

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_29
.end method

.method public b(Landroid/view/View;)Lcom/google/googlenav/ui/bI;
    .registers 3
    .parameter

    .prologue
    .line 99
    invoke-static {p1}, Lcom/google/googlenav/ui/bH;->a(Landroid/view/View;)Lcom/google/googlenav/ui/bI;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 94
    const v0, 0x7f0401f0

    return v0
.end method
