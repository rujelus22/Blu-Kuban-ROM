.class public final enum Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;
.super Ljava/lang/Enum;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaintRegion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field public static final enum BLUE_HIGHLIGHT:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field public static final enum DIM:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field public static final enum NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field public static final enum TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field public static final enum TRASH:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    const-string v1, "DIM"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->DIM:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    const-string v1, "BLUE_HIGHLIGHT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->BLUE_HIGHLIGHT:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    const-string v1, "TRANS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    const-string v1, "TRASH"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRASH:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 102
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->DIM:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->BLUE_HIGHLIGHT:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRASH:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->$VALUES:[Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;
    .registers 2
    .parameter

    .prologue
    .line 102
    const-class v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->$VALUES:[Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {v0}, [Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    return-object v0
.end method
