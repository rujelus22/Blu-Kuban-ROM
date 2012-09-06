.class public final Lcom/anddoes/launcher/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/anddoes/launcher/a/d;->a:I

    .line 24
    const-string v0, "com.anddoes.launcher"

    iput-object v0, p0, Lcom/anddoes/launcher/a/d;->b:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/anddoes/launcher/a/d;->c:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/anddoes/launcher/a/d;->d:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anddoes/launcher/a/d;->e:J

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/anddoes/launcher/a/d;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    :cond_7
    :goto_7
    return-object v0

    .line 36
    :cond_8
    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    array-length v1, v2

    const/4 v3, 0x5

    if-lt v1, v3, :cond_7

    .line 41
    new-instance v1, Lcom/anddoes/launcher/a/d;

    invoke-direct {v1}, Lcom/anddoes/launcher/a/d;-><init>()V

    .line 43
    const/4 v3, 0x0

    :try_start_1c
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/anddoes/launcher/a/d;->a:I

    .line 44
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/anddoes/launcher/a/d;->b:Ljava/lang/String;

    .line 45
    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/anddoes/launcher/a/d;->c:Ljava/lang/String;

    .line 46
    const/4 v3, 0x3

    aget-object v3, v2, v3

    iput-object v3, v1, Lcom/anddoes/launcher/a/d;->d:Ljava/lang/String;

    .line 47
    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anddoes/launcher/a/d;->e:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_50

    .line 51
    const-string v2, "com.anddoes.launcher"

    iget-object v3, v1, Lcom/anddoes/launcher/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 52
    iget-object v2, v1, Lcom/anddoes/launcher/a/d;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v0, v1

    .line 55
    goto :goto_7

    .line 49
    :catch_50
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 60
    const-string v0, "|"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/anddoes/launcher/a/d;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anddoes/launcher/a/d;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 61
    iget-object v3, p0, Lcom/anddoes/launcher/a/d;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anddoes/launcher/a/d;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/anddoes/launcher/a/d;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
