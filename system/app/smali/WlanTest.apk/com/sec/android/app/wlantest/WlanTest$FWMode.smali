.class final enum Lcom/sec/android/app/wlantest/WlanTest$FWMode;
.super Ljava/lang/Enum;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/wlantest/WlanTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FWMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/wlantest/WlanTest$FWMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/wlantest/WlanTest$FWMode;

.field public static final enum NormalMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

.field public static final enum NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

.field public static final enum TestMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/wlantest/WlanTest$FWMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 84
    new-instance v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    const-string v1, "TestMode"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/wlantest/WlanTest$FWMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->TestMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 85
    new-instance v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    const-string v1, "NormalMode"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/wlantest/WlanTest$FWMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NormalMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    sget-object v1, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->TestMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NormalMode:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->$VALUES:[Lcom/sec/android/app/wlantest/WlanTest$FWMode;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 82
    const-class v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/wlantest/WlanTest$FWMode;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->$VALUES:[Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/wlantest/WlanTest$FWMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    return-object v0
.end method
