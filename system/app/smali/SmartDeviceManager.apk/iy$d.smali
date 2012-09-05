.class public final Liy$d;
.super Liy;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "d"
.end annotation


# instance fields
.field protected final g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/reflect/Method;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Liy;-><init>(Ljava/lang/String;Lnd;Lht;)V

    .line 223
    iput-object p4, p0, Liy$d;->g:Ljava/lang/reflect/Method;

    .line 224
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
    .line 229
    iget-object v0, p0, Liy$d;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

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
    .line 237
    invoke-virtual {p0, p1, p2}, Liy$d;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Liy$d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Liy$d;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 249
    :goto_b
    return-void

    .line 246
    :catch_c
    move-exception v0

    .line 247
    invoke-virtual {p0, v0, p2}, Liy$d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_b
.end method
