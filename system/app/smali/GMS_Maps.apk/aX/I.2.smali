.class public final enum Lax/I;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lax/I;

.field public static final enum b:Lax/I;

.field public static final enum c:Lax/I;

.field public static final enum d:Lax/I;

.field public static final enum e:Lax/I;

.field public static final enum f:Lax/I;

.field public static final enum g:Lax/I;

.field private static final synthetic i:[Lax/I;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lax/I;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->a:Lax/I;

    .line 13
    new-instance v0, Lax/I;

    const-string v1, "ACTIVATE_WIZARD"

    invoke-direct {v0, v1, v5, v5}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->b:Lax/I;

    .line 15
    new-instance v0, Lax/I;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v6, v6}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->c:Lax/I;

    .line 17
    new-instance v0, Lax/I;

    const-string v1, "UPDATE_ITEM"

    invoke-direct {v0, v1, v7, v7}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->d:Lax/I;

    .line 19
    new-instance v0, Lax/I;

    const-string v1, "ON_RESUME"

    invoke-direct {v0, v1, v8, v8}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->e:Lax/I;

    .line 21
    new-instance v0, Lax/I;

    const-string v1, "ON_SIGN_IN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->f:Lax/I;

    .line 23
    new-instance v0, Lax/I;

    const-string v1, "CONTENT_PROVIDER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lax/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lax/I;->g:Lax/I;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lax/I;

    sget-object v1, Lax/I;->a:Lax/I;

    aput-object v1, v0, v4

    sget-object v1, Lax/I;->b:Lax/I;

    aput-object v1, v0, v5

    sget-object v1, Lax/I;->c:Lax/I;

    aput-object v1, v0, v6

    sget-object v1, Lax/I;->d:Lax/I;

    aput-object v1, v0, v7

    sget-object v1, Lax/I;->e:Lax/I;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lax/I;->f:Lax/I;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lax/I;->g:Lax/I;

    aput-object v2, v0, v1

    sput-object v0, Lax/I;->i:[Lax/I;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lax/I;->h:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lax/I;
    .registers 2
    .parameter

    .prologue
    .line 9
    const-class v0, Lax/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lax/I;

    return-object v0
.end method

.method public static values()[Lax/I;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lax/I;->i:[Lax/I;

    invoke-virtual {v0}, [Lax/I;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lax/I;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lax/I;->h:I

    return v0
.end method
