.class Lcom/android/email/activity/utils/html/SmileyParser$Smileys;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/html/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Smileys"
.end annotation


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MONEY_MOUTH:I

.field public static SAD:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->sIconIds:[I

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->HAPPY:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->SAD:I

    .line 49
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->WINKING:I

    .line 50
    const/4 v0, 0x3

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->TONGUE_STICKING_OUT:I

    .line 51
    const/4 v0, 0x4

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->SURPRISED:I

    .line 52
    const/4 v0, 0x5

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->KISSING:I

    .line 53
    const/4 v0, 0x6

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->YELLING:I

    .line 54
    const/4 v0, 0x7

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->COOL:I

    .line 55
    const/16 v0, 0x8

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->MONEY_MOUTH:I

    .line 56
    const/16 v0, 0x9

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->FOOT_IN_MOUTH:I

    .line 57
    const/16 v0, 0xa

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->EMBARRASSED:I

    .line 58
    const/16 v0, 0xb

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->ANGEL:I

    .line 59
    const/16 v0, 0xc

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->UNDECIDED:I

    .line 60
    const/16 v0, 0xd

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->CRYING:I

    .line 61
    const/16 v0, 0xe

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->LIPS_ARE_SEALED:I

    .line 62
    const/16 v0, 0xf

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->LAUGHING:I

    .line 63
    const/16 v0, 0x10

    sput v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->WTF:I

    return-void

    .line 36
    :array_46
    .array-data 0x4
        0x9dt 0x1t 0x2t 0x7ft
        0xa2t 0x1t 0x2t 0x7ft
        0xa6t 0x1t 0x2t 0x7ft
        0xa4t 0x1t 0x2t 0x7ft
        0xa3t 0x1t 0x2t 0x7ft
        0x9et 0x1t 0x2t 0x7ft
        0xa7t 0x1t 0x2t 0x7ft
        0x99t 0x1t 0x2t 0x7ft
        0xa1t 0x1t 0x2t 0x7ft
        0x9ct 0x1t 0x2t 0x7ft
        0x9bt 0x1t 0x2t 0x7ft
        0x97t 0x1t 0x2t 0x7ft
        0xa5t 0x1t 0x2t 0x7ft
        0x9at 0x1t 0x2t 0x7ft
        0xa0t 0x1t 0x2t 0x7ft
        0x9ft 0x1t 0x2t 0x7ft
        0x98t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .registers 2
    .parameter "which"

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/utils/html/SmileyParser$Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
