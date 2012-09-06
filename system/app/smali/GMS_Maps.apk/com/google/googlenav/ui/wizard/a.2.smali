.class public Lcom/google/googlenav/ui/wizard/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/googlenav/ui/wizard/A;->a:I

    .line 128
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/A;->b:Ljava/lang/Object;

    .line 129
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/google/googlenav/ui/wizard/A;->a:I

    return v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/A;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Back state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/A;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/A;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
