.class public final enum Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;
.super Ljava/lang/Enum;
.source "smlvCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmlvCalVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

.field public static final enum VCAL_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

.field public static final enum VCAL_V20:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    const-string v1, "VCAL_V10"

    invoke-direct {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    .line 16
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    const-string v1, "VCAL_V20"

    invoke-direct {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->VCAL_V20:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->VCAL_V10:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->VCAL_V20:Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->$VALUES:[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;
    .registers 2
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    return-object v0
.end method

.method public static values()[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->$VALUES:[Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    invoke-virtual {v0}, [Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/syncmldstmo/base/vitem/smlvCal$SmlvCalVersion;

    return-object v0
.end method
