.class final enum Lcom/google/android/apps/plus/json/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/json/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum CLOSED:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum DANGLING_NAME:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum EMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

.field public static final enum NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    .line 34
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    .line 40
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    .line 46
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->DANGLING_NAME:Lcom/google/android/apps/plus/json/JsonScope;

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    .line 57
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    .line 62
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    .line 67
    new-instance v0, Lcom/google/android/apps/plus/json/JsonScope;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/json/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->CLOSED:Lcom/google/android/apps/plus/json/JsonScope;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/apps/plus/json/JsonScope;

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_ARRAY:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->DANGLING_NAME:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_OBJECT:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/json/JsonScope;->EMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/json/JsonScope;->NONEMPTY_DOCUMENT:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/json/JsonScope;->CLOSED:Lcom/google/android/apps/plus/json/JsonScope;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/json/JsonScope;->$VALUES:[Lcom/google/android/apps/plus/json/JsonScope;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonScope;
    .registers 2
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/google/android/apps/plus/json/JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/JsonScope;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/json/JsonScope;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/apps/plus/json/JsonScope;->$VALUES:[Lcom/google/android/apps/plus/json/JsonScope;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/json/JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/json/JsonScope;

    return-object v0
.end method
