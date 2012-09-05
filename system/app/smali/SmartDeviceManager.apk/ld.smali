.class public final Lld;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llm",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 25
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llm;-><init>(Ljava/lang/Class;B)V

    .line 26
    iput-object p1, p0, Lld;->a:Ljava/lang/String;

    .line 27
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
            Ley;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ley;

    iget-object v1, p0, Lld;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ley;-><init>(Ljava/lang/String;)V

    throw v0
.end method
