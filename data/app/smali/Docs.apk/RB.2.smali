.class final enum LRB;
.super Ljava/lang/Enum;
.source "ZippedFileSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LRB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LRB;

.field private static final synthetic a:[LRB;

.field public static final enum b:LRB;

.field public static final enum c:LRB;

.field public static final enum d:LRB;

.field public static final enum e:LRB;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, LRB;

    const-string v1, "HTML"

    const-string v2, ".html"

    const-string v3, "text/html"

    invoke-direct {v0, v1, v4, v2, v3}, LRB;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LRB;->a:LRB;

    .line 35
    new-instance v0, LRB;

    const-string v1, "CSS"

    const-string v2, ".css"

    const-string v3, "text/css"

    invoke-direct {v0, v1, v5, v2, v3}, LRB;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LRB;->b:LRB;

    .line 36
    new-instance v0, LRB;

    const-string v1, "JS"

    const-string v2, ".js"

    const-string v3, "text/javascript"

    invoke-direct {v0, v1, v6, v2, v3}, LRB;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LRB;->c:LRB;

    .line 37
    new-instance v0, LRB;

    const-string v1, "JPG"

    const-string v2, ".jpg"

    const-string v3, "image/jpeg"

    invoke-direct {v0, v1, v7, v2, v3}, LRB;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LRB;->d:LRB;

    .line 38
    new-instance v0, LRB;

    const-string v1, "PNG"

    const-string v2, ".png"

    const-string v3, "image/png"

    invoke-direct {v0, v1, v8, v2, v3}, LRB;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LRB;->e:LRB;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [LRB;

    sget-object v1, LRB;->a:LRB;

    aput-object v1, v0, v4

    sget-object v1, LRB;->b:LRB;

    aput-object v1, v0, v5

    sget-object v1, LRB;->c:LRB;

    aput-object v1, v0, v6

    sget-object v1, LRB;->d:LRB;

    aput-object v1, v0, v7

    sget-object v1, LRB;->e:LRB;

    aput-object v1, v0, v8

    sput-object v0, LRB;->a:[LRB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, LRB;->a:Ljava/lang/String;

    .line 45
    iput-object p4, p0, LRB;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static a(Ljava/lang/String;)LRB;
    .registers 7
    .parameter

    .prologue
    .line 61
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 62
    sget-object v0, LRB;->a:LRB;

    .line 68
    :cond_1a
    return-object v0

    .line 65
    :cond_1b
    invoke-static {p0}, LRB;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {}, LRB;->values()[LRB;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_26
    if-ge v1, v4, :cond_36

    aget-object v0, v3, v1

    .line 67
    iget-object v5, v0, LRB;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 71
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 52
    if-ltz v3, :cond_1d

    move v0, v1

    :goto_b
    const-string v4, "expected name containing \'.\', got %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v4, v1}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0

    :cond_1d
    move v0, v2

    .line 52
    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)LRB;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, LRB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LRB;

    return-object v0
.end method

.method public static values()[LRB;
    .registers 1

    .prologue
    .line 33
    sget-object v0, LRB;->a:[LRB;

    invoke-virtual {v0}, [LRB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LRB;

    return-object v0
.end method
