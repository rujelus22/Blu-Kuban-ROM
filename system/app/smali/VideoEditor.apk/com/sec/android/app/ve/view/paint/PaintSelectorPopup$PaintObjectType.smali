.class public final enum Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
.super Ljava/lang/Enum;
.source "PaintSelectorPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaintObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

.field public static final enum FOUNTAIN_PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

.field public static final enum PAINT_BRUSH:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

.field public static final enum PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

.field public static final enum PENCIL:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 787
    new-instance v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    const-string v1, "FOUNTAIN_PEN"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->FOUNTAIN_PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    .line 788
    new-instance v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    const-string v1, "PEN"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    .line 789
    new-instance v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    const-string v1, "PAINT_BRUSH"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PAINT_BRUSH:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    .line 790
    new-instance v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    const-string v1, "PENCIL"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PENCIL:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    .line 785
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->FOUNTAIN_PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PAINT_BRUSH:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PENCIL:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ENUM$VALUES:[Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 785
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ENUM$VALUES:[Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
