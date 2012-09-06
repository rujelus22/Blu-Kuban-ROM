.class final enum LAL;
.super LAI;
.source "VerticalPositioning.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LAI;-><init>(Ljava/lang/String;ILAJ;)V

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
    .line 31
    invoke-interface {p1}, LAu;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, p4, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
