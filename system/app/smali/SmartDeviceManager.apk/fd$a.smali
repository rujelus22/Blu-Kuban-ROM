.class public final enum Lfd$a;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfd$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfd$a;

.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lfd$a;

.field public static final enum ALLOW_COMMENTS:Lfd$a;

.field public static final enum ALLOW_SINGLE_QUOTES:Lfd$a;

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lfd$a;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lfd$a;

.field public static final enum AUTO_CLOSE_SOURCE:Lfd$a;

.field public static final enum CANONICALIZE_FIELD_NAMES:Lfd$a;

.field public static final enum INTERN_FIELD_NAMES:Lfd$a;


# instance fields
.field final _defaultState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lfd$a;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->AUTO_CLOSE_SOURCE:Lfd$a;

    .line 80
    new-instance v0, Lfd$a;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->ALLOW_COMMENTS:Lfd$a;

    .line 96
    new-instance v0, Lfd$a;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->ALLOW_UNQUOTED_FIELD_NAMES:Lfd$a;

    .line 114
    new-instance v0, Lfd$a;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->ALLOW_SINGLE_QUOTES:Lfd$a;

    .line 131
    new-instance v0, Lfd$a;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->ALLOW_UNQUOTED_CONTROL_CHARS:Lfd$a;

    .line 146
    new-instance v0, Lfd$a;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lfd$a;

    .line 163
    new-instance v0, Lfd$a;

    const-string v1, "INTERN_FIELD_NAMES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->INTERN_FIELD_NAMES:Lfd$a;

    .line 173
    new-instance v0, Lfd$a;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lfd$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lfd$a;->CANONICALIZE_FIELD_NAMES:Lfd$a;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Lfd$a;

    sget-object v1, Lfd$a;->AUTO_CLOSE_SOURCE:Lfd$a;

    aput-object v1, v0, v3

    sget-object v1, Lfd$a;->ALLOW_COMMENTS:Lfd$a;

    aput-object v1, v0, v4

    sget-object v1, Lfd$a;->ALLOW_UNQUOTED_FIELD_NAMES:Lfd$a;

    aput-object v1, v0, v5

    sget-object v1, Lfd$a;->ALLOW_SINGLE_QUOTES:Lfd$a;

    aput-object v1, v0, v6

    sget-object v1, Lfd$a;->ALLOW_UNQUOTED_CONTROL_CHARS:Lfd$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfd$a;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lfd$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfd$a;->INTERN_FIELD_NAMES:Lfd$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfd$a;->CANONICALIZE_FIELD_NAMES:Lfd$a;

    aput-object v2, v0, v1

    sput-object v0, Lfd$a;->$VALUES:[Lfd$a;

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
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput-boolean p3, p0, Lfd$a;->_defaultState:Z

    .line 215
    return-void
.end method

.method public static collectDefaults()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-static {}, Lfd$a;->values()[Lfd$a;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v4, v0, v2

    .line 206
    invoke-virtual {v4}, Lfd$a;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 207
    invoke-virtual {v4}, Lfd$a;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    .line 205
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 210
    :cond_19
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lfd$a;
    .registers 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lfd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfd$a;

    return-object p0
.end method

.method public static values()[Lfd$a;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lfd$a;->$VALUES:[Lfd$a;

    invoke-virtual {v0}, [Lfd$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfd$a;

    return-object v0
.end method


# virtual methods
.method public final enabledByDefault()Z
    .registers 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lfd$a;->_defaultState:Z

    return v0
.end method

.method public final getMask()I
    .registers 3

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0}, Lfd$a;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
