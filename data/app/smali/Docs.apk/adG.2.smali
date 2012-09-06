.class public LadG;
.super LacT;
.source "JsonHttpContent.java"


# instance fields
.field private final a:LadN;

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LadN;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, LadM;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, LacT;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LadN;

    iput-object v0, p0, LadG;->a:LadN;

    .line 66
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LadG;->a:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LadG;->a:LadN;

    invoke-virtual {p0}, LadG;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LadN;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)LadO;

    move-result-object v0

    .line 71
    iget-object v1, p0, LadG;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LadO;->a(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, LadO;->a()V

    .line 73
    return-void
.end method
