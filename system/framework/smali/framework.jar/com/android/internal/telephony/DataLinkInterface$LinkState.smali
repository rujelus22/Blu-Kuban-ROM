.class public final enum Lcom/android/internal/telephony/DataLinkInterface$LinkState;
.super Ljava/lang/Enum;
.source "DataLinkInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataLinkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataLinkInterface$LinkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataLinkInterface$LinkState;

.field public static final enum LINK_DOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

.field public static final enum LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

.field public static final enum LINK_UNKNOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

.field public static final enum LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    const-string v1, "LINK_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UNKNOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    const-string v1, "LINK_UP"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    const-string v1, "LINK_DOWN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_DOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    const-string v1, "LINK_EXITED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    sget-object v1, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UNKNOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_DOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->$VALUES:[Lcom/android/internal/telephony/DataLinkInterface$LinkState;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataLinkInterface$LinkState;
    .registers 2
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataLinkInterface$LinkState;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->$VALUES:[Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataLinkInterface$LinkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    return-object v0
.end method
