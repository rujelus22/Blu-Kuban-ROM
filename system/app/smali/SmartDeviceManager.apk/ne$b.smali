.class public final enum Lne$b;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lne$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lne$b;

.field public static final enum CONCAT_BUFFER:Lne$b;

.field public static final enum NAME_COPY_BUFFER:Lne$b;

.field public static final enum TEXT_BUFFER:Lne$b;

.field public static final enum TOKEN_BUFFER:Lne$b;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lne$b;

    const-string v1, "TOKEN_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Lne$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lne$b;->TOKEN_BUFFER:Lne$b;

    .line 37
    new-instance v0, Lne$b;

    const-string v1, "CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Lne$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lne$b;->CONCAT_BUFFER:Lne$b;

    .line 38
    new-instance v0, Lne$b;

    const-string v1, "TEXT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Lne$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lne$b;->TEXT_BUFFER:Lne$b;

    .line 39
    new-instance v0, Lne$b;

    const-string v1, "NAME_COPY_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Lne$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lne$b;->NAME_COPY_BUFFER:Lne$b;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lne$b;

    sget-object v1, Lne$b;->TOKEN_BUFFER:Lne$b;

    aput-object v1, v0, v3

    sget-object v1, Lne$b;->CONCAT_BUFFER:Lne$b;

    aput-object v1, v0, v4

    sget-object v1, Lne$b;->TEXT_BUFFER:Lne$b;

    aput-object v1, v0, v5

    sget-object v1, Lne$b;->NAME_COPY_BUFFER:Lne$b;

    aput-object v1, v0, v6

    sput-object v0, Lne$b;->$VALUES:[Lne$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lne$b;->size:I

    return-void
.end method

.method static synthetic access$100(Lne$b;)I
    .registers 2
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lne$b;->size:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lne$b;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lne$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lne$b;

    return-object p0
.end method

.method public static values()[Lne$b;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lne$b;->$VALUES:[Lne$b;

    invoke-virtual {v0}, [Lne$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lne$b;

    return-object v0
.end method
