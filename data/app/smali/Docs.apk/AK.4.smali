.class final enum LAK;
.super LAI;
.source "VerticalPositioning.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LAI;-><init>(Ljava/lang/String;ILAJ;)V

    return-void
.end method


# virtual methods
.method a(LAu;LFt;II)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p2}, LFt;->b()I

    move-result v0

    invoke-interface {p1, v0}, LAu;->c(I)I

    move-result v0

    return v0
.end method
