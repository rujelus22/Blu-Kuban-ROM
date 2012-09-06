.class public Lcom/google/googlenav/ui/wizard/gI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/google/googlenav/ui/wizard/gH;

.field private f:Lah/s;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x3c6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->a:Ljava/lang/String;

    .line 73
    const v0, 0x7f020219

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gI;->b:I

    .line 99
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/gI;->g:Z

    .line 105
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/gI;->h:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/wizard/gI;
    .registers 2
    .parameter

    .prologue
    .line 228
    iput p1, p0, Lcom/google/googlenav/ui/wizard/gI;->b:I

    .line 229
    return-object p0
.end method

.method public a(Lah/s;)Lcom/google/googlenav/ui/wizard/gI;
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gI;->f:Lah/s;

    .line 131
    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/gH;)Lcom/google/googlenav/ui/wizard/gI;
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gI;->e:Lcom/google/googlenav/ui/wizard/gH;

    .line 176
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/ui/wizard/gI;
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gI;->c:Ljava/util/List;

    .line 119
    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/ui/wizard/gI;
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/gI;->g:Z

    .line 153
    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->c:Ljava/util/List;

    return-object v0
.end method

.method public b()Lah/s;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->f:Lah/s;

    return-object v0
.end method

.method public b(Z)Lcom/google/googlenav/ui/wizard/gI;
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/gI;->h:Z

    .line 161
    return-object p0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gI;->g:Z

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gI;->h:Z

    return v0
.end method

.method public e()Lcom/google/googlenav/ui/wizard/gH;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->e:Lcom/google/googlenav/ui/wizard/gH;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gI;->b:I

    return v0
.end method
