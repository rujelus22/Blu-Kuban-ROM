.class public final Lcom/google/common/base/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/base/M;->b:Ljava/lang/String;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/M;->a:Ljava/lang/StringBuilder;

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/L;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/common/base/M;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/base/M;
    .registers 4
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/common/base/M;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/M;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, ", "

    iput-object v0, p0, Lcom/google/common/base/M;->b:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/base/M;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/M;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, ", "

    iput-object v0, p0, Lcom/google/common/base/M;->b:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/common/base/M;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
