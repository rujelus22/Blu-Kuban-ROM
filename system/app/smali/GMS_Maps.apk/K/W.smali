.class public Lk/w;
.super LA/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, LA/j;-><init>()V

    .line 336
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter

    .prologue
    .line 339
    invoke-direct {p0, p1}, LA/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 340
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 3
    .parameter

    .prologue
    .line 344
    const-string v0, "<networksenabled/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    return-void
.end method
