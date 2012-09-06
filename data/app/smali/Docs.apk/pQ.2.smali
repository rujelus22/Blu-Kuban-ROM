.class public final enum LpQ;
.super Ljava/lang/Enum;
.source "DocumentOpenerError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LpQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LpQ;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum a:LpQ;

.field private static final synthetic a:[LpQ;

.field public static final enum b:LpQ;

.field public static final enum c:LpQ;

.field public static final enum d:LpQ;

.field public static final enum e:LpQ;

.field public static final enum f:LpQ;

.field public static final enum g:LpQ;

.field public static final enum h:LpQ;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 17
    new-instance v1, LpQ;

    const-string v2, "USER_INTERRUPTED"

    invoke-direct {v1, v2, v0, v5}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->a:LpQ;

    .line 20
    new-instance v1, LpQ;

    const-string v2, "DOCUMENT_UNAVAILABLE"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v5, v3}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->b:LpQ;

    .line 23
    new-instance v1, LpQ;

    const-string v2, "VIEWER_UNAVAILABLE"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v6, v3}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->c:LpQ;

    .line 26
    new-instance v1, LpQ;

    const-string v2, "VIDEO_UNAVAILABLE"

    const/4 v3, -0x3

    invoke-direct {v1, v2, v7, v3}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->d:LpQ;

    .line 29
    new-instance v1, LpQ;

    const-string v2, "EXTERNAL_STORAGE_NOT_READY"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v8, v3}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->e:LpQ;

    .line 32
    new-instance v1, LpQ;

    const-string v2, "AUTHENTICATION_FAILURE"

    const/4 v3, 0x5

    const/16 v4, -0x65

    invoke-direct {v1, v2, v3, v4}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->f:LpQ;

    .line 35
    new-instance v1, LpQ;

    const-string v2, "CONNECTION_FAILURE"

    const/4 v3, 0x6

    const/16 v4, -0x66

    invoke-direct {v1, v2, v3, v4}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->g:LpQ;

    .line 38
    new-instance v1, LpQ;

    const-string v2, "UNKNOWN_INTERNAL"

    const/4 v3, 0x7

    const/16 v4, -0xc8

    invoke-direct {v1, v2, v3, v4}, LpQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, LpQ;->h:LpQ;

    .line 14
    const/16 v1, 0x8

    new-array v1, v1, [LpQ;

    sget-object v2, LpQ;->a:LpQ;

    aput-object v2, v1, v0

    sget-object v2, LpQ;->b:LpQ;

    aput-object v2, v1, v5

    sget-object v2, LpQ;->c:LpQ;

    aput-object v2, v1, v6

    sget-object v2, LpQ;->d:LpQ;

    aput-object v2, v1, v7

    sget-object v2, LpQ;->e:LpQ;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, LpQ;->f:LpQ;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, LpQ;->g:LpQ;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, LpQ;->h:LpQ;

    aput-object v3, v1, v2

    sput-object v1, LpQ;->a:[LpQ;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, LpQ;->a:Ljava/util/Map;

    .line 44
    invoke-static {}, LpQ;->values()[LpQ;

    move-result-object v1

    array-length v2, v1

    :goto_8f
    if-ge v0, v2, :cond_a3

    aget-object v3, v1, v0

    .line 45
    sget-object v4, LpQ;->a:Ljava/util/Map;

    invoke-virtual {v3}, LpQ;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 47
    :cond_a3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, LpQ;->a:I

    .line 63
    return-void
.end method

.method public static a(I)LpQ;
    .registers 5
    .parameter

    .prologue
    .line 53
    sget-object v0, LpQ;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpQ;

    .line 54
    if-eqz v0, :cond_26

    const/4 v1, 0x1

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 56
    return-object v0

    .line 54
    :cond_26
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)LpQ;
    .registers 2
    .parameter

    .prologue
    .line 14
    const-class v0, LpQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LpQ;

    return-object v0
.end method

.method public static values()[LpQ;
    .registers 1

    .prologue
    .line 14
    sget-object v0, LpQ;->a:[LpQ;

    invoke-virtual {v0}, [LpQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LpQ;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, LpQ;->a:I

    return v0
.end method
