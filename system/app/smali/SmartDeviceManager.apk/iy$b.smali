.class public final Liy$b;
.super Liy;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "b"
.end annotation


# instance fields
.field protected final g:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/reflect/Field;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1, p2, p3}, Liy;-><init>(Ljava/lang/String;Lnd;Lht;)V

    .line 334
    iput-object p4, p0, Liy$b;->g:Ljava/lang/reflect/Field;

    .line 335
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
    .line 340
    iget-object v0, p0, Liy$b;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lfd;Lhc;Ljava/lang/Object;)V
    .registers 5
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
    .line 348
    invoke-virtual {p0, p1, p2}, Liy$b;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Liy$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Liy$b;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 360
    :goto_5
    return-void

    .line 357
    :catch_6
    move-exception v0

    .line 358
    invoke-virtual {p0, v0, p2}, Liy$b;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_5
.end method
