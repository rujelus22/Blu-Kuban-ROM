.class public Lcom/google/googlenav/bR;
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
    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    iput-object p1, p0, Lcom/google/googlenav/bR;->a:Ljava/lang/String;

    .line 1137
    iput p2, p0, Lcom/google/googlenav/bR;->b:I

    .line 1138
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/google/googlenav/bR;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1145
    iget v0, p0, Lcom/google/googlenav/bR;->b:I

    return v0
.end method
