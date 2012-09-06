.class public final enum Lz/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lz/n;

.field public static final enum b:Lz/n;

.field public static final enum c:Lz/n;

.field public static final enum d:Lz/n;

.field public static final enum e:Lz/n;

.field public static final enum f:Lz/n;

.field public static final enum g:Lz/n;

.field private static final synthetic i:[Lz/n;


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

    .line 30
    new-instance v0, Lz/n;

    const-string v1, "PICK"

    invoke-direct {v0, v1, v4, v4}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->a:Lz/n;

    .line 31
    new-instance v0, Lz/n;

    const-string v1, "TEXTURE0"

    invoke-direct {v0, v1, v5, v5}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->b:Lz/n;

    .line 32
    new-instance v0, Lz/n;

    const-string v1, "TEXTURE1"

    invoke-direct {v0, v1, v6, v6}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->c:Lz/n;

    .line 33
    new-instance v0, Lz/n;

    const-string v1, "SHADER"

    invoke-direct {v0, v1, v7, v7}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->d:Lz/n;

    .line 34
    new-instance v0, Lz/n;

    const-string v1, "STENCIL"

    invoke-direct {v0, v1, v8, v8}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->e:Lz/n;

    .line 35
    new-instance v0, Lz/n;

    const-string v1, "POLYGON"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->f:Lz/n;

    .line 36
    new-instance v0, Lz/n;

    const-string v1, "BLEND"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lz/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz/n;->g:Lz/n;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lz/n;

    sget-object v1, Lz/n;->a:Lz/n;

    aput-object v1, v0, v4

    sget-object v1, Lz/n;->b:Lz/n;

    aput-object v1, v0, v5

    sget-object v1, Lz/n;->c:Lz/n;

    aput-object v1, v0, v6

    sget-object v1, Lz/n;->d:Lz/n;

    aput-object v1, v0, v7

    sget-object v1, Lz/n;->e:Lz/n;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lz/n;->f:Lz/n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lz/n;->g:Lz/n;

    aput-object v2, v0, v1

    sput-object v0, Lz/n;->i:[Lz/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lz/n;->h:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz/n;
    .registers 2
    .parameter

    .prologue
    .line 29
    const-class v0, Lz/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lz/n;

    return-object v0
.end method

.method public static values()[Lz/n;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lz/n;->i:[Lz/n;

    invoke-virtual {v0}, [Lz/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz/n;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lz/n;->h:I

    return v0
.end method
