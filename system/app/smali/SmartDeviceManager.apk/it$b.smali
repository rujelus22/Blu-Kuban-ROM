.class final Lit$b;
.super Lif;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lif",
        "<",
        "Lmx;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lit$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Lit$b;

    invoke-direct {v0}, Lit$b;-><init>()V

    sput-object v0, Lit$b;->a:Lit$b;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 72
    const-class v0, Lmx;

    invoke-direct {p0, v0}, Lif;-><init>(Ljava/lang/Class;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_OBJECT:Lfg;

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lfd;->b()Lfg;

    invoke-virtual {p0, p1, p2}, Lit$b;->b(Lfd;Lhc;)Lmx;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0, p1, p2}, Lit$b;->b(Lfd;Lhc;)Lmx;

    move-result-object v0

    goto :goto_f

    :cond_1d
    const-class v0, Lmx;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method
