.class public LtE;
.super Lte;
.source "OcrImageUploadFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lte;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 15
    const/high16 v0, 0x20

    return v0
.end method

.method protected a(LtB;)Z
    .registers 4
    .parameter

    .prologue
    .line 20
    invoke-virtual {p1}, LtB;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, LtB;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 21
    :goto_17
    return v0

    .line 20
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
