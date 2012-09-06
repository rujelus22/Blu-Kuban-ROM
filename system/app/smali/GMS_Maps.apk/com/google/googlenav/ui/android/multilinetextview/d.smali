.class Lcom/google/googlenav/ui/android/multilinetextview/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/multilinetextview/b;

.field private b:Lcom/google/googlenav/ui/android/multilinetextview/e;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/android/multilinetextview/b;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/android/multilinetextview/b;Lcom/google/googlenav/ui/android/multilinetextview/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/d;-><init>(Lcom/google/googlenav/ui/android/multilinetextview/b;)V

    return-void
.end method

.method private c()Z
    .registers 5

    .prologue
    .line 99
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    iget-object v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->b(Lcom/google/googlenav/ui/android/multilinetextview/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(II)I

    move-result v0

    .line 100
    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    iget-object v2, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/multilinetextview/e;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(II)I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/multilinetextview/b;->b(Lcom/google/googlenav/ui/android/multilinetextview/b;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(II)I

    move-result v2

    .line 102
    iget-object v3, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Lcom/google/googlenav/ui/android/multilinetextview/b;I)I

    move-result v1

    iget-object v3, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Lcom/google/googlenav/ui/android/multilinetextview/b;I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Lcom/google/googlenav/ui/android/multilinetextview/b;I)I

    move-result v0

    if-ge v1, v0, :cond_3f

    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method private c(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Lcom/google/googlenav/ui/android/multilinetextview/b;)I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private d(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 107
    iget-object v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    if-nez v1, :cond_6

    .line 112
    :cond_5
    :goto_5
    return v0

    .line 110
    :cond_6
    iget v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    iget-object v2, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/multilinetextview/e;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(II)I

    move-result v1

    .line 111
    iget v2, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(II)I

    move-result v2

    .line 112
    iget-object v3, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Lcom/google/googlenav/ui/android/multilinetextview/b;I)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->a:Lcom/google/googlenav/ui/android/multilinetextview/b;

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/android/multilinetextview/b;->a(Lcom/google/googlenav/ui/android/multilinetextview/b;I)I

    move-result v1

    if-le v2, v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method a()Lcom/google/googlenav/ui/android/multilinetextview/e;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    return-object v0
.end method

.method a(Lcom/google/googlenav/ui/android/multilinetextview/e;)V
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/d;->d(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    iput-object p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    .line 76
    :cond_8
    return-void
.end method

.method a(Lcom/google/googlenav/ui/android/multilinetextview/e;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    if-eqz p2, :cond_c

    .line 89
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/multilinetextview/d;->c(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 91
    :goto_9
    return v0

    .line 89
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 91
    :cond_c
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/multilinetextview/d;->c()Z

    move-result v0

    goto :goto_9
.end method

.method b()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->c:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    .line 81
    return-void
.end method

.method b(Lcom/google/googlenav/ui/android/multilinetextview/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/d;->b:Lcom/google/googlenav/ui/android/multilinetextview/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/multilinetextview/e;->b()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
