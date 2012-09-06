.class public LHA;
.super Ljava/lang/Object;
.source "NavigationCollectionGroup.java"


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Lnk;

.field private final a:Z

.field private final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Lnk;ZIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "Lnk;",
            "ZIZ)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, LHA;->a:Ljava/lang/String;

    .line 194
    iput-object p2, p0, LHA;->a:Ljava/util/List;

    .line 195
    iput-object p3, p0, LHA;->a:Lnk;

    .line 196
    iput-boolean p4, p0, LHA;->a:Z

    .line 197
    iput p5, p0, LHA;->a:I

    .line 198
    iput-boolean p6, p0, LHA;->b:Z

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnk;ZIZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, LHA;-><init>(Ljava/lang/String;Ljava/util/List;Lnk;ZIZ)V

    .line 84
    return-void
.end method

.method private a(Llu;LkG;)LnL;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, LHA;->a:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 180
    iget-object v0, p0, LHA;->a:Ljava/util/List;

    iget-object v1, p0, LHA;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    invoke-interface {v0}, LhW;->a()LnL;

    move-result-object v0

    .line 184
    :goto_18
    return-object v0

    .line 182
    :cond_19
    iget-object v0, p0, LHA;->a:Lnk;

    invoke-virtual {v0, p2}, Lnk;->a(LkG;)LnL;

    move-result-object v0

    goto :goto_18
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, LHA;->a:I

    return v0
.end method

.method public a(Llu;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-interface {p1, p2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1, v0}, LHA;->a(Llu;LkG;)LnL;

    move-result-object v1

    .line 96
    const v2, 0x7fffffff

    invoke-interface {p1, v0, v1, v2}, Llu;->a(LkG;LnL;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;LhM;)LhW;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, LHA;->a:Ljava/util/List;

    .line 120
    if-eqz v0, :cond_11

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    .line 123
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, LhX;

    invoke-direct {v0}, LhX;-><init>()V

    iget-object v1, p0, LHA;->a:Lnk;

    invoke-interface {p2, v1, p1}, LhM;->a(Lnk;Ljava/lang/String;)LhK;

    move-result-object v1

    invoke-virtual {v0, v1}, LhX;->a(LhK;)LhX;

    move-result-object v0

    invoke-virtual {v0}, LhX;->a()LhW;

    move-result-object v0

    goto :goto_10
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, LHA;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Llu;Ljava/lang/String;)LnL;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-interface {p1, p2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 108
    invoke-direct {p0, p1, v0}, LHA;->a(Llu;LkG;)LnL;

    move-result-object v0

    return-object v0
.end method

.method public a(LHG;)V
    .registers 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, LHA;->a:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 144
    iget-object v0, p0, LHA;->a:Ljava/util/List;

    invoke-interface {p1, v0}, LHG;->a(Ljava/util/List;)V

    .line 148
    :goto_9
    return-void

    .line 146
    :cond_a
    iget-object v0, p0, LHA;->a:Lnk;

    invoke-interface {p1, v0}, LHG;->a(Lnk;)V

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 156
    iget-boolean v0, p0, LHA;->a:Z

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, LHA;->b:Z

    return v0
.end method
