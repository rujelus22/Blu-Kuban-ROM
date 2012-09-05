.class public final Lorg/codehaus/jackson/a/h;
.super Lorg/codehaus/jackson/b;
.source "SourceFile"


# instance fields
.field protected final c:Lorg/codehaus/jackson/a/h;

.field protected d:I

.field protected e:I

.field protected f:Ljava/lang/String;

.field protected g:Lorg/codehaus/jackson/a/h;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/a/h;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/codehaus/jackson/b;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/h;->g:Lorg/codehaus/jackson/a/h;

    .line 45
    iput p2, p0, Lorg/codehaus/jackson/a/h;->a:I

    .line 46
    iput-object p1, p0, Lorg/codehaus/jackson/a/h;->c:Lorg/codehaus/jackson/a/h;

    .line 47
    iput p3, p0, Lorg/codehaus/jackson/a/h;->d:I

    .line 48
    iput p4, p0, Lorg/codehaus/jackson/a/h;->e:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/h;->b:I

    .line 50
    return-void
.end method

.method private a(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lorg/codehaus/jackson/a/h;->a:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/h;->b:I

    .line 56
    iput p2, p0, Lorg/codehaus/jackson/a/h;->d:I

    .line 57
    iput p3, p0, Lorg/codehaus/jackson/a/h;->e:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/h;->f:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
    .registers 8
    .parameter

    .prologue
    .line 117
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    const-wide/16 v2, -0x1

    iget v4, p0, Lorg/codehaus/jackson/a/h;->d:I

    iget v5, p0, Lorg/codehaus/jackson/a/h;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final a(II)Lorg/codehaus/jackson/a/h;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/a/h;->g:Lorg/codehaus/jackson/a/h;

    .line 71
    if-nez v0, :cond_d

    .line 72
    new-instance v0, Lorg/codehaus/jackson/a/h;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/a/h;-><init>(Lorg/codehaus/jackson/a/h;III)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/h;->g:Lorg/codehaus/jackson/a/h;

    .line 76
    :goto_c
    return-object v0

    .line 75
    :cond_d
    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/a/h;->a(III)V

    goto :goto_c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lorg/codehaus/jackson/a/h;->f:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final b(II)Lorg/codehaus/jackson/a/h;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/a/h;->g:Lorg/codehaus/jackson/a/h;

    .line 82
    if-nez v0, :cond_d

    .line 83
    new-instance v0, Lorg/codehaus/jackson/a/h;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/jackson/a/h;-><init>(Lorg/codehaus/jackson/a/h;III)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/h;->g:Lorg/codehaus/jackson/a/h;

    .line 87
    :goto_c
    return-object v0

    .line 86
    :cond_d
    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/jackson/a/h;->a(III)V

    goto :goto_c
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lorg/codehaus/jackson/a/h;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/a/h;->c:Lorg/codehaus/jackson/a/h;

    return-object v0
.end method

.method public final i()Z
    .registers 3

    .prologue
    .line 134
    iget v0, p0, Lorg/codehaus/jackson/a/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/h;->b:I

    .line 135
    iget v1, p0, Lorg/codehaus/jackson/a/h;->a:I

    if-eqz v1, :cond_e

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x22

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    iget v1, p0, Lorg/codehaus/jackson/a/h;->a:I

    packed-switch v1, :pswitch_data_4a

    .line 178
    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_15
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 162
    :pswitch_1b
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/h;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 167
    :pswitch_2b
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lorg/codehaus/jackson/a/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lorg/codehaus/jackson/a/h;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/util/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :goto_3f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 173
    :cond_43
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 157
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method
