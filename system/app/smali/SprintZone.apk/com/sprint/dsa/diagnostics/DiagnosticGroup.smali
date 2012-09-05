.class public Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
.super Ljava/lang/Object;
.source "DiagnosticGroup.java"


# instance fields
.field public key:Ljava/lang/String;

.field public rank:I

.field public subKeys:[Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    .line 18
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->title:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "title"
    .parameter "subKeys"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    .line 23
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->title:Ljava/lang/String;

    .line 25
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "title"
    .parameter "subKeys"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    .line 29
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->title:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public addSubKey(Ljava/lang/String;)V
    .registers 5
    .parameter "subKey"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 66
    .local v1, newKeys:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 67
    .local v0, i:I
    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_16

    .line 70
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 71
    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 72
    return-void

    .line 68
    :cond_16
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSubKey(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 60
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getSubKeys()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setSubKeys(Ljava/lang/String;)V
    .registers 4
    .parameter "keyString"

    .prologue
    .line 52
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, keyArray:[Ljava/lang/String;
    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->title:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
