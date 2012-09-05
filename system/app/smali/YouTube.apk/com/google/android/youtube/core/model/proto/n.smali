.class public final Lcom/google/android/youtube/core/model/proto/n;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/youtube/core/model/proto/n;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 593
    new-instance v0, Lcom/google/android/youtube/core/model/proto/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/n;-><init>(C)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/n;->a:Lcom/google/android/youtube/core/model/proto/n;

    .line 594
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/a;->a()V

    .line 595
    sget-object v0, Lcom/google/android/youtube/core/model/proto/n;->a:Lcom/google/android/youtube/core/model/proto/n;

    .line 596
    return-void
.end method

.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/n;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->c:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->e:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->g:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->i:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->k:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->m:Z

    .line 73
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->o:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->q:Z

    .line 87
    iput v1, p0, Lcom/google/android/youtube/core/model/proto/n;->s:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/n;->t:I

    .line 15
    return-void
.end method

.method private constructor <init>(C)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->c:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->e:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->g:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->i:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->k:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->m:Z

    .line 73
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->o:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->q:Z

    .line 87
    iput v1, p0, Lcom/google/android/youtube/core/model/proto/n;->s:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/n;->t:I

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/n;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput p1, p0, Lcom/google/android/youtube/core/model/proto/n;->s:I

    return p1
.end method

.method public static a()Lcom/google/android/youtube/core/model/proto/n;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/youtube/core/model/proto/n;->a:Lcom/google/android/youtube/core/model/proto/n;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/n;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/n;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/n;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/n;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/model/proto/n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/n;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/n;->m:Z

    return p1
.end method

.method static synthetic h(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/n;->o:Z

    return p1
.end method

.method static synthetic j(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/n;->q:Z

    return p1
.end method

.method static synthetic l(Lcom/google/android/youtube/core/model/proto/n;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->r:Z

    return v0
.end method

.method public static v()Lcom/google/android/youtube/core/model/proto/o;
    .registers 1

    .prologue
    .line 248
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/o;->d()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x7

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/n;->j()I

    .line 106
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->b:Z

    if-eqz v0, :cond_e

    .line 107
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/n;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 109
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->d:Z

    if-eqz v0, :cond_18

    .line 110
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/n;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 112
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->f:Z

    if-eqz v0, :cond_22

    .line 113
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/n;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 115
    :cond_22
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->h:Z

    if-eqz v0, :cond_2c

    .line 116
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/n;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 118
    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->j:Z

    if-eqz v0, :cond_36

    .line 119
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/n;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(ILjava/lang/String;)V

    .line 121
    :cond_36
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->l:Z

    if-eqz v0, :cond_40

    .line 122
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(IZ)V

    .line 124
    :cond_40
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->n:Z

    if-eqz v0, :cond_49

    .line 125
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->o:Z

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->a(IZ)V

    .line 127
    :cond_49
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->p:Z

    if-eqz v0, :cond_54

    .line 128
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a(IZ)V

    .line 130
    :cond_54
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->r:Z

    if-eqz v0, :cond_65

    .line 131
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/n;->s:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a(II)V

    if-ltz v0, :cond_66

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->c(I)V

    .line 133
    :cond_65
    :goto_65
    return-void

    .line 131
    :cond_66
    int-to-long v0, v0

    :goto_67
    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_75

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->a(I)V

    goto :goto_65

    :cond_75
    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->a(I)V

    ushr-long/2addr v0, v6

    goto :goto_67
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->f:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->h:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .registers 4

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/n;->t:I

    .line 138
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 178
    :goto_5
    return v0

    .line 140
    :cond_6
    const/4 v0, 0x0

    .line 141
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->b:Z

    if-eqz v1, :cond_14

    .line 142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 145
    :cond_14
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->d:Z

    if-eqz v1, :cond_20

    .line 146
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/n;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_20
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->f:Z

    if-eqz v1, :cond_2c

    .line 150
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/n;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_2c
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->h:Z

    if-eqz v1, :cond_38

    .line 154
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/n;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_38
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->j:Z

    if-eqz v1, :cond_44

    .line 158
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/n;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_44
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->l:Z

    if-eqz v1, :cond_50

    .line 162
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/proto/n;->m:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_50
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->n:Z

    if-eqz v1, :cond_5c

    .line 166
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/proto/n;->o:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_5c
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->p:Z

    if-eqz v1, :cond_69

    .line 170
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/proto/n;->q:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_69
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->r:Z

    if-eqz v1, :cond_7d

    .line 174
    iget v1, p0, Lcom/google/android/youtube/core/model/proto/n;->s:I

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->b(I)I

    move-result v2

    if-ltz v1, :cond_80

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->d(I)I

    move-result v1

    :goto_7b
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 177
    :cond_7d
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/n;->t:I

    goto :goto_5

    .line 174
    :cond_80
    const/16 v1, 0xa

    goto :goto_7b
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->j:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/n;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->l:Z

    return v0
.end method

.method public final n()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->m:Z

    return v0
.end method

.method public final o()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->n:Z

    return v0
.end method

.method public final p()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->o:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->p:Z

    return v0
.end method

.method public final r()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->q:Z

    return v0
.end method

.method public final s()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/n;->r:Z

    return v0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/n;->s:I

    return v0
.end method

.method public final u()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 94
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->b:Z

    if-nez v1, :cond_6

    .line 100
    :cond_5
    :goto_5
    return v0

    .line 95
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->d:Z

    if-eqz v1, :cond_5

    .line 96
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->f:Z

    if-eqz v1, :cond_5

    .line 97
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->h:Z

    if-eqz v1, :cond_5

    .line 98
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->j:Z

    if-eqz v1, :cond_5

    .line 99
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/n;->r:Z

    if-eqz v1, :cond_5

    .line 100
    const/4 v0, 0x1

    goto :goto_5
.end method
