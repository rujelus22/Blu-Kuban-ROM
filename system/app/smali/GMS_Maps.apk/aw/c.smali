.class public final enum LaW/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaW/c;

.field public static final enum b:LaW/c;

.field public static final enum c:LaW/c;

.field private static final synthetic e:[LaW/c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, LaW/c;

    const-string v1, "CLOUD_LIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, LaW/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaW/c;->a:LaW/c;

    .line 15
    new-instance v0, LaW/c;

    const-string v1, "CLOUD_CHANCE_HEAVY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, LaW/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaW/c;->b:LaW/c;

    .line 16
    new-instance v0, LaW/c;

    const-string v1, "CLOUD_HEAVY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v2}, LaW/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaW/c;->c:LaW/c;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [LaW/c;

    sget-object v1, LaW/c;->a:LaW/c;

    aput-object v1, v0, v3

    sget-object v1, LaW/c;->b:LaW/c;

    aput-object v1, v0, v4

    sget-object v1, LaW/c;->c:LaW/c;

    aput-object v1, v0, v5

    sput-object v0, LaW/c;->e:[LaW/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, LaW/c;->d:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaW/c;
    .registers 2
    .parameter

    .prologue
    .line 10
    const-class v0, LaW/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaW/c;

    return-object v0
.end method

.method public static values()[LaW/c;
    .registers 1

    .prologue
    .line 10
    sget-object v0, LaW/c;->e:[LaW/c;

    invoke-virtual {v0}, [LaW/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaW/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, LaW/c;->d:I

    return v0
.end method
