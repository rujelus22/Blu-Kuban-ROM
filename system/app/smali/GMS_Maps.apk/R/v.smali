.class public Lr/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/Y;


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lr/v;->a:Ljava/io/File;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lr/X;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lr/v;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lr/u;

    if-eqz p2, :cond_24

    const-string v0, "rw"

    :goto_20
    invoke-direct {v2, v1, v0}, Lr/u;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_24
    const-string v0, "r"

    goto :goto_20
.end method

.method public a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lr/v;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 79
    :cond_23
    return-void
.end method
