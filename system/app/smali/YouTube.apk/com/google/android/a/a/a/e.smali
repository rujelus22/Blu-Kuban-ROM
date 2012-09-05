.class final enum Lcom/google/android/a/a/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/a/a/a/e;

.field public static final enum b:Lcom/google/android/a/a/a/e;

.field public static final enum c:Lcom/google/android/a/a/a/e;

.field private static final synthetic d:[Lcom/google/android/a/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/android/a/a/a/e;

    const-string v1, "ST_CHUNK_LENGTH"

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/a/a/a/e;->a:Lcom/google/android/a/a/a/e;

    new-instance v0, Lcom/google/android/a/a/a/e;

    const-string v1, "ST_CHUNK_BODY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/a/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/a/a/a/e;->b:Lcom/google/android/a/a/a/e;

    new-instance v0, Lcom/google/android/a/a/a/e;

    const-string v1, "ST_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/a/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/a/a/a/e;->c:Lcom/google/android/a/a/a/e;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/a/a/a/e;

    sget-object v1, Lcom/google/android/a/a/a/e;->a:Lcom/google/android/a/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/a/a/a/e;->b:Lcom/google/android/a/a/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/a/a/a/e;->c:Lcom/google/android/a/a/a/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/a/a/a/e;->d:[Lcom/google/android/a/a/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/a/a/a/e;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/a/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/a/a/a/e;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/a/a/a/e;->d:[Lcom/google/android/a/a/a/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/a/a/a/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
