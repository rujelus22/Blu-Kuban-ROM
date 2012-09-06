.class LaQ/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/ao;

.field private final b:LaQ/aD;

.field private final c:LaS/h;

.field private final d:LaQ/aC;


# direct methods
.method public constructor <init>(LaQ/ao;LaQ/aD;LaS/h;LaQ/aC;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, LaQ/aA;->a:LaQ/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, LaQ/aA;->b:LaQ/aD;

    .line 85
    iput-object p3, p0, LaQ/aA;->c:LaS/h;

    .line 86
    iput-object p4, p0, LaQ/aA;->d:LaQ/aC;

    .line 87
    return-void
.end method

.method private a()LaQ/aB;
    .registers 4

    .prologue
    .line 90
    sget-object v0, LaQ/aB;->a:LaQ/aB;

    .line 93
    iget-object v1, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v1, v1, LaQ/aD;->b:LaS/c;

    invoke-virtual {v1}, LaS/c;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v1, v1, LaQ/aD;->b:LaS/c;

    invoke-virtual {v1}, LaS/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 96
    sget-object v0, LaQ/aB;->b:LaQ/aB;

    .line 99
    :cond_1c
    iget-object v1, p0, LaQ/aA;->c:LaS/h;

    sget-object v2, LaS/e;->c:LaS/e;

    invoke-virtual {v1, v2}, LaS/h;->a(LaS/e;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v1, v1, LaQ/aD;->b:LaS/c;

    invoke-virtual {v1}, LaS/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, LaQ/aA;->c:LaS/h;

    invoke-virtual {v1}, LaS/h;->l()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 103
    sget-object v0, LaQ/aB;->c:LaQ/aB;

    .line 106
    :cond_40
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v0, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v0, v0, LaQ/aD;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, LaQ/aA;->c:LaS/h;

    iget-object v1, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v1, v1, LaQ/aD;->b:LaS/c;

    iget-object v2, p0, LaQ/aA;->a:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaS/a;->a(LaS/h;LaS/c;Lcom/google/googlenav/ai;)V

    .line 116
    invoke-static {}, LaS/j;->a()LaS/j;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 117
    iget-object v0, p0, LaQ/aA;->a:LaQ/ao;

    invoke-static {v0}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, LaS/j;->a()LaS/j;

    move-result-object v1

    iget-object v2, p0, LaQ/aA;->c:LaS/h;

    invoke-virtual {v2}, LaS/h;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LaQ/aA;->c:LaS/h;

    invoke-virtual {v3}, LaS/h;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v4, v4, LaQ/aD;->b:LaS/c;

    invoke-virtual {v4}, LaS/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    :cond_42
    invoke-direct {p0}, LaQ/aA;->a()LaQ/aB;

    move-result-object v0

    .line 128
    iget-object v1, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v1, v1, LaQ/aD;->b:LaS/c;

    invoke-virtual {v1}, LaS/c;->e()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 129
    iget-object v1, p0, LaQ/aA;->a:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->b(LaQ/ao;)Lcom/google/googlenav/be;

    move-result-object v1

    iget-object v2, p0, LaQ/aA;->a:LaQ/ao;

    invoke-static {v2}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v2

    iget-object v3, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v3, v3, LaQ/aD;->b:LaS/c;

    invoke-virtual {v3}, LaS/c;->f()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/be;->b(Lcom/google/googlenav/ai;ILcom/google/googlenav/bf;)V

    .line 133
    :cond_68
    iget-object v1, p0, LaQ/aA;->a:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->a(LaQ/ao;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v1

    invoke-virtual {v1}, LaS/o;->a()V

    .line 136
    iget-object v1, p0, LaQ/aA;->a:LaQ/ao;

    invoke-static {v1}, LaQ/ao;->c(LaQ/ao;)LaM/aP;

    move-result-object v1

    invoke-virtual {v1, v5}, LaM/aP;->d(Z)V

    .line 138
    sget-object v1, LaQ/az;->a:[I

    invoke-virtual {v0}, LaQ/aB;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_c4

    .line 149
    new-instance v0, Lcom/google/googlenav/ui/android/c;

    iget-object v1, p0, LaQ/aA;->d:LaQ/aC;

    iget-object v1, v1, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/c;-><init>(Landroid/content/Context;)V

    .line 151
    iget-object v1, p0, LaQ/aA;->c:LaS/h;

    invoke-virtual {v1}, LaS/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/c;->b(Ljava/lang/String;)V

    .line 154
    :goto_9f
    return-void

    .line 140
    :pswitch_a0
    iget-object v0, p0, LaQ/aA;->a:LaQ/ao;

    iget-object v1, p0, LaQ/aA;->d:LaQ/aC;

    iget-object v1, v1, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LaQ/aA;->c:LaS/h;

    invoke-static {v0, v1, v2}, LaQ/ao;->a(LaQ/ao;Landroid/content/Context;LaS/h;)V

    goto :goto_9f

    .line 143
    :pswitch_b0
    iget-object v0, p0, LaQ/aA;->a:LaQ/ao;

    iget-object v1, p0, LaQ/aA;->d:LaQ/aC;

    iget-object v1, v1, LaQ/aC;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LaQ/aA;->c:LaS/h;

    iget-object v3, p0, LaQ/aA;->b:LaQ/aD;

    iget-object v3, v3, LaQ/aD;->b:LaS/c;

    invoke-static {v0, v1, v2, v3}, LaQ/ao;->a(LaQ/ao;Landroid/content/Context;LaS/h;LaS/c;)V

    goto :goto_9f

    .line 138
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_b0
    .end packed-switch
.end method
