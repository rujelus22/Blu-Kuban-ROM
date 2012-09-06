.class public final enum Lorg/codehaus/jackson/JsonEncoding;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum b:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum c:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum d:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum e:Lorg/codehaus/jackson/JsonEncoding;

.field private static final synthetic f:[Lorg/codehaus/jackson/JsonEncoding;


# instance fields
.field final mBigEndian:Z

.field final mJavaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->a:Lorg/codehaus/jackson/JsonEncoding;

    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF16_BE"

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v4, v2, v4}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->b:Lorg/codehaus/jackson/JsonEncoding;

    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF16_LE"

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->c:Lorg/codehaus/jackson/JsonEncoding;

    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF32_BE"

    const-string v2, "UTF-32BE"

    invoke-direct {v0, v1, v6, v2, v4}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->d:Lorg/codehaus/jackson/JsonEncoding;

    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF32_LE"

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->e:Lorg/codehaus/jackson/JsonEncoding;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/codehaus/jackson/JsonEncoding;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->a:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->b:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->c:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->d:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->e:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v7

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->f:[Lorg/codehaus/jackson/JsonEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/codehaus/jackson/JsonEncoding;->mJavaName:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/codehaus/jackson/JsonEncoding;->mBigEndian:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonEncoding;
    .registers 2

    const-class v0, Lorg/codehaus/jackson/JsonEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/jackson/JsonEncoding;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->f:[Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/JsonEncoding;->mJavaName:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/codehaus/jackson/JsonEncoding;->mBigEndian:Z

    return v0
.end method
