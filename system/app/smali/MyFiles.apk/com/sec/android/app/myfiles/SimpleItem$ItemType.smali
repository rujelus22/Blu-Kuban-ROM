.class public final enum Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
.super Ljava/lang/Enum;
.source "SimpleItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/SimpleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/myfiles/SimpleItem$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum BT_VISIBILITY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum EMPTY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum NONE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum RENAMEFILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

.field public static final enum SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->EMPTY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "RENAMEFILE"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->RENAMEFILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "SELECTALL"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "NEWFOLDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NONE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    new-instance v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    const-string v1, "BT_VISIBILITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    sget-object v1, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->FOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->EMPTY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->RENAMEFILE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->SELECTALL:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NEWFOLDER:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->NONE:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->$VALUES:[Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    .registers 2
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/myfiles/SimpleItem$ItemType;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->$VALUES:[Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    invoke-virtual {v0}, [Lcom/sec/android/app/myfiles/SimpleItem$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/myfiles/SimpleItem$ItemType;

    return-object v0
.end method
