.class Laz/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Laz/h;

.field private volatile b:I

.field private volatile c:Z


# direct methods
.method constructor <init>(Laz/h;JLjava/util/List;Lcom/google/googlenav/ui/android/w;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Laz/j;->a:Laz/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laz/j;->b:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Laz/j;->c:Z

    .line 174
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v7

    .line 175
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ln/am;

    .line 181
    new-instance v0, Laz/k;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Laz/k;-><init>(Laz/j;Laz/h;JLcom/google/googlenav/ui/android/w;)V

    invoke-interface {v7, v6, v0}, Lr/aH;->b(Ln/am;Lr/aF;)V

    goto :goto_18

    .line 238
    :cond_32
    return-void
.end method

.method static synthetic a(Laz/j;)I
    .registers 2
    .parameter

    .prologue
    .line 166
    iget v0, p0, Laz/j;->b:I

    return v0
.end method

.method static synthetic a(Laz/j;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Laz/j;->c:Z

    return p1
.end method

.method static synthetic b(Laz/j;)I
    .registers 3
    .parameter

    .prologue
    .line 166
    iget v0, p0, Laz/j;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laz/j;->b:I

    return v0
.end method

.method static synthetic c(Laz/j;)Z
    .registers 2
    .parameter

    .prologue
    .line 166
    iget-boolean v0, p0, Laz/j;->c:Z

    return v0
.end method
