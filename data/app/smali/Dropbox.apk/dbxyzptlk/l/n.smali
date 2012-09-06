.class public final enum Ldbxyzptlk/l/n;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Ldbxyzptlk/l/n;

.field public static final enum b:Ldbxyzptlk/l/n;

.field private static final synthetic c:[Ldbxyzptlk/l/n;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 859
    new-instance v0, Ldbxyzptlk/l/n;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/l/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/l/n;->a:Ldbxyzptlk/l/n;

    new-instance v0, Ldbxyzptlk/l/n;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v3}, Ldbxyzptlk/l/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/l/n;->b:Ldbxyzptlk/l/n;

    .line 858
    const/4 v0, 0x2

    new-array v0, v0, [Ldbxyzptlk/l/n;

    sget-object v1, Ldbxyzptlk/l/n;->a:Ldbxyzptlk/l/n;

    aput-object v1, v0, v2

    sget-object v1, Ldbxyzptlk/l/n;->b:Ldbxyzptlk/l/n;

    aput-object v1, v0, v3

    sput-object v0, Ldbxyzptlk/l/n;->c:[Ldbxyzptlk/l/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldbxyzptlk/l/n;
    .registers 2
    .parameter

    .prologue
    .line 858
    const-class v0, Ldbxyzptlk/l/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/l/n;

    return-object v0
.end method

.method public static values()[Ldbxyzptlk/l/n;
    .registers 1

    .prologue
    .line 858
    sget-object v0, Ldbxyzptlk/l/n;->c:[Ldbxyzptlk/l/n;

    invoke-virtual {v0}, [Ldbxyzptlk/l/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldbxyzptlk/l/n;

    return-object v0
.end method
