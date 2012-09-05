.class public final Llr$j;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Lhh;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Llr$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 431
    new-instance v0, Llr$j;

    invoke-direct {v0}, Llr$j;-><init>()V

    sput-object v0, Llr$j;->a:Llr$j;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 433
    const-class v0, Lhh;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    return-void
.end method

.method private static a(Lhh;Lez;Lhs;)V
    .registers 3
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
    .line 439
    invoke-interface {p0, p1, p2}, Lhh;->a(Lez;Lhs;)V

    .line 440
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
    .line 426
    check-cast p1, Lhh;

    invoke-static {p1, p2, p3}, Llr$j;->a(Lhh;Lez;Lhs;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
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
    .line 426
    check-cast p1, Lhh;

    instance-of v0, p1, Lhi;

    if-eqz v0, :cond_c

    check-cast p1, Lhi;

    invoke-interface {p1, p2, p3}, Lhi;->b(Lez;Lhs;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {p1, p2, p3}, Llr$j;->a(Lhh;Lez;Lhs;)V

    goto :goto_b
.end method
