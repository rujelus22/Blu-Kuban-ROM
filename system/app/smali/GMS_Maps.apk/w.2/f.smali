.class public Lw/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[0-9]+[A-Z]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lw/f;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lw/f;->b:Ljava/lang/String;

    if-eqz p3, :cond_17

    invoke-virtual {p0}, Lw/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lw/f;->d:Z

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lw/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw/f;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lw/f;->c:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lw/f;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lw/f;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lw/f;

    if-eqz v2, :cond_2f

    check-cast p1, Lw/f;

    iget-object v2, p0, Lw/f;->c:Ljava/lang/String;

    iget-object v3, p1, Lw/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lw/f;->b:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p1, Lw/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_27

    :cond_1d
    iget-object v2, p0, Lw/f;->b:Ljava/lang/String;

    iget-object v3, p1, Lw/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_27
    iget-boolean v2, p0, Lw/f;->d:Z

    iget-boolean v3, p1, Lw/f;->d:Z

    if-eq v2, v3, :cond_4

    :cond_2d
    move v0, v1

    goto :goto_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw/f;->c:Ljava/lang/String;

    return-object v0
.end method
