.class final enum LAB;
.super LAA;
.source "HorizontalPositioning.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LAA;-><init>(Ljava/lang/String;ILAB;)V

    return-void
.end method


# virtual methods
.method a(LAu;LFt;II)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p2}, LFt;->a()I

    move-result v0

    invoke-interface {p1, v0}, LAu;->a(I)I

    move-result v0

    .line 18
    invoke-virtual {p2}, LFt;->b()I

    move-result v1

    invoke-interface {p1, v1}, LAu;->a(I)I

    move-result v1

    .line 20
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
