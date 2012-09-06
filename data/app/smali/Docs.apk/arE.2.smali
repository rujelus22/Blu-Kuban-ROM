.class public LarE;
.super Ljava/lang/Object;
.source "UserFeedbackSerializer.java"


# instance fields
.field private a:Larz;


# direct methods
.method constructor <init>(Larz;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, LarE;->a:Larz;

    .line 48
    return-void
.end method

.method private b()LasG;
    .registers 4

    .prologue
    .line 55
    new-instance v0, LasG;

    sget-object v1, Lacy;->k:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 56
    const/4 v1, 0x1

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 57
    const/4 v1, 0x2

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 58
    const/4 v1, 0x3

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 59
    const/4 v1, 0x4

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 60
    const/4 v1, 0x5

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 61
    const/4 v1, 0x7

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->release:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 62
    const/16 v1, 0x8

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->incremental:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 63
    const/16 v1, 0x9

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->codename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 64
    const/16 v1, 0xa

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->board:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 65
    const/16 v1, 0xb

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 66
    const/4 v1, 0x6

    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->sdkInt:I

    invoke-virtual {v0, v1, v2}, LasG;->a(II)V

    .line 67
    return-object v0
.end method

.method private c()LasG;
    .registers 4

    .prologue
    .line 71
    new-instance v0, LasG;

    sget-object v1, Lacy;->d:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 72
    const/4 v1, 0x2

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 73
    const/4 v1, 0x6

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->uiLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 74
    const-string v1, ""

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->chosenAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 75
    const/4 v1, 0x3

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->chosenAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 77
    :cond_2b
    return-object v0
.end method

.method private d()LasG;
    .registers 5

    .prologue
    .line 81
    new-instance v1, LasG;

    sget-object v0, Lacy;->i:LasJ;

    invoke-direct {v1, v0}, LasG;-><init>(LasJ;)V

    .line 82
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 83
    const/4 v0, 0x2

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->systemLog:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, LasG;->b(ILjava/lang/String;)V

    .line 85
    :cond_19
    const/4 v0, 0x1

    iget-object v2, p0, LarE;->a:Larz;

    iget-wide v2, v2, Larz;->timestamp:J

    invoke-virtual {v1, v0, v2, v3}, LasG;->a(IJ)V

    .line 86
    const/4 v0, 0x6

    invoke-direct {p0}, LarE;->e()LasG;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LasG;->b(ILasG;)V

    .line 87
    iget-object v0, p0, LarE;->a:Larz;

    iget-object v0, v0, Larz;->runningApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0}, LasG;->a(ILjava/lang/String;)V

    goto :goto_31

    .line 90
    :cond_42
    return-object v1
.end method

.method private e()LasG;
    .registers 4

    .prologue
    .line 94
    new-instance v0, LasG;

    sget-object v1, Lacy;->q:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 95
    const/4 v1, 0x1

    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->phoneType:I

    invoke-virtual {v0, v1, v2}, LasG;->a(II)V

    .line 96
    const/4 v1, 0x3

    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->networkType:I

    invoke-virtual {v0, v1, v2}, LasG;->a(II)V

    .line 97
    const/4 v1, 0x2

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 98
    return-object v0
.end method

.method private f()LasG;
    .registers 4

    .prologue
    .line 102
    new-instance v0, LasG;

    sget-object v1, Lacy;->j:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 103
    const/4 v1, 0x1

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 104
    const/4 v1, 0x2

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 105
    const/4 v1, 0x3

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 106
    const/4 v1, 0x4

    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->packageVersion:I

    invoke-virtual {v0, v1, v2}, LasG;->a(II)V

    .line 107
    const/4 v1, 0x5

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->packageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 108
    const/4 v1, 0x6

    iget-object v2, p0, LarE;->a:Larz;

    iget-boolean v2, v2, Larz;->isSystemApp:Z

    invoke-virtual {v0, v1, v2}, LasG;->a(IZ)V

    .line 109
    return-object v0
.end method

