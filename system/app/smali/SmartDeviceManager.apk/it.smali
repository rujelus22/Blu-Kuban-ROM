.class public final Lit;
.super Lif;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit$a;,
        Lit$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lif",
        "<",
        "Lfb;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lit;

    invoke-direct {v0}, Lit;-><init>()V

    sput-object v0, Lit;->a:Lit;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 24
    const-class v0, Lfb;

    invoke-direct {p0, v0}, Lif;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lhf;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhf",
            "<+",
            "Lfb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Lmx;

    if-ne p0, v0, :cond_7

    .line 32
    sget-object v0, Lit$b;->a:Lit$b;

    .line 38
    :goto_6
    return-object v0

    .line 34
    :cond_7
    const-class v0, Lml;

    if-ne p0, v0, :cond_e

    .line 35
    sget-object v0, Lit$a;->a:Lit$a;

    goto :goto_6

    .line 38
    :cond_e
    sget-object v0, Lit;->a:Lit;

    goto :goto_6
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lit;->d(Lfd;Lhc;)Lfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lfd;Lhc;Lht;)Ljava/lang/Object;
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
    .line 13
    invoke-super {p0, p1, p2, p3}, Lif;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
