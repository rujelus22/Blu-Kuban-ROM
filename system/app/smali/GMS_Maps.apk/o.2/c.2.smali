.class public Lo/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lo/C;->a:I

    .line 51
    iput p2, p0, Lo/C;->b:I

    .line 52
    if-ltz p3, :cond_c

    const/4 v0, 0x6

    if-lt p3, v0, :cond_d

    .line 54
    :cond_c
    const/4 p3, 0x0

    .line 56
    :cond_d
    iput p3, p0, Lo/C;->c:I

    .line 57
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lo/C;->c:I

    return v0
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lo/C;->a:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Lo/C;->b:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lo/C;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lo/C;->b:I

    return v0
.end method
