.class public Lcom/google/commerce/wireless/topiary/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/commerce/wireless/topiary/L;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/Y;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/J;)V
    .registers 4
    .parameter

    .prologue
    .line 21
    const-string v0, "X-Security-Token"

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/Y;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/commerce/wireless/topiary/J;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public b(Lcom/google/commerce/wireless/topiary/J;)V
    .registers 4
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->d()Lcom/google/commerce/wireless/topiary/M;

    move-result-object v0

    sget-object v1, Lcom/google/commerce/wireless/topiary/M;->c:Lcom/google/commerce/wireless/topiary/M;

    if-ne v0, v1, :cond_25

    .line 27
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->e()Ljava/lang/Exception;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lcom/google/commerce/wireless/topiary/n;

    if-eqz v1, :cond_25

    .line 29
    check-cast v0, Lcom/google/commerce/wireless/topiary/n;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/n;->a()I

    move-result v0

    .line 30
    const/16 v1, 0x193

    if-ne v0, v1, :cond_25

    .line 31
    const-string v0, "X-Security-Token"

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/Y;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, p0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/L;)V

    .line 36
    :cond_25
    return-void
.end method
