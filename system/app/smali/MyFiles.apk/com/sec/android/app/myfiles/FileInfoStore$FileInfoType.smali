.class public final enum Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;
.super Ljava/lang/Enum;
.source "FileInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/FileInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

.field public static final enum BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

.field public static final enum PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    const-string v1, "PROTECTION"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    new-instance v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    const-string v1, "BT_VISIBILITY"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    sget-object v1, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->PROTECTION:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->BT_VISIBILITY:Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->$VALUES:[Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;
    .registers 2
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->$VALUES:[Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    invoke-virtual {v0}, [Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/myfiles/FileInfoStore$FileInfoType;

    return-object v0
.end method
