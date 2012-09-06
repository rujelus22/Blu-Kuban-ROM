.class public Lacw;
.super Ljava/lang/Object;
.source "UrlRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lacw;


# instance fields
.field public final a:Ljava/lang/String;

.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lacw;

    invoke-direct {v0}, Lacw;-><init>()V

    sput-object v0, Lacw;->a:Lacw;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lacw;->a:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lacw;->b:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lacw;->c:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacw;->a:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lacw;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lacv;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    array-length v0, v4

    if-nez v0, :cond_1a

    new-instance v0, Lacx;

    const-string v1, "Empty rule"

    invoke-direct {v0, v1}, Lacx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1a
    aget-object v0, v4, v1

    iput-object v0, p0, Lacw;->b:Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    move v0, v2

    .line 89
    :goto_20
    array-length v5, v4

    if-ge v0, v5, :cond_62

    .line 90
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 91
    const-string v6, "rewrite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    add-int/lit8 v6, v0, 0x1

    array-length v7, v4

    if-ge v6, v7, :cond_3d

    .line 92
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    .line 93
    add-int/lit8 v0, v0, 0x2

    goto :goto_20

    .line 94
    :cond_3d
    const-string v1, "block"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 96
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_20

    .line 98
    :cond_49
    new-instance v0, Lacx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lacx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_62
    iput-object v3, p0, Lacw;->c:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lacw;->a:Z

    .line 105
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lacw;->a:Z

    if-eqz v0, :cond_6

    .line 122
    const/4 p1, 0x0

    .line 126
    :cond_5
    :goto_5
    return-object p1

    .line 123
    :cond_6
    iget-object v0, p0, Lacw;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lacw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lacw;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 132
    check-cast p1, Lacw;

    iget-object v0, p1, Lacw;->b:Ljava/lang/String;

    iget-object v1, p0, Lacw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
