.class public Ldl;
.super Leq;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldl$a;,
        Ldl$b;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldl;-><init>(ILjava/lang/String;B)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Leq;-><init>()V

    .line 42
    iput p1, p0, Ldl;->a:I

    .line 43
    iput-object p2, p0, Ldl;->b:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 6
    const/4 v0, 0x1

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
