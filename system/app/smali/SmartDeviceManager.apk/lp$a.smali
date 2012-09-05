.class final Llp$a;
.super Lhj;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhj",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lhu;

.field protected final b:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhu;Lhj;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    invoke-direct {p0}, Lhj;-><init>()V

    .line 720
    iput-object p1, p0, Llp$a;->a:Lhu;

    .line 721
    iput-object p2, p0, Llp$a;->b:Lhj;

    .line 722
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 6
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
    .line 728
    iget-object v0, p0, Llp$a;->b:Lhj;

    iget-object v1, p0, Llp$a;->a:Lhu;

    invoke-virtual {v0, p1, p2, p3, v1}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V

    .line 729
    return-void
.end method

.method public final a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 6
    .parameter
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
    .line 739
    iget-object v0, p0, Llp$a;->b:Lhj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V

    .line 740
    return-void
.end method
