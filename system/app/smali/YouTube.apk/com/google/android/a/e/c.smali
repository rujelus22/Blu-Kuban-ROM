.class public final Lcom/google/android/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcom/google/android/a/e/d;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/a/e/b;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/b;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Lcom/google/android/a/e/d;->a:Lcom/google/android/a/e/d;

    iput-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    .line 91
    iput-object p1, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    .line 92
    iput-object p3, p0, Lcom/google/android/a/e/c;->e:Ljava/lang/String;

    .line 93
    iput-wide p4, p0, Lcom/google/android/a/e/c;->b:J

    .line 94
    iput-object p2, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/a/e/e;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/a/e/c;-><init>(Lcom/google/android/a/e/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/a/e/e;B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/google/android/a/e/e;->a(Lcom/google/android/a/e/e;)Lcom/google/android/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    .line 107
    invoke-static {p1}, Lcom/google/android/a/e/e;->b(Lcom/google/android/a/e/e;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/e/c;->b:J

    .line 108
    invoke-static {p1}, Lcom/google/android/a/e/e;->c(Lcom/google/android/a/e/e;)Lcom/google/android/a/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    .line 109
    invoke-static {p1}, Lcom/google/android/a/e/e;->d(Lcom/google/android/a/e/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/c;->e:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/google/android/a/e/e;->e(Lcom/google/android/a/e/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/google/android/a/e/d;->b:Lcom/google/android/a/e/d;

    iput-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    .line 100
    iput-object p2, p0, Lcom/google/android/a/e/c;->e:Ljava/lang/String;

    .line 101
    iput-wide p3, p0, Lcom/google/android/a/e/c;->b:J

    .line 102
    iput-object p1, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/c;)Lcom/google/android/a/e/d;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/e/c;)J
    .registers 3
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/android/a/e/c;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/a/e/c;)Lcom/google/android/a/e/b;
    .registers 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/a/e/c;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/a/e/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/a/e/c;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/a/e/b;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/a/e/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p0, p1, :cond_5

    .line 131
    :cond_4
    :goto_4
    return v0

    .line 116
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    .line 117
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    .line 118
    :cond_15
    check-cast p1, Lcom/google/android/a/e/c;

    .line 119
    iget-object v2, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    if-nez v2, :cond_21

    .line 120
    iget-object v2, p1, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    .line 121
    :cond_21
    iget-object v2, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    iget-object v3, p1, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    invoke-virtual {v2, v3}, Lcom/google/android/a/e/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    .line 122
    :cond_2d
    iget-object v2, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    sget-object v3, Lcom/google/android/a/e/d;->a:Lcom/google/android/a/e/d;

    if-ne v2, v3, :cond_49

    .line 123
    iget-object v2, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    if-nez v2, :cond_3d

    .line 124
    iget-object v2, p1, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 125
    :cond_3d
    iget-object v2, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    iget-object v3, p1, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    invoke-virtual {v2, v3}, Lcom/google/android/a/e/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 127
    :cond_49
    iget-object v2, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    if-nez v2, :cond_53

    .line 128
    iget-object v2, p1, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 129
    :cond_53
    iget-object v2, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 159
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    if-nez v2, :cond_26

    :goto_16
    add-int/2addr v0, v1

    .line 161
    return v0

    .line 156
    :cond_18
    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    invoke-virtual {v0}, Lcom/google/android/a/e/d;->hashCode()I

    move-result v0

    goto :goto_6

    .line 159
    :cond_1f
    iget-object v0, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    invoke-virtual {v0}, Lcom/google/android/a/e/b;->hashCode()I

    move-result v0

    goto :goto_f

    .line 160
    :cond_26
    iget-object v1, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/a/e/c;->d:Lcom/google/android/a/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accessType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string v1, " temporaryToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
