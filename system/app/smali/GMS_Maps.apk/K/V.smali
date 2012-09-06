.class public Lk/v;
.super LA/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 317
    invoke-direct {p0}, LA/j;-><init>()V

    .line 318
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1}, LA/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 322
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 3
    .parameter

    .prologue
    .line 326
    const-string v0, "<networksdisabled/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    return-void
.end method
