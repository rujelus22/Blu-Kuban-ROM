.class public final enum Lhq$a;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhq$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhq$a;

.field public static final enum AUTO_DETECT_FIELDS:Lhq$a;

.field public static final enum AUTO_DETECT_GETTERS:Lhq$a;

.field public static final enum AUTO_DETECT_IS_GETTERS:Lhq$a;

.field public static final enum CAN_OVERRIDE_ACCESS_MODIFIERS:Lhq$a;

.field public static final enum CLOSE_CLOSEABLE:Lhq$a;

.field public static final enum DEFAULT_VIEW_INCLUSION:Lhq$a;

.field public static final enum FAIL_ON_EMPTY_BEANS:Lhq$a;

.field public static final enum INDENT_OUTPUT:Lhq$a;

.field public static final enum USE_ANNOTATIONS:Lhq$a;

.field public static final enum USE_STATIC_TYPING:Lhq$a;

.field public static final enum WRAP_ROOT_VALUE:Lhq$a;

.field public static final enum WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lhq$a;

.field public static final enum WRITE_DATES_AS_TIMESTAMPS:Lhq$a;

.field public static final enum WRITE_ENUMS_USING_TO_STRING:Lhq$a;

.field public static final enum WRITE_NULL_MAP_VALUES:Lhq$a;

.field public static final enum WRITE_NULL_PROPERTIES:Lhq$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


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

    .line 50
    new-instance v0, Lhq$a;

    const-string v1, "USE_ANNOTATIONS"

    invoke-direct {v0, v1, v4, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->USE_ANNOTATIONS:Lhq$a;

    .line 69
    new-instance v0, Lhq$a;

    const-string v1, "AUTO_DETECT_GETTERS"

    invoke-direct {v0, v1, v3, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->AUTO_DETECT_GETTERS:Lhq$a;

    .line 85
    new-instance v0, Lhq$a;

    const-string v1, "AUTO_DETECT_IS_GETTERS"

    invoke-direct {v0, v1, v5, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->AUTO_DETECT_IS_GETTERS:Lhq$a;

    .line 102
    new-instance v0, Lhq$a;

    const-string v1, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v1, v6, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->AUTO_DETECT_FIELDS:Lhq$a;

    .line 112
    new-instance v0, Lhq$a;

    const-string v1, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    invoke-direct {v0, v1, v7, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhq$a;

    .line 130
    new-instance v0, Lhq$a;

    const-string v1, "WRITE_NULL_PROPERTIES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->WRITE_NULL_PROPERTIES:Lhq$a;

    .line 143
    new-instance v0, Lhq$a;

    const-string v1, "USE_STATIC_TYPING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->USE_STATIC_TYPING:Lhq$a;

    .line 161
    new-instance v0, Lhq$a;

    const-string v1, "WRAP_ROOT_VALUE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->WRAP_ROOT_VALUE:Lhq$a;

    .line 178
    new-instance v0, Lhq$a;

    const-string v1, "FAIL_ON_EMPTY_BEANS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->FAIL_ON_EMPTY_BEANS:Lhq$a;

    .line 196
    new-instance v0, Lhq$a;

    const-string v1, "DEFAULT_VIEW_INCLUSION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->DEFAULT_VIEW_INCLUSION:Lhq$a;

    .line 214
    new-instance v0, Lhq$a;

    const-string v1, "CLOSE_CLOSEABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->CLOSE_CLOSEABLE:Lhq$a;

    .line 229
    new-instance v0, Lhq$a;

    const-string v1, "WRITE_DATES_AS_TIMESTAMPS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->WRITE_DATES_AS_TIMESTAMPS:Lhq$a;

    .line 239
    new-instance v0, Lhq$a;

    const-string v1, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v4}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lhq$a;

    .line 254
    new-instance v0, Lhq$a;

    const-string v1, "WRITE_ENUMS_USING_TO_STRING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->WRITE_ENUMS_USING_TO_STRING:Lhq$a;

    .line 264
    new-instance v0, Lhq$a;

    const-string v1, "WRITE_NULL_MAP_VALUES"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->WRITE_NULL_MAP_VALUES:Lhq$a;

    .line 285
    new-instance v0, Lhq$a;

    const-string v1, "INDENT_OUTPUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v4}, Lhq$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lhq$a;->INDENT_OUTPUT:Lhq$a;

    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [Lhq$a;

    sget-object v1, Lhq$a;->USE_ANNOTATIONS:Lhq$a;

    aput-object v1, v0, v4

    sget-object v1, Lhq$a;->AUTO_DETECT_GETTERS:Lhq$a;

    aput-object v1, v0, v3

    sget-object v1, Lhq$a;->AUTO_DETECT_IS_GETTERS:Lhq$a;

    aput-object v1, v0, v5

    sget-object v1, Lhq$a;->AUTO_DETECT_FIELDS:Lhq$a;

    aput-object v1, v0, v6

    sget-object v1, Lhq$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhq$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhq$a;->WRITE_NULL_PROPERTIES:Lhq$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lhq$a;->USE_STATIC_TYPING:Lhq$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lhq$a;->WRAP_ROOT_VALUE:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lhq$a;->FAIL_ON_EMPTY_BEANS:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lhq$a;->DEFAULT_VIEW_INCLUSION:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lhq$a;->CLOSE_CLOSEABLE:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lhq$a;->WRITE_DATES_AS_TIMESTAMPS:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lhq$a;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lhq$a;->WRITE_ENUMS_USING_TO_STRING:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lhq$a;->WRITE_NULL_MAP_VALUES:Lhq$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lhq$a;->INDENT_OUTPUT:Lhq$a;

    aput-object v2, v0, v1

    sput-object v0, Lhq$a;->$VALUES:[Lhq$a;

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
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 307
    iput-boolean p3, p0, Lhq$a;->_defaultState:Z

    .line 308
    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-static {}, Lhq$a;->values()[Lhq$a;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    .line 299
    invoke-virtual {v4}, Lhq$a;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 300
    invoke-virtual {v4}, Lhq$a;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    .line 298
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 303
    :cond_19
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lhq$a;
    .registers 2
    .parameter

    .prologue
    .line 37
    const-class v0, Lhq$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhq$a;

    return-object p0
.end method

.method public static values()[Lhq$a;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lhq$a;->$VALUES:[Lhq$a;

    invoke-virtual {v0}, [Lhq$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhq$a;

    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .registers 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lhq$a;->_defaultState:Z

    return v0
.end method

.method public final getMask()I
    .registers 3

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0}, Lhq$a;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
