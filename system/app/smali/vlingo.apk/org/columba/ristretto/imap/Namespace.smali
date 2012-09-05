.class public Lorg/columba/ristretto/imap/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"


# instance fields
.field private delimiter:Ljava/lang/String;

.field private extensionName:Ljava/lang/String;

.field private extensionParameter:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "delimiter"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/columba/ristretto/imap/Namespace;->prefix:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/columba/ristretto/imap/Namespace;->delimiter:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/columba/ristretto/imap/Namespace;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/columba/ristretto/imap/Namespace;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionParameter()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/columba/ristretto/imap/Namespace;->extensionParameter:[Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/columba/ristretto/imap/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public isNil()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/columba/ristretto/imap/Namespace;->prefix:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .registers 2
    .parameter "delimiter"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/columba/ristretto/imap/Namespace;->delimiter:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setExtensionName(Ljava/lang/String;)V
    .registers 2
    .parameter "extensionName"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/columba/ristretto/imap/Namespace;->extensionName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setExtensionParameter([Ljava/lang/String;)V
    .registers 2
    .parameter "extensionParameter"

    .prologue
    .line 101
    iput-object p1, p0, Lorg/columba/ristretto/imap/Namespace;->extensionParameter:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/columba/ristretto/imap/Namespace;->prefix:Ljava/lang/String;

    .line 114
    return-void
.end method
