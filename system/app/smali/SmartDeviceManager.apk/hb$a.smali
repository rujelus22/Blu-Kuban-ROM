.class public final enum Lhb$a;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhb$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhb$a;

.field public static final enum AUTO_DETECT_CREATORS:Lhb$a;

.field public static final enum AUTO_DETECT_FIELDS:Lhb$a;

.field public static final enum AUTO_DETECT_SETTERS:Lhb$a;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

.field public static final enum FAIL_ON_UNKNOWN_PROPERTIES:Lhb$a;

.field public static final enum READ_ENUMS_USING_TO_STRING:Lhb$a;

.field public static final enum USE_ANNOTATIONS:Lhb$a;

.field public static final enum USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

.field public static final enum USE_BIG_INTEGER_FOR_INTS:Lhb$a;

.field public static final enum USE_GETTERS_AS_SETTERS:Lhb$a;

.field public static final enum WRAP_ROOT_VALUE:Lhb$a;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    new-instance v0, Lhb$a;

    const-string v1, "USE_ANNOTATIONS"

    invoke-direct {v0, v1, v4, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->USE_ANNOTATIONS:Lhb$a;

    .line 69
    new-instance v0, Lhb$a;

    const-string v1, "AUTO_DETECT_SETTERS"

    invoke-direct {v0, v1, v3, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->AUTO_DETECT_SETTERS:Lhb$a;

    .line 85
    new-instance v0, Lhb$a;

    const-string v1, "AUTO_DETECT_CREATORS"

    invoke-direct {v0, v1, v5, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->AUTO_DETECT_CREATORS:Lhb$a;

    .line 102
    new-instance v0, Lhb$a;

    const-string v1, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v1, v6, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->AUTO_DETECT_FIELDS:Lhb$a;

    .line 120
    new-instance v0, Lhb$a;

    const-string v1, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v0, v1, v7, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->USE_GETTERS_AS_SETTERS:Lhb$a;

    .line 130
    new-instance v0, Lhb$a;

    const-string v1, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    .line 148
    new-instance v0, Lhb$a;

    const-string v1, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    .line 166
    new-instance v0, Lhb$a;

    const-string v1, "USE_BIG_INTEGER_FOR_INTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    .line 182
    new-instance v0, Lhb$a;

    const-string v1, "READ_ENUMS_USING_TO_STRING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->READ_ENUMS_USING_TO_STRING:Lhb$a;

    .line 203
    new-instance v0, Lhb$a;

    const-string v1, "FAIL_ON_UNKNOWN_PROPERTIES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->FAIL_ON_UNKNOWN_PROPERTIES:Lhb$a;

    .line 220
    new-instance v0, Lhb$a;

    const-string v1, "WRAP_ROOT_VALUE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lhb$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhb$a;->WRAP_ROOT_VALUE:Lhb$a;

    .line 40
    const/16 v0, 0xb

    new-array v0, v0, [Lhb$a;

    sget-object v1, Lhb$a;->USE_ANNOTATIONS:Lhb$a;

    aput-object v1, v0, v4

    sget-object v1, Lhb$a;->AUTO_DETECT_SETTERS:Lhb$a;

    aput-object v1, v0, v3

    sget-object v1, Lhb$a;->AUTO_DETECT_CREATORS:Lhb$a;

    aput-object v1, v0, v5

    sget-object v1, Lhb$a;->AUTO_DETECT_FIELDS:Lhb$a;

    aput-object v1, v0, v6

    sget-object v1, Lhb$a;->USE_GETTERS_AS_SETTERS:Lhb$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lhb$a;->USE_BIG_DECIMAL_FOR_FLOATS:Lhb$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lhb$a;->USE_BIG_INTEGER_FOR_INTS:Lhb$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lhb$a;->READ_ENUMS_USING_TO_STRING:Lhb$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lhb$a;->FAIL_ON_UNKNOWN_PROPERTIES:Lhb$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lhb$a;->WRAP_ROOT_VALUE:Lhb$a;

    aput-object v2, v0, v1

    sput-object v0, Lhb$a;->$VALUES:[Lhb$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 241
    iput-boolean p3, p0, Lhb$a;->_defaultState:Z

    .line 242
    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-static {}, Lhb$a;->values()[Lhb$a;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    .line 233
    invoke-virtual {v4}, Lhb$a;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 234
    invoke-virtual {v4}, Lhb$a;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    .line 232
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 237
    :cond_19
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lhb$a;
    .registers 2
    .parameter

    .prologue
    .line 40
    const-class v0, Lhb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhb$a;

    return-object p0
.end method

.method public static values()[Lhb$a;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lhb$a;->$VALUES:[Lhb$a;

    invoke-virtual {v0}, [Lhb$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhb$a;

    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lhb$a;->_defaultState:Z

    return v0
.end method

.method public final getMask()I
    .registers 3

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0}, Lhb$a;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
