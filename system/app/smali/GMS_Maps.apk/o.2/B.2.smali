.class public Lo/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lo/x;

.field private b:Ln/Q;

.field private c:D

.field private d:D

.field private e:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/y;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lo/B;-><init>()V

    return-void
.end method

.method static synthetic a(Lo/B;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Lo/B;->d:D

    return-wide p1
.end method

.method static synthetic a(Lo/B;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lo/B;->e:I

    return p1
.end method

.method static synthetic a(Lo/B;)Ln/Q;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lo/B;->b:Ln/Q;

    return-object v0
.end method

.method static synthetic a(Lo/B;Ln/Q;)Ln/Q;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lo/B;->b:Ln/Q;

    return-object p1
.end method

.method static synthetic a(Lo/B;Lo/x;)Lo/x;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lo/B;->a:Lo/x;

    return-object p1
.end method

.method static synthetic b(Lo/B;)D
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-wide v0, p0, Lo/B;->d:D

    return-wide v0
.end method

.method static synthetic b(Lo/B;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Lo/B;->c:D

    return-wide p1
.end method


# virtual methods
.method public a(D)Lo/B;
    .registers 6
    .parameter

    .prologue
    .line 121
    new-instance v0, Lo/B;

    invoke-direct {v0}, Lo/B;-><init>()V

    .line 122
    iget-object v1, p0, Lo/B;->a:Lo/x;

    iput-object v1, v0, Lo/B;->a:Lo/x;

    .line 123
    iget-object v1, p0, Lo/B;->b:Ln/Q;

    iput-object v1, v0, Lo/B;->b:Ln/Q;

    .line 124
    iget-wide v1, p0, Lo/B;->c:D

    iput-wide v1, v0, Lo/B;->c:D

    .line 125
    iput-wide p1, v0, Lo/B;->d:D

    .line 126
    iget v1, p0, Lo/B;->e:I

    iput v1, v0, Lo/B;->e:I

    .line 127
    return-object v0
.end method

.method public a()Lo/x;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lo/B;->a:Lo/x;

    return-object v0
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lo/B;->b:Ln/Q;

    return-object v0
.end method

.method public c()D
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lo/B;->c:D

    return-wide v0
.end method

.method public d()D
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lo/B;->d:D

    return-wide v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lo/B;->e:I

    return v0
.end method
