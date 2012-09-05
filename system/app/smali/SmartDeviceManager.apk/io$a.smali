.class public final Lio$a;
.super Ljf;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljf",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljp;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Ljf;-><init>(Ljava/lang/Class;)V

    .line 110
    iput-object p1, p0, Lio$a;->a:Ljava/lang/Class;

    .line 111
    iget-object v0, p2, Ljp;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lio$a;->b:Ljava/lang/reflect/Method;

    .line 112
    return-void
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 121
    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-eq v0, v1, :cond_f

    .line 122
    iget-object v0, p0, Lio$a;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    .line 124
    :cond_f
    invoke-virtual {p1}, Lfd;->i()Ljava/lang/String;

    move-result-object v0

    .line 126
    :try_start_13
    iget-object v1, p0, Lio$a;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lio$a;->a:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_22

    move-result-object v0

    .line 130
    :goto_21
    return-object v0

    .line 127
    :catch_22
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_21
.end method
