.class public Lq/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "[0-9]+[A-Z]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lq/f;->c:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lq/f;->b:Ljava/lang/String;

    .line 34
    if-eqz p3, :cond_17

    invoke-virtual {p0}, Lq/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lq/f;->d:Z

    .line 35
    return-void

    .line 34
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Lq/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lq/f;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lq/f;->c:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lq/f;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lq/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lq/f;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p0, p1, :cond_5

    .line 67
    :cond_4
    :goto_4
    return v0

    .line 60
    :cond_5
    instance-of v2, p1, Lq/f;

    if-eqz v2, :cond_2f

    .line 61
    check-cast p1, Lq/f;

    .line 62
    iget-object v2, p0, Lq/f;->c:Ljava/lang/String;

    iget-object v3, p1, Lq/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lq/f;->b:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p1, Lq/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_27

    :cond_1d
    iget-object v2, p0, Lq/f;->b:Ljava/lang/String;

    iget-object v3, p1, Lq/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_27
    iget-boolean v2, p0, Lq/f;->d:Z

    iget-boolean v3, p1, Lq/f;->d:Z

    if-eq v2, v3, :cond_4

    :cond_2d
    move v0, v1

    goto :goto_4

    :cond_2f
    move v0, v1

    .line 67
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 47
    .line 49
    iget-object v0, p0, Lq/f;->b:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 50
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lq/f;->d:Z

    if-eqz v0, :cond_20

    const/16 v0, 0x4cf

    :goto_10
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lq/f;->c:Ljava/lang/String;

    if-nez v2, :cond_23

    :goto_17
    add-int/2addr v0, v1

    .line 52
    return v0

    .line 49
    :cond_19
    iget-object v0, p0, Lq/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 50
    :cond_20
    const/16 v0, 0x4d5

    goto :goto_10

    .line 51
    :cond_23
    iget-object v1, p0, Lq/f;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lq/f;->c:Ljava/lang/String;

    return-object v0
.end method
