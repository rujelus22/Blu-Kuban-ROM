.class public final Lgl;
.super Lff;
.source "a"


# instance fields
.field protected final c:Lgl;

.field protected d:I

.field protected e:I

.field protected f:Ljava/lang/String;

.field g:Lgl;


# direct methods
.method private constructor <init>(Lgl;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lff;-><init>(I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lgl;->g:Lgl;

    .line 48
    iput-object p1, p0, Lgl;->c:Lgl;

    .line 49
    iput p3, p0, Lgl;->d:I

    .line 50
    iput p4, p0, Lgl;->e:I

    .line 51
    return-void
.end method

.method public static a(II)Lgl;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Lgl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lgl;-><init>(Lgl;III)V

    return-object v0
.end method

.method private a(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lgl;->a:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lgl;->b:I

    .line 57
    iput p2, p0, Lgl;->d:I

    .line 58
    iput p3, p0, Lgl;->e:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lgl;->f:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lfa;
    .registers 9
    .parameter

    .prologue
    .line 116
    new-instance v0, Lfa;

    const-wide/16 v2, -0x1

    iget v4, p0, Lgl;->d:I

    iget v5, p0, Lgl;->e:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lfa;-><init>(Ljava/lang/Object;JIIB)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lgl;->f:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public final b(II)Lgl;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lgl;->g:Lgl;

    .line 72
    if-nez v0, :cond_d

    .line 73
    new-instance v0, Lgl;

    invoke-direct {v0, p0, v1, p1, p2}, Lgl;-><init>(Lgl;III)V

    iput-object v0, p0, Lgl;->g:Lgl;

    .line 76
    :goto_c
    return-object v0

    .line 75
    :cond_d
    invoke-direct {v0, v1, p1, p2}, Lgl;->a(III)V

    goto :goto_c
.end method

.method public final c(II)Lgl;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 81
    iget-object v0, p0, Lgl;->g:Lgl;

    .line 82
    if-nez v0, :cond_d

    .line 83
    new-instance v0, Lgl;

    invoke-direct {v0, p0, v1, p1, p2}, Lgl;-><init>(Lgl;III)V

    iput-object v0, p0, Lgl;->g:Lgl;

    .line 86
    :goto_c
    return-object v0

    .line 85
    :cond_d
    invoke-direct {v0, v1, p1, p2}, Lgl;->a(III)V

    goto :goto_c
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lgl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lgl;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lgl;->c:Lgl;

    return-object v0
.end method

.method public final i()Z
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lgl;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgl;->b:I

    .line 134
    iget v1, p0, Lgl;->a:I

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

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    iget v1, p0, Lgl;->a:I

    packed-switch v1, :pswitch_data_4a

    .line 177
    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :pswitch_15
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 161
    :pswitch_1b
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lgl;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 166
    :pswitch_2b
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lgl;->f:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lgl;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lng;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :goto_3f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 172
    :cond_43
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 156
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1b
        :pswitch_2b
    .end packed-switch
.end method
