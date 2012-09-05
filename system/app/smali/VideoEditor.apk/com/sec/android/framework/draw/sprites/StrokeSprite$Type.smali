.class public final enum Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/framework/draw/sprites/StrokeSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Blur:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field public static final enum Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field public static final enum Emboss:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field public static final enum Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field public static final enum Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field public static final enum Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field public static final enum Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field private static final synthetic a:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Solid"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Eraser"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Hightlighter"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Blur"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Blur:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Emboss"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Emboss:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Brush"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    const-string v1, "Pencil"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Blur:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Emboss:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->a:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .registers 6
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->values()[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_e

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_e
    aget-object v3, v1, v0

    .line 87
    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1b

    .line 88
    return-object v3

    .line 86
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->a:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
