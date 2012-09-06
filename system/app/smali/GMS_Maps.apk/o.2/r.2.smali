.class public Lo/R;
.super Lo/P;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Lo/P;Lo/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lo/P;-><init>(Lo/P;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/R;->a:Z

    .line 25
    invoke-direct {p0, p2}, Lo/R;->a(Lo/x;)V

    .line 26
    return-void
.end method

.method private a(Lo/x;)V
    .registers 7
    .parameter

    .prologue
    const-wide/high16 v3, -0x4010

    .line 35
    invoke-virtual {p0}, Lo/R;->c()Ln/s;

    move-result-object v0

    .line 36
    if-nez v0, :cond_d

    .line 37
    iput-wide v3, p0, Lo/R;->b:D

    .line 38
    iput-wide v3, p0, Lo/R;->c:D

    .line 53
    :goto_c
    return-void

    .line 41
    :cond_d
    invoke-virtual {v0}, Ln/s;->a()I

    move-result v1

    invoke-virtual {v0}, Ln/s;->b()I

    move-result v0

    invoke-static {v1, v0}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    .line 43
    const-wide/high16 v1, 0x4059

    invoke-virtual {p1, v0, v1, v2}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_2e

    .line 47
    invoke-virtual {p1, v0}, Lo/x;->a(Lo/B;)D

    move-result-wide v1

    iput-wide v1, p0, Lo/R;->b:D

    .line 48
    invoke-virtual {p1, v0}, Lo/x;->b(Lo/B;)D

    move-result-wide v0

    iput-wide v0, p0, Lo/R;->c:D

    goto :goto_c

    .line 50
    :cond_2e
    iput-wide v3, p0, Lo/R;->b:D

    .line 51
    iput-wide v3, p0, Lo/R;->c:D

    goto :goto_c
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lo/R;->a:Z

    .line 69
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lo/R;->a:Z

    return v0
.end method

.method public j()D
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lo/R;->b:D

    return-wide v0
.end method
