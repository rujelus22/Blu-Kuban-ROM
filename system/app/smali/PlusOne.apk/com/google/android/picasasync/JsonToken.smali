.class public final enum Lcom/google/android/picasasync/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/picasasync/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/picasasync/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

.field public static final enum BOOLEAN:Lcom/google/android/picasasync/JsonToken;

.field public static final enum END_ARRAY:Lcom/google/android/picasasync/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/google/android/picasasync/JsonToken;

.field public static final enum END_OBJECT:Lcom/google/android/picasasync/JsonToken;

.field public static final enum NAME:Lcom/google/android/picasasync/JsonToken;

.field public static final enum NULL:Lcom/google/android/picasasync/JsonToken;

.field public static final enum NUMBER:Lcom/google/android/picasasync/JsonToken;

.field public static final enum STRING:Lcom/google/android/picasasync/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

    .line 35
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    .line 41
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    .line 47
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;

    .line 54
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->NAME:Lcom/google/android/picasasync/JsonToken;

    .line 59
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    .line 65
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    .line 70
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->BOOLEAN:Lcom/google/android/picasasync/JsonToken;

    .line 75
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->NULL:Lcom/google/android/picasasync/JsonToken;

    .line 82
    new-instance v0, Lcom/google/android/picasasync/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->END_DOCUMENT:Lcom/google/android/picasasync/JsonToken;

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/picasasync/JsonToken;

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->BEGIN_ARRAY:Lcom/google/android/picasasync/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_ARRAY:Lcom/google/android/picasasync/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->BEGIN_OBJECT:Lcom/google/android/picasasync/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->END_OBJECT:Lcom/google/android/picasasync/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/picasasync/JsonToken;->NAME:Lcom/google/android/picasasync/JsonToken;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->STRING:Lcom/google/android/picasasync/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->NUMBER:Lcom/google/android/picasasync/JsonToken;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->BOOLEAN:Lcom/google/android/picasasync/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->NULL:Lcom/google/android/picasasync/JsonToken;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/picasasync/JsonToken;->END_DOCUMENT:Lcom/google/android/picasasync/JsonToken;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/JsonToken;->$VALUES:[Lcom/google/android/picasasync/JsonToken;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/picasasync/JsonToken;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/google/android/picasasync/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/google/android/picasasync/JsonToken;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/picasasync/JsonToken;->$VALUES:[Lcom/google/android/picasasync/JsonToken;

    invoke-virtual {v0}, [Lcom/google/android/picasasync/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/picasasync/JsonToken;

    return-object v0
.end method
