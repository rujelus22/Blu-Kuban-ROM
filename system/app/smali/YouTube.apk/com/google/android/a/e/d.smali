.class public final enum Lcom/google/android/a/e/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/a/e/d;

.field public static final enum b:Lcom/google/android/a/e/d;

.field private static final synthetic c:[Lcom/google/android/a/e/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/android/a/e/d;

    const-string v1, "PERMANENT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/a/e/d;->a:Lcom/google/android/a/e/d;

    new-instance v0, Lcom/google/android/a/e/d;

    const-string v1, "TEMPORARY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/a/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/a/e/d;->b:Lcom/google/android/a/e/d;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/a/e/d;

    sget-object v1, Lcom/google/android/a/e/d;->a:Lcom/google/android/a/e/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/a/e/d;->b:Lcom/google/android/a/e/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/a/e/d;->c:[Lcom/google/android/a/e/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/a/e/d;
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 21
    if-nez p0, :cond_4

    .line 27
    :goto_3
    return-object v0

    .line 25
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/a/e/d;->valueOf(Ljava/lang/String;)Lcom/google/android/a/e/d;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    .line 27
    :catch_d
    move-exception v1

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/a/e/d;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/a/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/d;

    return-object v0
.end method

.method public static values()[Lcom/google/android/a/e/d;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/a/e/d;->c:[Lcom/google/android/a/e/d;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/a/e/d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
