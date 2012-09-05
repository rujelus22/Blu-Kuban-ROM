.class public final Lgr;
.super Lgm;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgm;-><init>(ILgm;)V

    .line 122
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x4

    return v0
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 144
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    return-void
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lgr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgr;->b:I

    .line 138
    iget v0, p0, Lgr;->b:I

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x3

    goto :goto_b
.end method
