.class public Lasf;
.super Ljava/lang/Object;
.source "Feed.java"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lasf;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lasf;->a:I

    .line 42
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lasf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lasf;->b:I

    .line 59
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lasf;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lasf;->c:I

    .line 76
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lasf;->e:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lasf;->b:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lasf;->c:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lasf;->a:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lasf;->f:Ljava/lang/String;

    .line 171
    return-void
.end method
