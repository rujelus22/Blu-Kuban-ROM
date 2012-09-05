.class public final Llr$k;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Lhi;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Llr$k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 509
    new-instance v0, Llr$k;

    invoke-direct {v0}, Llr$k;-><init>()V

    sput-object v0, Llr$k;->a:Llr$k;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 511
    const-class v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 505
    check-cast p1, Lhi;

    invoke-interface {p1, p2, p3}, Lhi;->a(Lez;Lhs;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 5
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
    .line 505
    check-cast p1, Lhi;

    invoke-interface {p1, p2, p3}, Lhi;->b(Lez;Lhs;)V

    return-void
.end method
