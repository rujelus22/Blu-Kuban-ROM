.class final enum Lcom/google/common/base/W;
.super Lcom/google/common/base/T;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/T;-><init>(Ljava/lang/String;ILcom/google/common/base/R;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 269
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
