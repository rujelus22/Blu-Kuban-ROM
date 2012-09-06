.class public abstract Lk/q;
.super LA/j;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, LA/j;-><init>(J)V

    .line 93
    iput-object p3, p0, Lk/q;->a:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, LA/j;-><init>()V

    .line 88
    iput-object p1, p0, Lk/q;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, LA/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 98
    const-string v0, "provider"

    invoke-static {p1, v0}, Lk/q;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/q;->a:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lk/q;->a:Ljava/lang/String;

    return-object v0
.end method
