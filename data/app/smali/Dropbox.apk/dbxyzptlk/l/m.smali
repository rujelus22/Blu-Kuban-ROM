.class public final Ldbxyzptlk/l/m;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final b:Lorg/apache/http/HttpResponse;


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Ldbxyzptlk/l/m;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 763
    iput-object p2, p0, Ldbxyzptlk/l/m;->b:Lorg/apache/http/HttpResponse;

    .line 764
    return-void
.end method
