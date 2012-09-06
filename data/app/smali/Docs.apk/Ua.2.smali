.class public LUa;
.super Ljava/lang/Object;
.source "GDataParserProducerImpl.java"


# instance fields
.field private final a:I

.field private final a:Lasf;

.field private final a:Lasm;

.field private final a:Ljava/lang/Exception;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lasm;Lasf;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, LUa;->a:Lasm;

    .line 67
    iput-object p3, p0, LUa;->a:Ljava/lang/Exception;

    .line 68
    iput-object p2, p0, LUa;->a:Lasf;

    .line 69
    iput p5, p0, LUa;->a:I

    .line 70
    iput-object p4, p0, LUa;->a:Ljava/lang/String;

    .line 71
    iput-object p6, p0, LUa;->b:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, LUa;->a:I

    return v0
.end method

.method public a()Lasf;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, LUa;->a:Lasf;

    return-object v0
.end method

.method public a()Lasm;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, LUa;->a:Lasm;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, LUa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, LUa;->a:Lasm;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, LUa;->a:Lasm;

    invoke-interface {v0}, Lasm;->a()V

    .line 123
    :cond_9
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, LUa;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    .line 79
    iget-object v0, p0, LUa;->a:Ljava/lang/Exception;

    throw v0

    .line 81
    :cond_7
    iget-object v0, p0, LUa;->a:Lasf;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LUa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LUa;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LUa;->a:Lasf;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_22
.end method
