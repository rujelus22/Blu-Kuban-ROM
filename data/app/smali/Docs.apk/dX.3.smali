.class public final enum LdX;
.super Ljava/lang/Enum;
.source "ClientMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LdX;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LdX;

.field private static final synthetic a:[LdX;

.field public static final enum b:LdX;

.field public static final enum c:LdX;

.field public static final enum d:LdX;

.field public static final e:LdX;


# instance fields
.field public final a:Ljava/lang/String;

.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 16
    new-instance v0, LdX;

    const-string v1, "RELEASE"

    const-string v5, "_r1.0"

    const-string v6, "https://ssl.gstatic.com/docs/android/client_flags"

    move v4, v2

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, LdX;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LdX;->a:LdX;

    .line 20
    new-instance v4, LdX;

    const-string v5, "DOGFOOD"

    const-string v7, "d"

    const-string v9, "_dogfood"

    const-string v10, "https://ssl.gstatic.com/docs/android/dogfood_client_flags"

    move v6, v12

    move v8, v12

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, LdX;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, LdX;->b:LdX;

    .line 24
    new-instance v4, LdX;

    const-string v5, "CAKEFOOD"

    const-string v7, "c"

    const-string v9, "_cakefood"

    const-string v10, "https://ssl.gstatic.com/docs/android/cakefood_client_flags"

    move v6, v13

    move v8, v12

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, LdX;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, LdX;->c:LdX;

    .line 29
    new-instance v3, LdX;

    const-string v4, "EXPERIMENTAL"

    const-string v6, "x"

    const-string v8, "_cakefood"

    const-string v9, "https://ssl.gstatic.com/docs/android/cakefood_client_flags"

    const-string v10, "docs_flags"

    move v5, v14

    move v7, v12

    invoke-direct/range {v3 .. v10}, LdX;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, LdX;->d:LdX;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [LdX;

    sget-object v1, LdX;->a:LdX;

    aput-object v1, v0, v2

    sget-object v1, LdX;->b:LdX;

    aput-object v1, v0, v12

    sget-object v1, LdX;->c:LdX;

    aput-object v1, v0, v13

    sget-object v1, LdX;->d:LdX;

    aput-object v1, v0, v14

    sput-object v0, LdX;->a:[LdX;

    .line 33
    sget-object v0, LdX;->a:LdX;

    sput-object v0, LdX;->e:LdX;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, LdX;->a:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, LdX;->a:Z

    .line 54
    iput-object p6, p0, LdX;->b:Ljava/lang/String;

    .line 55
    iput-object p7, p0, LdX;->c:Ljava/lang/String;

    .line 56
    iput-object p5, p0, LdX;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;)LdX;
    .registers 7
    .parameter

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    invoke-static {}, LdX;->values()[LdX;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v4, :cond_1e

    aget-object v0, v3, v2

    .line 89
    iget-object v5, v0, LdX;->a:Ljava/lang/String;

    if-nez v5, :cond_15

    .line 88
    :goto_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_8

    .line 91
    :cond_15
    iget-object v5, v0, LdX;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 96
    :goto_1d
    return-object v0

    :cond_1e
    move-object v0, v1

    goto :goto_1d

    :cond_20
    move-object v0, v1

    goto :goto_10
.end method

.method public static valueOf(Ljava/lang/String;)LdX;
    .registers 2
    .parameter

    .prologue
    .line 15
    const-class v0, LdX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LdX;

    return-object v0
.end method

.method public static values()[LdX;
    .registers 1

    .prologue
    .line 15
    sget-object v0, LdX;->a:[LdX;

    invoke-virtual {v0}, [LdX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LdX;

    return-object v0
.end method


# virtual methods
.method public a(LdX;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_4

    .line 76
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, LdX;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method
