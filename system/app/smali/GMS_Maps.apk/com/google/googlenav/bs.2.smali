.class public Lcom/google/googlenav/bS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput-object p1, p0, Lcom/google/googlenav/bS;->a:Ljava/lang/String;

    .line 1004
    iput p2, p0, Lcom/google/googlenav/bS;->b:I

    .line 1005
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1012
    iget v0, p0, Lcom/google/googlenav/bS;->b:I

    return v0
.end method
