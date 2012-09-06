.class Lo/n;
.super Lo/l;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/n;-><init>(IIIZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p3, p4}, Lo/l;-><init>(IIIZ)V

    .line 82
    iput p2, p0, Lo/n;->a:I

    .line 83
    return-void
.end method


# virtual methods
.method public a(III)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    if-ltz p3, :cond_e

    iget v0, p0, Lo/n;->a:I

    if-gt p3, v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Lo/l;->a(III)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
