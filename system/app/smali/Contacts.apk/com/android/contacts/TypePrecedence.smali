.class public final Lcom/android/contacts/TypePrecedence;
.super Ljava/lang/Object;
.source "TypePrecedence.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TYPE_PRECEDENCE_EMAIL:[I

.field private static final TYPE_PRECEDENCE_IM:[I

.field private static final TYPE_PRECEDENCE_ORG:[I

.field private static final TYPE_PRECEDENCE_PHONES:[I

.field private static final TYPE_PRECEDENCE_POSTAL:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_EMAIL:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_POSTAL:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_ORG:[I

    return-void

    .line 43
    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_56
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_62
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypePrecedence(Ljava/lang/String;I)I
    .registers 5
    .parameter "mimetype"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/contacts/TypePrecedence;->getTypePrecedenceList(Ljava/lang/String;)[I

    move-result-object v1

    .line 87
    .local v1, typePrecedence:[I
    if-nez v1, :cond_8

    .line 88
    const/4 v0, -0x1

    .line 96
    :cond_7
    :goto_7
    return v0

    .line 91
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 92
    aget v2, v1, v0

    if-eq v2, p1, :cond_7

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 96
    :cond_13
    array-length v0, v1

    goto :goto_7
.end method

.method private static getTypePrecedenceList(Ljava/lang/String;)[I
    .registers 2
    .parameter "mimetype"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    .line 114
    :goto_a
    return-object v0

    .line 103
    :cond_b
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_EMAIL:[I

    goto :goto_a

    .line 105
    :cond_16
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 106
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_POSTAL:[I

    goto :goto_a

    .line 107
    :cond_21
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 108
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    goto :goto_a

    .line 109
    :cond_2c
    const-string v0, "vnd.android.cursor.item/video-chat-address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 110
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    goto :goto_a

    .line 111
    :cond_37
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 112
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_ORG:[I

    goto :goto_a

    .line 114
    :cond_42
    const/4 v0, 0x0

    goto :goto_a
.end method
