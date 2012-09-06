.class public Ln/I;
.super Ln/H;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct/range {p0 .. p10}, Ln/H;-><init>(Ln/m;Ln/U;[Ln/E;Ln/ag;ILjava/lang/String;IFI[I)V

    .line 34
    return-void
.end method

.method public static b(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;)Ln/H;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ln/H;->a(Ljava/io/DataInput;ILn/am;Ln/ah;[Ljava/lang/String;Z)Ln/H;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0xb

    return v0
.end method
