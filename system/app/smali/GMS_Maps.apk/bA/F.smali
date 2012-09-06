.class public final enum Lba/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lba/f;

.field public static final enum b:Lba/f;

.field private static final synthetic d:[Lba/f;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lba/f;

    const-string v1, "SNOW_LIGHT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, Lba/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lba/f;->a:Lba/f;

    .line 14
    new-instance v0, Lba/f;

    const-string v1, "SNOW_HEAVY"

    const/16 v2, 0x94

    invoke-direct {v0, v1, v4, v2}, Lba/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lba/f;->b:Lba/f;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lba/f;

    sget-object v1, Lba/f;->a:Lba/f;

    aput-object v1, v0, v3

    sget-object v1, Lba/f;->b:Lba/f;

    aput-object v1, v0, v4

    sput-object v0, Lba/f;->d:[Lba/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lba/f;->c:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lba/f;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lba/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lba/f;

    return-object v0
.end method

.method public static values()[Lba/f;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lba/f;->d:[Lba/f;

    invoke-virtual {v0}, [Lba/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lba/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lba/f;->c:I

    return v0
.end method
