.class public Lcom/google/commerce/wireless/topiary/n;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected HTTP status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/google/commerce/wireless/topiary/n;->a:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/google/commerce/wireless/topiary/n;->a:I

    return v0
.end method
