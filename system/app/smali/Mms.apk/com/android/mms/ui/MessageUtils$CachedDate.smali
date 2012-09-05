.class Lcom/android/mms/ui/MessageUtils$CachedDate;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDate"
.end annotation


# static fields
.field private static sDateTime:Ljava/lang/String;

.field private static sFormatFlags:I

.field private static sOrder:[C

.field private static sWhen:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3058
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    .line 3059
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    .line 3060
    const/4 v0, 0x3

    new-array v0, v0, [C

    sput-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 3056
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(JI[C)Z
    .registers 8
    .parameter "when"
    .parameter "formatFlags"
    .parameter "order"

    .prologue
    const/4 v1, 0x0

    .line 3064
    sget-wide v2, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    cmp-long v2, p0, v2

    if-eqz v2, :cond_8

    .line 3074
    :cond_7
    :goto_7
    return v1

    .line 3066
    :cond_8
    sget v2, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    if-ne p2, v2, :cond_7

    .line 3068
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, p3

    if-ge v0, v2, :cond_1b

    .line 3069
    aget-char v2, p3, v0

    sget-object v3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    aget-char v3, v3, v0

    if-ne v2, v3, :cond_7

    .line 3068
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3074
    :cond_1b
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static getDateTime()Ljava/lang/String;
    .registers 1

    .prologue
    .line 3085
    sget-object v0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public static update(JI[CLjava/lang/String;)V
    .registers 5
    .parameter "when"
    .parameter "formatFlags"
    .parameter "order"
    .parameter "dateTime"

    .prologue
    .line 3078
    sput-wide p0, Lcom/android/mms/ui/MessageUtils$CachedDate;->sWhen:J

    .line 3079
    sput p2, Lcom/android/mms/ui/MessageUtils$CachedDate;->sFormatFlags:I

    .line 3080
    sput-object p3, Lcom/android/mms/ui/MessageUtils$CachedDate;->sOrder:[C

    .line 3081
    sput-object p4, Lcom/android/mms/ui/MessageUtils$CachedDate;->sDateTime:Ljava/lang/String;

    .line 3082
    return-void
.end method
