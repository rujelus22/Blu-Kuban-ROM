.class public Lcom/google/android/maps/driveabout/vector/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/cV;

.field private final b:Lcom/google/android/maps/driveabout/vector/cM;

.field private final c:Lcom/google/android/maps/driveabout/vector/s;

.field private final d:Lcom/google/android/maps/driveabout/vector/r;


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/vector/r;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cP;->b(II)Lcom/google/android/maps/driveabout/vector/cP;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    .line 71
    new-instance v0, Lcom/google/android/maps/driveabout/vector/s;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->c:Lcom/google/android/maps/driveabout/vector/s;

    .line 72
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/t;->d:Lcom/google/android/maps/driveabout/vector/r;

    .line 73
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    .line 157
    :cond_c
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v0

    return v0
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 79
    if-lez p2, :cond_16

    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->d:Lcom/google/android/maps/driveabout/vector/r;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->c:Lcom/google/android/maps/driveabout/vector/s;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/r;->a(ILcom/google/android/maps/driveabout/vector/s;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/t;->c:Lcom/google/android/maps/driveabout/vector/s;

    iget v1, v1, Lcom/google/android/maps/driveabout/vector/s;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/t;->c:Lcom/google/android/maps/driveabout/vector/s;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/s;->b:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/maps/driveabout/vector/cM;->a(III)V

    .line 83
    :cond_16
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, v1, :cond_11

    .line 99
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->c()V

    .line 101
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->d:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/r;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_27

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->d:Lcom/google/android/maps/driveabout/vector/r;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/r;->a(Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    .line 104
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    .line 106
    :cond_27
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->a:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 108
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->c()V

    .line 117
    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 124
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/t;->c()V

    .line 125
    return-void
.end method
