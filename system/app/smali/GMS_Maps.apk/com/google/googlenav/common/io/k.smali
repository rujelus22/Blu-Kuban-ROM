.class public Lcom/google/googlenav/common/io/k;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    iput p2, p0, Lcom/google/googlenav/common/io/k;->a:I

    .line 161
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/googlenav/common/io/k;->a:I

    return v0
.end method
