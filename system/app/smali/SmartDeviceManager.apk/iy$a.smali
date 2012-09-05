.class public final Liy$a;
.super Liy;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation


# instance fields
.field final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/Class;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnd;",
            "Lht;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3}, Liy;-><init>(Ljava/lang/String;Lnd;Lht;)V

    .line 382
    iput-object p4, p0, Liy$a;->g:Ljava/lang/Class;

    .line 383
    iput p5, p0, Liy$a;->h:I

    .line 384
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Liy$a;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public final a(Lfd;Lhc;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Liy$a;->a(Lfd;Lhc;)Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    return-void
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 395
    iget v0, p0, Liy$a;->h:I

    return v0
.end method
