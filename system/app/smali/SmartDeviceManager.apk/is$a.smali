.class public final Lis$a;
.super Lis;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x31
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lis",
        "<",
        "Ljava/util/Currency;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    const-class v0, Ljava/util/Currency;

    invoke-direct {p0, v0}, Lis;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method