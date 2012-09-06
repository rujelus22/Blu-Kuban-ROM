.class final enum LeX;
.super LeV;
.source "Feature.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILdX;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LeV;-><init>(Ljava/lang/String;ILdX;LeW;)V

    return-void
.end method


# virtual methods
.method protected a(LeZ;)Z
    .registers 3
    .parameter

    .prologue
    .line 48
    sget-object v0, LeX;->c:LeV;

    invoke-interface {p1, v0}, LeZ;->a(LeV;)Z

    move-result v0

    return v0
.end method
