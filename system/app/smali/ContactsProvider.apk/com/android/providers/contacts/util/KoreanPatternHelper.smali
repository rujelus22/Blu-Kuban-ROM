.class public Lcom/android/providers/contacts/util/KoreanPatternHelper;
.super Ljava/lang/Object;
.source "KoreanPatternHelper.java"


# static fields
.field private static KOREAN_RANGE_PATTERN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 4
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "[\\uAC00-\\uAE4A]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "[\\uAE4C-\\uB091]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[\\uB098-\\uB2E2]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[\\uB2E4-\\uB52A]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "[\\uB530-\\uB775]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[\\uB77C-\\uB9C1]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "[\\uB9C8-\\uBC11]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[\\uBC14-\\uBE5B]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "[\\uBE60-\\uC0A5]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "[\\uC0AC-\\uC2F6]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "[\\uC2F8-\\uC53D]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "[\\uC544-\\uC78E]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "[\\uC790-\\uC9DA]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "[\\uC9DC-\\uCC27]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "[\\uCC28-\\uCE6D]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "[\\uCE74-\\uD0B9]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "[\\uD0C0-\\uD305]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "[\\uD30C-\\uD551]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "[\\uD558-\\uD79D]"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/util/KoreanPatternHelper;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
