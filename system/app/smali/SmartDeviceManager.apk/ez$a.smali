.class public final enum Lez$a;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lez$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lez$a;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Lez$a;

.field public static final enum AUTO_CLOSE_TARGET:Lez$a;

.field public static final enum QUOTE_FIELD_NAMES:Lez$a;

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Lez$a;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lez$a;


# instance fields
.field final _defaultState:Z

.field final _mask:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 50
    new-instance v0, Lez$a;

    const-string v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v3, v2}, Lez$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lez$a;->AUTO_CLOSE_TARGET:Lez$a;

    .line 62
    new-instance v0, Lez$a;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v2, v2}, Lez$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lez$a;->AUTO_CLOSE_JSON_CONTENT:Lez$a;

    .line 71
    new-instance v0, Lez$a;

    const-string v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v4, v2}, Lez$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lez$a;->QUOTE_FIELD_NAMES:Lez$a;

    .line 85
    new-instance v0, Lez$a;

    const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v5, v2}, Lez$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lez$a;->QUOTE_NON_NUMERIC_NUMBERS:Lez$a;

    .line 102
    new-instance v0, Lez$a;

    const-string v1, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v1, v6, v3}, Lez$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lez$a;->WRITE_NUMBERS_AS_STRINGS:Lez$a;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lez$a;

    sget-object v1, Lez$a;->AUTO_CLOSE_TARGET:Lez$a;

    aput-object v1, v0, v3

    sget-object v1, Lez$a;->AUTO_CLOSE_JSON_CONTENT:Lez$a;

    aput-object v1, v0, v2

    sget-object v1, Lez$a;->QUOTE_FIELD_NAMES:Lez$a;

    aput-object v1, v0, v4

    sget-object v1, Lez$a;->QUOTE_NON_NUMERIC_NUMBERS:Lez$a;

    aput-object v1, v0, v5

    sget-object v1, Lez$a;->WRITE_NUMBERS_AS_STRINGS:Lez$a;

    aput-object v1, v0, v6

    sput-object v0, Lez$a;->$VALUES:[Lez$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput-boolean p3, p0, Lez$a;->_defaultState:Z

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0}, Lez$a;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lez$a;->_mask:I

    .line 128
    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {}, Lez$a;->values()[Lez$a;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    .line 118
    invoke-virtual {v4}, Lez$a;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 119
    invoke-virtual {v4}, Lez$a;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    .line 117
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 122
    :cond_19
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lez$a;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lez$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lez$a;

    return-object p0
.end method

.method public static values()[Lez$a;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lez$a;->$VALUES:[Lez$a;

    invoke-virtual {v0}, [Lez$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lez$a;

    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lez$a;->_defaultState:Z

    return v0
.end method

.method public final getMask()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lez$a;->_mask:I

    return v0
.end method
