.class public Lbk/l;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private a:Lbk/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lbk/l;->a:Lbk/p;

    .line 19
    return-void
.end method

.method static b()Lbk/l;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lbk/l;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lbk/l;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lbk/l;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lbk/l;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lbk/l;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lbk/l;
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lbk/l;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lbk/l;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lbk/l;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lbk/l;
    .registers 2

    .prologue
    .line 71
    new-instance v0, Lbk/l;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lbk/l;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lbk/l;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lbk/l;
    .registers 2

    .prologue
    .line 82
    new-instance v0, Lbk/l;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lbk/l;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lbk/p;)Lbk/l;
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lbk/l;->a:Lbk/p;

    .line 30
    return-object p0
.end method

.method public a()Lbk/p;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lbk/l;->a:Lbk/p;

    return-object v0
.end method
