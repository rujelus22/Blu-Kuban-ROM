.class public Lcom/google/googlenav/ui/aW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/googlenav/ui/aV;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/google/googlenav/ui/view/J;

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/google/googlenav/ui/aW;->h:I

    .line 48
    iput v0, p0, Lcom/google/googlenav/ui/aW;->i:I

    .line 49
    iput v0, p0, Lcom/google/googlenav/ui/aW;->j:I

    .line 50
    iput v0, p0, Lcom/google/googlenav/ui/aW;->k:I

    .line 75
    if-eqz p1, :cond_25

    .line 76
    if-eqz p6, :cond_22

    .line 77
    iput-object p1, p0, Lcom/google/googlenav/ui/aW;->a:Ljava/lang/CharSequence;

    .line 81
    :goto_13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    .line 86
    :goto_19
    iput-object p2, p0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    .line 87
    iput-boolean p3, p0, Lcom/google/googlenav/ui/aW;->d:Z

    .line 88
    iput-boolean p4, p0, Lcom/google/googlenav/ui/aW;->e:Z

    .line 89
    iput-object p5, p0, Lcom/google/googlenav/ui/aW;->f:Lcom/google/googlenav/ui/view/J;

    .line 90
    return-void

    .line 79
    :cond_22
    iput-object v1, p0, Lcom/google/googlenav/ui/aW;->a:Ljava/lang/CharSequence;

    goto :goto_13

    .line 83
    :cond_25
    iput-object v1, p0, Lcom/google/googlenav/ui/aW;->a:Ljava/lang/CharSequence;

    .line 84
    iput-object v1, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    goto :goto_19
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aW;-><init>(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;Z)V

    .line 59
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 117
    new-instance v0, Lcom/google/googlenav/ui/aW;

    move-object v1, p0

    move-object v2, p1

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aW;-><init>(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/google/googlenav/ui/aW;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aW;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/google/googlenav/ui/aW;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aW;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/a;)Lcom/google/googlenav/ui/aW;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/google/googlenav/ui/aW;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aW;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/google/googlenav/ui/aW;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aW;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;ZZLcom/google/googlenav/ui/view/J;)V

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput p1, p0, Lcom/google/googlenav/ui/aW;->h:I

    .line 240
    iput p2, p0, Lcom/google/googlenav/ui/aW;->i:I

    .line 241
    iput p3, p0, Lcom/google/googlenav/ui/aW;->j:I

    .line 242
    iput p4, p0, Lcom/google/googlenav/ui/aW;->k:I

    .line 243
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/googlenav/ui/aW;->g:Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/google/googlenav/ui/aW;->h:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/aW;->i:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/aW;->j:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/googlenav/ui/aW;->k:I

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public d()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/googlenav/ui/aW;->h:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/google/googlenav/ui/aW;->j:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 206
    :cond_5
    :goto_5
    return v1

    .line 187
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 191
    check-cast p1, Lcom/google/googlenav/ui/aW;

    .line 193
    invoke-virtual {p0}, Lcom/google/googlenav/ui/aW;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/aW;->a()Z

    move-result v3

    if-ne v2, v3, :cond_5

    .line 196
    iget-boolean v2, p0, Lcom/google/googlenav/ui/aW;->d:Z

    iget-boolean v3, p1, Lcom/google/googlenav/ui/aW;->d:Z

    if-ne v2, v3, :cond_5

    .line 199
    iget-boolean v2, p0, Lcom/google/googlenav/ui/aW;->e:Z

    iget-boolean v3, p1, Lcom/google/googlenav/ui/aW;->e:Z

    if-ne v2, v3, :cond_5

    .line 202
    iget-object v2, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 206
    iget-object v2, p0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    iget-object v3, p1, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    if-ne v2, v3, :cond_3c

    :goto_3a
    move v1, v0

    goto :goto_5

    :cond_3c
    move v0, v1

    goto :goto_3a
.end method

.method public f()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lcom/google/googlenav/ui/aW;->i:I

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/google/googlenav/ui/aW;->k:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 213
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 214
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlenav/ui/aW;->d:Z

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_18
    add-int/2addr v0, v3

    .line 215
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/googlenav/ui/aW;->e:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_20
    add-int/2addr v0, v3

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aW;->a()Z

    move-result v3

    if-eqz v3, :cond_2f

    :goto_29
    add-int/2addr v0, v1

    .line 217
    return v0

    :cond_2b
    move v0, v2

    .line 214
    goto :goto_18

    :cond_2d
    move v0, v2

    .line 215
    goto :goto_20

    :cond_2f
    move v1, v2

    .line 216
    goto :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    return-object v0
.end method
