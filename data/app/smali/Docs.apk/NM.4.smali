.class public final enum LNM;
.super Ljava/lang/Enum;
.source "PunchWebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LNM;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LNM;

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LMl;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic a:[LNM;

.field public static final enum b:LNM;

.field public static final enum c:LNM;

.field public static final enum d:LNM;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 153
    new-instance v1, LNM;

    const-string v2, "EMPTY"

    invoke-direct {v1, v2, v0, v3}, LNM;-><init>(Ljava/lang/String;II)V

    sput-object v1, LNM;->a:LNM;

    .line 154
    new-instance v1, LNM;

    const-string v2, "LOADED"

    invoke-direct {v1, v2, v3, v4}, LNM;-><init>(Ljava/lang/String;II)V

    sput-object v1, LNM;->b:LNM;

    .line 155
    new-instance v1, LNM;

    const-string v2, "LOADING"

    invoke-direct {v1, v2, v4, v5}, LNM;-><init>(Ljava/lang/String;II)V

    sput-object v1, LNM;->c:LNM;

    .line 156
    new-instance v1, LNM;

    const-string v2, "ERROR"

    invoke-direct {v1, v2, v5, v6}, LNM;-><init>(Ljava/lang/String;II)V

    sput-object v1, LNM;->d:LNM;

    .line 152
    new-array v1, v6, [LNM;

    sget-object v2, LNM;->a:LNM;

    aput-object v2, v1, v0

    sget-object v2, LNM;->b:LNM;

    aput-object v2, v1, v3

    sget-object v2, LNM;->c:LNM;

    aput-object v2, v1, v4

    sget-object v2, LNM;->d:LNM;

    aput-object v2, v1, v5

    sput-object v1, LNM;->a:[LNM;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, LNM;->a:Ljava/util/Map;

    .line 162
    invoke-static {}, LNM;->values()[LNM;

    move-result-object v1

    array-length v2, v1

    :goto_49
    if-ge v0, v2, :cond_5b

    aget-object v3, v1, v0

    .line 163
    sget-object v4, LNM;->a:Ljava/util/Map;

    iget v5, v3, LNM;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 165
    :cond_5b
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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, LNM;->a:I

    .line 179
    return-void
.end method

.method public static a(I)LNM;
    .registers 3
    .parameter

    .prologue
    .line 174
    sget-object v0, LNM;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNM;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LNM;
    .registers 2
    .parameter

    .prologue
    .line 152
    const-class v0, LNM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LNM;

    return-object v0
.end method

.method public static values()[LNM;
    .registers 1

    .prologue
    .line 152
    sget-object v0, LNM;->a:[LNM;

    invoke-virtual {v0}, [LNM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LNM;

    return-object v0
.end method
