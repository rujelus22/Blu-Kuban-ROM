.class final Lit$a;
.super Lif;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lif",
        "<",
        "Lml;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lit$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    new-instance v0, Lit$a;

    invoke-direct {v0}, Lit$a;-><init>()V

    sput-object v0, Lit$a;->a:Lit$a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 97
    const-class v0, Lml;

    invoke-direct {p0, v0}, Lif;-><init>(Ljava/lang/Class;)V

    .line 98
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
    .line 90
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, p1, p2}, Lit$a;->c(Lfd;Lhc;)Lml;

    move-result-object v0

    return-object v0

    :cond_d
    const-class v0, Lml;

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0
.end method
