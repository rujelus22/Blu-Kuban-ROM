.class public final enum Lcom/sec/android/framework/draw/XMLParser$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/framework/draw/XMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/framework/draw/XMLParser$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum b:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum c:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum d:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum e:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum f:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum g:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum h:Lcom/sec/android/framework/draw/XMLParser$a;

.field public static final enum i:Lcom/sec/android/framework/draw/XMLParser$a;

.field private static final synthetic j:[Lcom/sec/android/framework/draw/XMLParser$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Slide"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->a:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Ink"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->b:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Stroke"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->c:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Point"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->d:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Pressure"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->e:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Image"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->f:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Undo"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->g:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "Redo"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->h:Lcom/sec/android/framework/draw/XMLParser$a;

    new-instance v0, Lcom/sec/android/framework/draw/XMLParser$a;

    const-string v1, "CreateCommand"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/XMLParser$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->i:Lcom/sec/android/framework/draw/XMLParser$a;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/android/framework/draw/XMLParser$a;

    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->a:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->b:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->c:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->d:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/framework/draw/XMLParser$a;->e:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/framework/draw/XMLParser$a;->f:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/framework/draw/XMLParser$a;->g:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/framework/draw/XMLParser$a;->h:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/framework/draw/XMLParser$a;->i:Lcom/sec/android/framework/draw/XMLParser$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->j:[Lcom/sec/android/framework/draw/XMLParser$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sec/android/framework/draw/XMLParser$a;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/sec/android/framework/draw/XMLParser$a;->values()[Lcom/sec/android/framework/draw/XMLParser$a;

    move-result-object v2

    .line 40
    array-length v3, v2

    move v0, v1

    :goto_7
    if-lt v0, v3, :cond_1f

    .line 45
    const-string v0, "DIOTEK/DRAW"

    const-string v2, "Unknown Element : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_1f
    aget-object v4, v2, v0

    .line 41
    invoke-virtual {v4}, Lcom/sec/android/framework/draw/XMLParser$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2c

    .line 42
    return-object v4

    .line 40
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/framework/draw/XMLParser$a;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/XMLParser$a;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/framework/draw/XMLParser$a;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/framework/draw/XMLParser$a;->j:[Lcom/sec/android/framework/draw/XMLParser$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/framework/draw/XMLParser$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
