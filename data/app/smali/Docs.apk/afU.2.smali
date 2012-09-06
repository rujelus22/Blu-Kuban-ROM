.class LafU;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LafR;

.field final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(LafR;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, LafU;->a:LafR;

    iput-object p2, p0, LafU;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, LafU;->a:LafR;

    iget-object v1, p0, LafU;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LafR;->a(LafR;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
