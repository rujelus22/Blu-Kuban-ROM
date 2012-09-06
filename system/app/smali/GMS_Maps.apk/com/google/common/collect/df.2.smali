.class final Lcom/google/common/collect/df;
.super Lcom/google/common/collect/bv;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/de;


# instance fields
.field final a:Lcom/google/common/collect/de;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/de;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/bv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/df;->a:Lcom/google/common/collect/de;

    .line 118
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/de;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/df;->a:Lcom/google/common/collect/de;

    return-object v0
.end method
