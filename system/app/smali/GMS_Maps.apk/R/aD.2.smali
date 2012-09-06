.class Lr/aD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/ref/SoftReference;

.field final b:Ln/al;


# direct methods
.method public constructor <init>(Ln/al;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ln/aF;->a(Ln/al;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lr/aD;->b:Ln/al;

    .line 35
    iget-object v0, p0, Lr/aD;->b:Ln/al;

    if-nez v0, :cond_16

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_16
    iput-object v1, p0, Lr/aD;->a:Ljava/lang/ref/SoftReference;

    .line 36
    return-void

    :cond_19
    move-object v0, v1

    .line 32
    goto :goto_b
.end method


# virtual methods
.method public a()Ln/al;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lr/aD;->b:Ln/al;

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, p0, Lr/aD;->b:Ln/al;

    .line 46
    :goto_6
    return-object v0

    .line 43
    :cond_7
    iget-object v0, p0, Lr/aD;->a:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_d

    .line 44
    const/4 v0, 0x0

    goto :goto_6

    .line 46
    :cond_d
    iget-object v0, p0, Lr/aD;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/al;

    goto :goto_6
.end method