.method private g()LasG;
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 113
    new-instance v1, LasG;

    sget-object v0, Lacy;->p:LasJ;

    invoke-direct {v1, v0}, LasG;-><init>(LasJ;)V

    .line 115
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()LarF;

    move-result-object v0

    invoke-virtual {v0}, LarF;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, LarE;->a:Larz;

    iget-object v0, v0, Larz;->screenshot:[B

    if-eqz v0, :cond_2f

    .line 118
    const/4 v0, 0x4

    invoke-direct {p0}, LarE;->h()LasG;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LasG;->b(ILasG;)V

    .line 121
    :cond_2f
    iget-object v0, p0, LarE;->a:Larz;

    iget-object v0, v0, Larz;->categoryTag:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 122
    const/4 v0, 0x6

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->categoryTag:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, LasG;->b(ILjava/lang/String;)V

    .line 125
    :cond_3d
    iget-object v0, p0, LarE;->a:Larz;

    iget-object v0, v0, Larz;->bucket:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 126
    const/4 v0, 0x7

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->bucket:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, LasG;->b(ILjava/lang/String;)V

    .line 132
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->numGoogleAccounts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, LasG;->b(ILjava/lang/String;)V

    .line 135
    iget-object v0, p0, LarE;->a:Larz;

    iget-object v0, v0, Larz;->productSpecificBinaryData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6d
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larc;

    .line 136
    invoke-virtual {v0}, Larc;->a()[B

    move-result-object v3

    .line 138
    if-eqz v3, :cond_6d

    .line 139
    new-instance v4, LasG;

    sget-object v5, Lacy;->e:LasJ;

    invoke-direct {v4, v5}, LasG;-><init>(LasJ;)V

    .line 141
    invoke-virtual {v0}, Larc;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, LasG;->b(ILjava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Larc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, LasG;->b(ILjava/lang/String;)V

    .line 144
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v3}, LasG;->a(I[B)V

    .line 145
    invoke-virtual {v1, v7, v4}, LasG;->a(ILasG;)V

    goto :goto_6d

    .line 149
    :cond_9c
    return-object v1
.end method

.method private h()LasG;
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 153
    new-instance v0, LasG;

    sget-object v1, Lacy;->f:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 154
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v3, v1}, LasG;->b(ILjava/lang/String;)V

    .line 155
    iget-object v1, p0, LarE;->a:Larz;

    iget-object v1, v1, Larz;->screenshot:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, LarG;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, LasG;->b(ILjava/lang/String;)V

    .line 157
    new-instance v1, LasG;

    sget-object v2, Lacy;->a:LasJ;

    invoke-direct {v1, v2}, LasG;-><init>(LasJ;)V

    .line 158
    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->screenshotHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, LasG;->a(IF)V

    .line 159
    iget-object v2, p0, LarE;->a:Larz;

    iget v2, v2, Larz;->screenshotWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, LasG;->a(IF)V

    .line 160
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, LasG;->b(ILasG;)V

    .line 161
    return-object v0
.end method

.method private i()LasG;
    .registers 4

    .prologue
    .line 165
    new-instance v0, LasG;

    sget-object v1, Lacy;->h:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 166
    const/4 v1, 0x1

    invoke-direct {p0}, LarE;->d()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 167
    const/4 v1, 0x2

    invoke-direct {p0}, LarE;->f()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 168
    const/4 v1, 0x3

    invoke-direct {p0}, LarE;->b()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 169
    const/16 v1, 0x9

    invoke-direct {p0}, LarE;->g()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 171
    iget-object v1, p0, LarE;->a:Larz;

    iget-object v1, v1, Larz;->crashData:Lary;

    if-eqz v1, :cond_36

    .line 172
    const/4 v1, 0x4

    invoke-direct {p0}, LarE;->j()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 174
    :cond_36
    return-object v0
.end method

.method private j()LasG;
    .registers 4

    .prologue
    .line 178
    new-instance v0, LasG;

    sget-object v1, Lacy;->l:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 179
    const/4 v1, 0x1

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget-object v2, v2, Lary;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 180
    const/4 v1, 0x3

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget-object v2, v2, Lary;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 181
    const/4 v1, 0x4

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget v2, v2, Lary;->a:I

    invoke-virtual {v0, v1, v2}, LasG;->a(II)V

    .line 182
    const/4 v1, 0x5

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget-object v2, v2, Lary;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 183
    const/4 v1, 0x6

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget-object v2, v2, Lary;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 184
    const/4 v1, 0x7

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget-object v2, v2, Lary;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 185
    iget-object v1, p0, LarE;->a:Larz;

    iget-object v1, v1, Larz;->crashData:Lary;

    iget-object v1, v1, Lary;->f:Ljava/lang/String;

    if-eqz v1, :cond_55

    .line 186
    const/4 v1, 0x2

    iget-object v2, p0, LarE;->a:Larz;

    iget-object v2, v2, Larz;->crashData:Lary;

    iget-object v2, v2, Lary;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LasG;->b(ILjava/lang/String;)V

    .line 188
    :cond_55
    return-object v0
.end method

.method private k()LasG;
    .registers 4

    .prologue
    .line 192
    new-instance v0, LasG;

    sget-object v1, Lacy;->g:LasJ;

    invoke-direct {v0, v1}, LasG;-><init>(LasJ;)V

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0}, LarE;->c()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 194
    const/4 v1, 0x2

    invoke-direct {p0}, LarE;->i()LasG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LasG;->b(ILasG;)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public a()LasG;
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, LarE;->k()LasG;

    move-result-object v0

    return-object v0
.end method
