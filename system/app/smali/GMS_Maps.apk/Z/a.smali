.class public Lz/A;
.super Lz/m;
.source "SourceFile"


# instance fields
.field g:[I

.field h:Lz/s;

.field private i:Lz/q;

.field private volatile j:I

.field private volatile k:I

.field private volatile l:Z

.field private volatile m:I

.field private volatile n:I

.field private volatile o:Z

.field private final p:I

.field private q:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz/A;-><init>(Lz/q;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lz/q;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz/A;-><init>(Lz/q;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lz/q;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lz/A;-><init>(Lz/q;IZ)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lz/q;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2901

    const/4 v1, 0x0

    .line 126
    invoke-static {p2}, Lz/A;->a(I)Lz/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lz/m;-><init>(Lz/n;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lz/A;->i:Lz/q;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lz/A;->g:[I

    .line 52
    const/16 v0, 0x2600

    iput v0, p0, Lz/A;->j:I

    .line 57
    const/16 v0, 0x2601

    iput v0, p0, Lz/A;->k:I

    .line 62
    iput-boolean v1, p0, Lz/A;->l:Z

    .line 67
    iput v2, p0, Lz/A;->m:I

    .line 72
    iput v2, p0, Lz/A;->n:I

    .line 77
    iput-boolean v1, p0, Lz/A;->o:Z

    .line 87
    iput-boolean v1, p0, Lz/A;->q:Z

    .line 92
    new-instance v0, Lz/s;

    invoke-direct {v0}, Lz/s;-><init>()V

    iput-object v0, p0, Lz/A;->h:Lz/s;

    .line 127
    iput-object p1, p0, Lz/A;->i:Lz/q;

    .line 128
    iput-boolean p3, p0, Lz/A;->q:Z

    .line 130
    packed-switch p2, :pswitch_data_58

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported texture unit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_4b
    const v0, 0x84c0

    iput v0, p0, Lz/A;->p:I

    .line 140
    :goto_50
    return-void

    .line 135
    :pswitch_51
    const v0, 0x84c1

    iput v0, p0, Lz/A;->p:I

    goto :goto_50

    .line 130
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_51
    .end packed-switch
.end method

.method private static a(I)Lz/n;
    .registers 4
    .parameter

    .prologue
    .line 156
    packed-switch p0, :pswitch_data_22

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported texture unit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_1c
    sget-object v0, Lz/n;->b:Lz/n;

    .line 160
    :goto_1e
    return-object v0

    :pswitch_1f
    sget-object v0, Lz/n;->c:Lz/n;

    goto :goto_1e

    .line 156
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method a(Lz/j;Lz/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lz/A;->i:Lz/q;

    if-nez v0, :cond_5

    .line 230
    :cond_4
    :goto_4
    return-void

    .line 226
    :cond_5
    if-nez p2, :cond_4

    .line 227
    iget v0, p0, Lz/A;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 228
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_4
.end method

.method protected a(Lz/q;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 148
    iget-boolean v0, p0, Lz/A;->c:Z

    if-eqz v0, :cond_c

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called BEFORE set live"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_c
    iput-boolean p2, p0, Lz/A;->q:Z

    .line 152
    iput-object p1, p0, Lz/A;->i:Lz/q;

    .line 153
    return-void
.end method

.method a(Lz/j;Lz/i;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xde1

    .line 169
    invoke-super {p0, p1, p2}, Lz/m;->a(Lz/j;Lz/i;)Z

    move-result v0

    .line 171
    if-eqz v0, :cond_42

    .line 172
    iget-boolean v1, p2, Lz/i;->e:Z

    if-eqz v1, :cond_43

    .line 173
    iget-object v1, p0, Lz/A;->g:[I

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 174
    iget-object v1, p0, Lz/A;->g:[I

    aget v1, v1, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    iget-object v1, p0, Lz/A;->i:Lz/q;

    invoke-virtual {v1, p1, p2}, Lz/q;->a(Lz/j;Lz/i;)Z

    .line 177
    const/16 v1, 0x2801

    iget v2, p0, Lz/A;->j:I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 178
    const/16 v1, 0x2800

    iget v2, p0, Lz/A;->k:I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 180
    const/16 v1, 0x2802

    iget v2, p0, Lz/A;->m:I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 181
    const/16 v1, 0x2803

    iget v2, p0, Lz/A;->n:I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 182
    iget-boolean v1, p0, Lz/A;->q:Z

    if-eqz v1, :cond_42

    .line 183
    invoke-static {v3}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 191
    :cond_42
    :goto_42
    return v0

    .line 186
    :cond_43
    iget-object v1, p0, Lz/A;->i:Lz/q;

    invoke-virtual {v1, p1, p2}, Lz/q;->a(Lz/j;Lz/i;)Z

    .line 187
    iget-object v1, p0, Lz/A;->g:[I

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_42
.end method

.method public b(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const v3, 0x8370

    const v2, 0x812f

    const/16 v1, 0x2901

    .line 238
    iget-boolean v0, p0, Lz/A;->c:Z

    if-eqz v0, :cond_f

    .line 239
    invoke-static {}, Lz/j;->c()V

    .line 242
    :cond_f
    if-eq p1, v1, :cond_15

    if-eq p1, v2, :cond_15

    if-ne p1, v3, :cond_1b

    :cond_15
    if-eq p2, v1, :cond_3e

    if-eq p2, v2, :cond_3e

    if-eq p2, v3, :cond_3e

    .line 248
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Wrap Mode: wrapS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrapT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3e
    iput p1, p0, Lz/A;->m:I

    .line 253
    iput p2, p0, Lz/A;->n:I

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/A;->o:Z

    .line 255
    return-void
.end method
