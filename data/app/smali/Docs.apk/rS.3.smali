.class public final LrS;
.super Ljava/lang/Object;
.source "DriveAppSetImpl.java"

# interfaces
.implements LrQ;


# instance fields
.field private final a:LakW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakW",
            "<",
            "Ljava/lang/String;",
            "LSE;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LrV;

.field private final b:LakW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakW",
            "<",
            "Ljava/lang/String;",
            "LSE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lajh;->a()Lajh;

    move-result-object v0

    iput-object v0, p0, LrS;->a:LakW;

    .line 33
    invoke-static {}, Lajh;->a()Lajh;

    move-result-object v0

    iput-object v0, p0, LrS;->b:LakW;

    .line 34
    new-instance v0, LrV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LrV;-><init>(LrS;LrT;)V

    iput-object v0, p0, LrS;->a:LrV;

    .line 57
    return-void
.end method

.method static synthetic a(LrS;)LakW;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LrS;->a:LakW;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, LrS;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(LrS;)LakW;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, LrS;->b:LakW;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, LrS;->a:LrV;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, LrS;->b(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 130
    iget-object v0, p0, LrS;->a:LakW;

    invoke-interface {v0, p1}, LakW;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, LrS;->b:LakW;

    invoke-interface {v0, p1}, LakW;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
