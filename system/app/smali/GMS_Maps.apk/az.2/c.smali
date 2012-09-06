.class public final enum LaZ/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaZ/c;

.field public static final enum b:LaZ/c;

.field public static final enum c:LaZ/c;

.field private static final synthetic e:[LaZ/c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, LaZ/c;

    const-string v1, "RAIN_LIGHT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, LaZ/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaZ/c;->a:LaZ/c;

    .line 14
    new-instance v0, LaZ/c;

    const-string v1, "RAIN_NORMAL"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, LaZ/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaZ/c;->b:LaZ/c;

    .line 15
    new-instance v0, LaZ/c;

    const-string v1, "RAIN_HEAVY"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v5, v2}, LaZ/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaZ/c;->c:LaZ/c;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [LaZ/c;

    sget-object v1, LaZ/c;->a:LaZ/c;

    aput-object v1, v0, v3

    sget-object v1, LaZ/c;->b:LaZ/c;

    aput-object v1, v0, v4

    sget-object v1, LaZ/c;->c:LaZ/c;

    aput-object v1, v0, v5

    sput-object v0, LaZ/c;->e:[LaZ/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, LaZ/c;->d:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaZ/c;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, LaZ/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaZ/c;

    return-object v0
.end method

.method public static values()[LaZ/c;
    .registers 1

    .prologue
    .line 11
    sget-object v0, LaZ/c;->e:[LaZ/c;

    invoke-virtual {v0}, [LaZ/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaZ/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, LaZ/c;->d:I

    return v0
.end method
