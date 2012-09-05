.class public final enum Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/framework/draw/sprites/StrokeSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThicknessParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Constant:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field public static final enum Pressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field public static final enum Speed:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field public static final enum SpeedAndPressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field private static final synthetic a:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    const-string v1, "Constant"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Constant:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    const-string v1, "Speed"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Speed:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    const-string v1, "Pressure"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Pressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    new-instance v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    const-string v1, "SpeedAndPressure"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->SpeedAndPressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Constant:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Speed:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Pressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->SpeedAndPressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->a:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;
    .registers 6
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->values()[Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v1

    .line 66
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_e

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_e
    aget-object v3, v1, v0

    .line 67
    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1b

    .line 68
    return-object v3

    .line 66
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->a:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
