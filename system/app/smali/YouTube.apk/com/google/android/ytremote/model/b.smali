.class public final Lcom/google/android/ytremote/model/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Landroid/net/Uri;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/ytremote/model/SsdpId;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/model/c;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->a(Lcom/google/android/ytremote/model/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/b;->c:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->b(Lcom/google/android/ytremote/model/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/b;->g:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->c(Lcom/google/android/ytremote/model/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/b;->h:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->d(Lcom/google/android/ytremote/model/c;)Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    .line 119
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->e(Lcom/google/android/ytremote/model/c;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/b;->b:Landroid/net/Uri;

    .line 120
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->f(Lcom/google/android/ytremote/model/c;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/model/b;->f:Landroid/net/Uri;

    .line 121
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->g(Lcom/google/android/ytremote/model/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/b;->e:Z

    .line 122
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->h(Lcom/google/android/ytremote/model/c;)I

    move-result v0

    iput v0, p0, Lcom/google/android/ytremote/model/b;->a:I

    .line 123
    invoke-static {p1}, Lcom/google/android/ytremote/model/c;->i(Lcom/google/android/ytremote/model/c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/ytremote/model/b;->d:Z

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/google/android/ytremote/model/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/ytremote/model/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/ytremote/model/b;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/ytremote/model/b;)Lcom/google/android/ytremote/model/SsdpId;
    .registers 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/ytremote/model/b;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/ytremote/model/b;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->f:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/ytremote/model/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/ytremote/model/b;->e:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/ytremote/model/b;)I
    .registers 2
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/ytremote/model/b;->a:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/ytremote/model/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/ytremote/model/b;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/ytremote/model/SsdpId;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/ytremote/model/b;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-ne p0, p1, :cond_5

    .line 168
    :cond_4
    :goto_4
    return v0

    .line 154
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 155
    goto :goto_4

    .line 157
    :cond_9
    instance-of v2, p1, Lcom/google/android/ytremote/model/b;

    if-nez v2, :cond_f

    move v0, v1

    .line 158
    goto :goto_4

    .line 160
    :cond_f
    check-cast p1, Lcom/google/android/ytremote/model/b;

    .line 161
    iget-object v2, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    if-nez v2, :cond_1b

    .line 162
    iget-object v2, p1, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    if-eqz v2, :cond_4

    move v0, v1

    .line 163
    goto :goto_4

    .line 165
    :cond_1b
    iget-object v2, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    iget-object v3, p1, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    invoke-virtual {v2, v3}, Lcom/google/android/ytremote/model/SsdpId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 166
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 212
    return v0

    .line 209
    :cond_8
    iget-object v0, p0, Lcom/google/android/ytremote/model/b;->i:Lcom/google/android/ytremote/model/SsdpId;

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/SsdpId;->hashCode()I

    move-result v0

    goto :goto_5
.end method
