.class Laa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/d;


# instance fields
.field private a:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Laa/e;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Laa/c;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    invoke-direct {p0}, Laa/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Laa/e;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Laa/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Laa/e;->b(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Laa/e;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    return-void
.end method
