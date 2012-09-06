.class LaQ/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/D;


# instance fields
.field final synthetic a:LaQ/ao;


# direct methods
.method constructor <init>(LaQ/ao;)V
    .registers 2
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, LaQ/aw;->a:LaQ/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 499
    check-cast p1, LaS/c;

    invoke-virtual {p0, p1}, LaQ/aw;->a(LaS/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LaS/c;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 502
    invoke-virtual {p1}, LaS/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
