.class public Lt/E;
.super Lt/D;


# direct methods
.method public constructor <init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[I)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lt/D;-><init>(Lt/m;Lt/P;[Lt/A;Lt/Z;ILjava/lang/String;IFI[I)V

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;)Lt/D;
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lt/D;->a(Ljava/io/DataInput;ILt/af;Lt/aa;[Ljava/lang/String;Z)Lt/D;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method
