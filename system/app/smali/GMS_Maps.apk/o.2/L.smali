.class Lo/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/l;-><init>(IIIZ)V

    .line 30
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lo/l;->a:I

    .line 34
    iput p2, p0, Lo/l;->b:I

    .line 35
    iput-boolean p4, p0, Lo/l;->d:Z

    .line 37
    if-eqz p3, :cond_e

    .line 38
    iput p3, p0, Lo/l;->c:I

    .line 42
    :goto_d
    return-void

    .line 40
    :cond_e
    const v0, 0x7f020161

    iput v0, p0, Lo/l;->c:I

    goto :goto_d
.end method

.method static synthetic a(Lo/l;)I
    .registers 2
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lo/l;->c:I

    return v0
.end method

.method static synthetic b(Lo/l;)Z
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lo/l;->d:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter

    .prologue
    .line 56
    new-instance v0, Lo/m;

    invoke-direct {v0, p1, p0}, Lo/m;-><init>(Landroid/content/Context;Lo/l;)V

    return-object v0
.end method

.method public a(III)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    iget v1, p0, Lo/l;->a:I

    if-eq v1, p1, :cond_6

    .line 51
    :cond_5
    :goto_5
    return v0

    .line 48
    :cond_6
    iget v1, p0, Lo/l;->b:I

    if-eqz v1, :cond_e

    iget v1, p0, Lo/l;->b:I

    if-ne v1, p2, :cond_5

    .line 49
    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method
